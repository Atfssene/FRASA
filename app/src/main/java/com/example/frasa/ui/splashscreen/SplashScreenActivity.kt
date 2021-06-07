package com.example.frasa.ui.splashscreen

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.frasa.App.Companion.session
import com.example.frasa.databinding.ActivitySplashScreenBinding
import com.example.frasa.notification.MessagingService
import com.example.frasa.ui.home.HomeActivity
import com.example.frasa.ui.reading.ReadingActivity
import com.google.firebase.messaging.FirebaseMessaging
import java.text.SimpleDateFormat
import java.util.*

class SplashScreenActivity : AppCompatActivity() {
    private lateinit var binding: ActivitySplashScreenBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySplashScreenBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.btnTry.setOnClickListener {
            val currentTime = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            session.currentTimeStart = currentTime

//            val intent = Intent(this, ReadingActivity::class.java)
//            startActivity(intent)
            val intent = if (session.isFirstTime){
                Intent(this, ReadingActivity::class.java)
            }else{
                Intent(this, HomeActivity::class.java)
            }
            startActivity(intent)
            finish()
        }
        FirebaseMessaging.getInstance().token.addOnCompleteListener {
            if(it.isComplete){
                val firebaseToken = it.result.toString()
                Log.d(MessagingService.TAG, "Refreshed token: $firebaseToken")
                session.token = firebaseToken
            }
        }

    }
}