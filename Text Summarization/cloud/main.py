# """
#     FRASA text summarization model:
#     1. Get a paragraph (string)
#     2. Convert into dataframe
#     3. Run preprocessing (cleaning, feature extraction)
#     4. Flattening data for each sentences
#     5. Call model TensorFlow Regression
#     6. Predict (result weights each sentences)
#     7. Return the sorted 3 sentences by weight
# """

import os
import pandas as pd
import tensorflow as tf
import numpy as np
import nltk
import requests
import json
import firebase_admin

nltk.download('punkt')

from flask import Flask, jsonify, request
from firebase_admin import credentials
from preprocess import *
from customize_text import text_customizer

cred = credentials.Certificate("##########################")
firebase_admin.initialize_app(cred)
# default_app = firebase_admin.initialize_app()

app = Flask(__name__)

# === START OF MACHINE LEARNING PROCESS ===
def predict(text):
    summary ={"summary": text}
    if text != "":
        # 2. Convert into dataframe
        text = pd.DataFrame(summary.values(), columns=['paragraph'])

        # 3. Run preprocessing (cleaning, feature extraction)
        Pre = Preprocessing()
        text['SumBasic'] = pd.Series([Pre.process(text.iloc[0]['paragraph'], 0)])
        text['SumBasic_order'] = pd.Series([Pre.process(text.iloc[0]['paragraph'], 1)])
        text['Sentence_length'] = pd.Series([Pre.process(text.iloc[0]['paragraph'], 2)])
        text['Sentence'] = pd.Series([Pre.process(text.iloc[0]['paragraph'], 3)])
        text['Sentence_order'] = text.apply(lambda row: [x+1 for x,y in enumerate(row['SumBasic'])], axis=1)
        
        # 4. Flattening data for each sentences
        flat_text = pd.DataFrame()
        columns = ['SumBasic','SumBasic_order','Sentence_length', 'Sentence_order','Sentence']
        for column in columns:
            if column != 'Sentence':
                flat_text[column] = pd.to_numeric(text.explode(column)[column])
            flat_text[column] = text.explode(column)[column]
        
        # 5. Call model TensorFlow Regression
        model = tf.keras.models.load_model('frasa_model')

        # 6. Predict (result weights each sentences)
        prediction = model.predict(np.float64(flat_text[columns[:-1]]))

        # 7. Return the sorted 3 sentences by weight
        flat_text['predict'] = prediction
        flat_text.sort_values(by='predict', inplace=True)
        flat_text = flat_text.head(3)
        
        summary_text = ""
        for i, e in enumerate(flat_text.sort_values(by='Sentence_order')['Sentence']):
            summary_text = summary_text + e +" "
            if i == 0:
                # push = first sentence from summary (for push notification body)
                summary['push'] = e
        # summary = 3 sentences (for data)
        summary['summary'] = summary_text.strip()
    else:
        summary['summary'] = text

    return summary
# === END OF MACHINE LEARNING PROCESS ===

@app.route("/")
def home():
    return '''<h1>Welcome to FRASA 2.1</h1>'''

@app.route('/predict', methods=['POST'])
def process_predict_to_fcm():
    if request.method == 'POST':
        if not request.is_json:
            return jsonify({"msg": "Missing JSON in request. Try again."}), 400  
    

    # Take all text in table frasa_db.content from received title 
    paragraph = request.get_json()

    url = "https://frasadb-j4jaf2mpiq-uc.a.run.app/"
    # get paragraf result
    title = "resources/content?title="+paragraph['judul']
    text = requests.get(url+title).json()

    # FOR PROTOTYE ONLY: Take token, wpm, and score from table frasa_db.user
    user = requests.get(url+"/resources/user").json()

    # first paragraf for predict the summary, customized_text for deliver to user
    first_paragraf, customized_text = text_customizer(text, user['wpm'], user['score'])
    summary = predict(first_paragraf)
    unique_fcm = str(user['wpm']) + customized_text[:5] + str(user['score']) + user['token'][:5]
    
    # POST to SQL server
    # FOR PROTOTYE ONLY: Insert to SQL = unique_fcm, paragraph, summary, and first(to pinpoint zero summary)
    payload={
            "unique_fcm": unique_fcm,
            "summary": customized_text,
            "paragraph": unique_fcm,
            "first": 1,
    }
    headers = {
        "Content-Type":"application/json"
        }
    req = requests.post(url+"/insert_paragraph", data=json.dumps(payload), headers=headers)
    print(req.json())

    # POST to FCM
    payload={
            "to": user['token'],
            "notification": {
                            "title": "Konten langgananmu menunggu!",
                            "body": summary['push'],
                            "click_action" : "com.example.frasa_TARGET_NOTIFICATION"
                            },
            "data":{
                    "unique_fcm": unique_fcm,
                }
    }
    headers = {
        "Authorization":"key=#####################################################",
        "Content-Type":"application/json"
        }
    
    url = "https://fcm.googleapis.com/fcm/send"
    req = requests.post(url, data=json.dumps(payload), headers=headers)
    print(req.json())

    return("Successfully send: "+str(req.json()))

@app.route('/predict_only', methods=['POST'])
def predict_only():
    if request.method == 'POST':
        if not request.is_json:
            return jsonify({"msg": "Missing JSON in request. Try again."}), 400
    text = request.get_json()
    summary = predict(text.values())
    return jsonify(summary)
    
if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))