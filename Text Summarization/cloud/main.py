# """
#     FRASA text summarization model:
#     1. Get JSON => a paragraph (string)
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
nltk.download('punkt')
from flask import Flask, jsonify, request

from preprocess import *
app = Flask(__name__)


@app.route("/")
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
    if text.values() != "":
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
        flat_text = flat_text.head(3)
        summary = {}
        summary_text = ""
        for i, e in enumerate(flat_text.sort_values(by='Sentence_order')['Sentence']):
            summary_text = summary_text + e +" "
            if i == 0:
                summary['push'] = e
        summary['summary'] = summary_text.strip()

        return jsonify(summary)
    else:
        return jsonify(text.values())

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))