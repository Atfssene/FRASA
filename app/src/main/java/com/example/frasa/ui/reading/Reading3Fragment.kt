package com.example.frasa.ui.reading

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.example.frasa.App.Companion.session
import com.example.frasa.databinding.FragmentReading3Binding
import com.example.frasa.ui.test.QuestionActivity
import java.text.SimpleDateFormat
import java.util.*


class Reading3Fragment : Fragment() {
    private var _binding: FragmentReading3Binding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentReading3Binding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnFinish.setOnClickListener {
            val currentTime = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            session.currentTimeEnd = currentTime
            val intent = Intent(activity, QuestionActivity::class.java)
            startActivity(intent)
        }
    }

}