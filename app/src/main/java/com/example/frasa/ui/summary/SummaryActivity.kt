package com.example.frasa.ui.summary

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import androidx.lifecycle.ViewModelProvider
import com.example.frasa.App.Companion.session
import com.example.frasa.R
import com.example.frasa.domain.model.ParagraphModel
import com.example.frasa.notification.MessagingService
import com.example.frasa.ui.home.HomeActivity
import com.example.frasa.ui.test.QuestionActivity
import com.example.frasa.ui.test.QuestionViewModel
import com.example.frasa.utils.json.parseJson
import com.google.firebase.messaging.FirebaseMessaging
import kotlinx.android.synthetic.main.activity_summary.*

class SummaryActivity : AppCompatActivity() {
    private val viewModel: SummaryViewModel by lazy {
        ViewModelProvider(this,
            ViewModelProvider.NewInstanceFactory()
        )[SummaryViewModel::class.java]
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_summary)

        viewModel.getParagraf()

        FirebaseMessaging.getInstance().token.addOnCompleteListener {
            if(it.isComplete){
                val firebaseToken = it.result.toString()
                Log.d(MessagingService.TAG, "Refreshed token: $firebaseToken")
                session.token = firebaseToken
            }
        }

        btn_finish.setOnClickListener {
            val intent = Intent(this, HomeActivity::class.java)
            startActivity(intent)
        }
        observeData()
    }

    private fun observeData() {
        viewModel.paragraf.observe(this,{
            tv_summary.text = it.summary
            tv_paragraph.text = it.paragraph
        })
    }


}