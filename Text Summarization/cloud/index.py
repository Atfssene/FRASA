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

import nltk
import pandas as pd

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
    return '''<h1>Distant Reading Archive</h1>
<p>A prototype API for distant reading of science fiction novels.</p>'''

@app.route('/predict', methods=['POST'])
def predict():
    if request.method == 'POST':
        if not request.is_json:
            return jsonify({"msg": "Missing JSON in request. Try again."}), 400  
    
    # 1. Get JSON => a paragraph (string)
    #    JSON structure =>  { "paragraph": "example of a paragraph with many sentences"}
    text = request.get_json()
    
    # 2. Convert into dataframe
    text = pd.DataFrame({'paragraph': text})

    # 3. Run preprocessing (cleaning, feature extraction)
    Pre = Preprocessing()
    print(text)
    text['SumBasic'] = text.apply(lambda row: Pre.process(row, 0),axis=1)
    # text['SumBasic_order'] = text.apply(lambda row: Preprocess.process(row, 1), axis=1)
    # text['Sentence_length'] = text.apply(lambda row: Preprocess.process(row, 2), axis=1)
    # text['Sentence_order'] = text.apply(lambda row: [x+1 for x,y in enumerate(row['SumBasic'])], axis=1)
    text = str(type(text))



    return '''<h1>'''+text+'''<h1>'''

if __name__ == '__main__':
  app.run(debug=True)