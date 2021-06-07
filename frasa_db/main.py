import os
import sqlalchemy
from flask import Flask, jsonify, request
from datetime import datetime
from dotenv import load_dotenv
load_dotenv()

app = Flask(__name__)

def init_db_connection():
    db_config = {
        'pool_size': 5,
        'max_overflow': 2,
        'pool_timeout': 30,
        'pool_recycle': 1800,
    }
    return init_unix_connection_engine(db_config)

def init_unix_connection_engine(db_config):
    pool = sqlalchemy.create_engine(
        sqlalchemy.engine.url.URL(
            drivername="mysql+pymysql",
            username=os.environ.get('DB_USER'),
            password=os.environ.get('DB_PASS'),
            database=os.environ.get('DB_NAME'),
            query={
                "unix_socket": "############################"
            }
        ),
        **db_config
    )
    pool.dialect.description_encoding = None
    return pool

db = init_db_connection()

def get_user():
    rows = []
    with db.connect() as conn:
        result = conn.execute('SELECT * FROM user;').fetchall()
        for row in result:
            rows.append({
                'id' : row[0],
                # 'username' : row[1],
                # 'password' : row[2],
                # 'email' : row[3],
                'wpm' : row[4],
                'score' : float(row[5])
            })
        print(rows)
    return jsonify(rows)

def get_content():
    rows = []
    with db.connect() as conn:
        result = conn.execute('SELECT * FROM content;').fetchall()
        for row in result:
            rows.append({
                'id' : row[0],
                'title' : row[1],
                'category' : row[2],
                'author' : row[3],
                # 'image' : row[4],
                'synopsis' : row[5],
                # 'text' : row[6]
            })
        print(rows)
    return jsonify(rows)

def insert_retention(score):
    with db.connect() as conn:
        score_float = float(score["score"]/5)
        token = score["token"]
        time_start = datetime.strptime(score["currentTimeStart"], "%H:%M:%S")
        time_end = datetime.strptime(score["currentTimeEnd"], "%H:%M:%S")
        time = time_end - time_start
        minutes = time.seconds / 60
        wpm = int(518/minutes)
        stmt = sqlalchemy.text(
        "INSERT INTO user (password, wpm, score)"
        " VALUES (:password, :wpm, :score_float)"
        )
        conn.execute(stmt, password=token, wpm=wpm, score_float=score_float)

def insert_paragraph(data):
    with db.connect() as conn:
        unique_fcm = data["unique_fcm"]
        summary = data["summary"] if data["first"] is not 0 else ""
        paragraph = data["paragraph"]
        first = data["first"]

        stmt = sqlalchemy.text(
        "INSERT INTO paragraph (unique_fcm, paragraph, summary, first)"
        " VALUES (:unique_fcm, :paragraph, :summary, :first)"
        )
        conn.execute(stmt, unique_fcm=unique_fcm, paragraph=paragraph, summary=summary, first=first)
        
@app.route("/")
def home():
    return '''<h1>It's works!</h1>'''

@app.route('/insert_score', methods=['POST'])
def insert_score():
    if request.method == 'POST':
        if not request.is_json:
            return jsonify({"msg": "Missing JSON in request. Try again."}), 400  
        insert_retention(request.get_json())
        return jsonify({"msg": "Success insert user score."})

@app.route('/insert_paragraph', methods=['POST'])
def insert_text():
    if request.method == 'POST':
        if not request.is_json:
            return jsonify({"msg": "Missing JSON in request. Try again."}), 400  
        insert_paragraph(request.get_json())
        return jsonify({"msg": "Success insert paragraph."})
    
@app.route('/resources/content', methods=['GET'])
def get_text():
    if 'title' in request.args:
        title = request.args['title']
        stmt = sqlalchemy.text("SELECT text FROM content WHERE title=:title")
        with db.connect() as conn:
            all_text = conn.execute(stmt, title=title).fetchone()
            all_text = all_text[0] if all_text is not None else {"msg: Title not found!"}
        return jsonify(all_text)
    else:
        return get_content()

# FOR PROTOTYPE ONLY: use right user id and token for later development
@app.route('/resources/user', methods=['GET'])
def get_user_ability():
    # FOR PROTOTYPE ONLY: take the last row
    stmt = sqlalchemy.text("SELECT password, wpm, score FROM user WHERE id=(SELECT max(id) FROM user)")
    with db.connect() as conn:
        user = conn.execute(stmt).fetchone()
        if user is not None:
            user_id = {
                    "token" : user[0],
                    "wpm" : user[1],
                    "score" : float(user[2])
            }
        else:
            user_id = {"msg: User doesn't exist!"}
    return jsonify(user_id)

# FOR PROTOTYPE ONLY: use right user id and token for later development
@app.route('/resources/paragraph', methods=['GET'])
def get_paragraph():
    # FOR PROTOTYPE ONLY: take the last row
    stmt = sqlalchemy.text("SELECT * FROM paragraph WHERE id=(SELECT max(id) FROM paragraph)")
    with db.connect() as conn:
        all_text = conn.execute(stmt).fetchone()
        unique_fcm = all_text[1] if all_text is not None else 0
        paragraph = all_text[2] if all_text is not None else ""
        summary = all_text[3] if all_text is not None else ""
        first = all_text[4] if all_text is not None else 0
    return jsonify({
        "paragraph":paragraph,
        "summary":summary,
    })

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)