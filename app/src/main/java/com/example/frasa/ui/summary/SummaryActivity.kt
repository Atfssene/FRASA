package com.example.frasa.ui.summary

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import com.example.frasa.App.Companion.session
import com.example.frasa.R
import com.example.frasa.notification.MessagingService
import com.example.frasa.ui.home.HomeActivity
import com.example.frasa.ui.test.QuestionActivity
import com.google.firebase.messaging.FirebaseMessaging
import kotlinx.android.synthetic.main.activity_summary.*

class SummaryActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_summary)

        tv_summary.text = session.summary
        tv_paragraph.text = session.paragraf

        FirebaseMessaging.getInstance().token.addOnCompleteListener {
            if(it.isComplete){
                val firebaseToken = it.result.toString()
                Log.d(MessagingService.TAG, "Refreshed token: $firebaseToken")
            }
        }

        btn_finish.setOnClickListener {
            val intent = Intent(this, HomeActivity::class.java)
            startActivity(intent)
        }
    }
}