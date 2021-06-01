package com.example.frasa.ui.splashscreen

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.frasa.App.Companion.session
import com.example.frasa.databinding.ActivitySplashScreenBinding
import com.example.frasa.ui.reading.ReadingActivity
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

            val intent = Intent(this, ReadingActivity::class.java)
            startActivity(intent)
        }

    }
}