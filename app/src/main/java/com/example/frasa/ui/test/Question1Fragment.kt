package com.example.frasa.ui.test

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.example.frasa.App.Companion.session
import com.example.frasa.databinding.FragmentQuestion1Binding
import kotlinx.android.synthetic.main.activity_question.*


class Question1Fragment : Fragment() {
    private var _binding: FragmentQuestion1Binding? = null
    private val binding get() = _binding!!
    private lateinit var onClickBoardingListener: OnClickBoardingListener

    override fun onAttach(context: Context) {
        super.onAttach(context)
        try {
            onClickBoardingListener = context as OnClickBoardingListener
        } catch (e: ClassCastException) {
            throw ClassCastException("${this.javaClass.simpleName} must implement OnClickBoardingListener")
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View? {
        _binding = FragmentQuestion1Binding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnSave.setOnClickListener {
            onClickBoardingListener.onButtonClicked(it)
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