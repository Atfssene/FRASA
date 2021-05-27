#! C:\Users\ThinkPad X220\AppData\Local\Programs\Python\Python36\python.exe
"""
    Note: use shebang notation accordingly
    this script working in flask environment in Windows

    FRASA text summarization model at action
    1. Get JSON => a paragraph (string)
    2. Convert into dataframe
    3. Run preprocessing (cleaning, feature extraction)
    4. Flattening data for each sentences
    5. Call model TensorFlow Regression
    6. Predict (result weights each sentences)
    7. Return the sorted 3 sentences by weight
    
"""
print("Content-Type: text/html\n")


import pandas as pd
import tensorflow as tf
import numpy as np
import flask
import sys
from flask import request, jsonify



sys.path.append('C:/xampp7/htdocs/Bangkit')
from preprocess import * # Change this

app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['GET'])
def home():
    return '''<h1>Welcome to FRASA</h1>'''

@app.route('/predict', methods=['POST'])
def predict():
    if request.method == 'POST':
        if not request.is_json:
            return jsonify({"msg": "Missing JSON in request. Try again."}), 400  
    
    # 1. Get JSON => a paragraph (string)
    #    JSON structure =>  { "paragraph": "example of a paragraph with many sentences"}
    text = request.get_json()
    
    # 2. Convert into dataframe
    text = pd.DataFrame(text.values(), columns=['paragraph'])

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
    summary = {}
    summary_text = ""
    for i, e in enumerate(flat_text.iloc[:3]['Sentence']):
        summary_text = summary_text + e +" "
        if i == 0:
            summary['push'] = e
    summary['summary'] = summary_text.strip()

    return jsonify(summary)

if __name__ == '__main__':
  app.run(debug=True)