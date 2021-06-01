package com.example.frasa.ui.test

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import com.example.frasa.R
import com.example.frasa.databinding.FragmentQuestion1Binding
import com.example.frasa.databinding.FragmentQuestion2Binding
import com.example.frasa.source.local.Session

class Question2Fragment : Fragment() {
    private lateinit var session : Session
    private var _binding: FragmentQuestion2Binding? = null
    private val binding get() = _binding!!

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        session = Session(requireContext())
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentQuestion2Binding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnSave.setOnClickListener {
            if (binding.radio1.isChecked){
                session.score++
                Toast.makeText(context,binding.radio1.text.toString(), Toast.LENGTH_SHORT).show()
            }
            else if (binding.radio2.isChecked){
                Toast.makeText(context,binding.radio2.text.toString(), Toast.LENGTH_SHORT).show()
            }
            else if (binding.radio3.isChecked){
                Toast.makeText(context,binding.radio3.text.toString(), Toast.LENGTH_SHORT).show()
            }
            else if (binding.radio4.isChecked){
                Toast.makeText(context,binding.radio4.text.toString(), Toast.LENGTH_SHORT).show()
            }
        }
    }
}