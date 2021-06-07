package com.example.frasa.ui.test

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.example.frasa.databinding.FragmentQuestion5Binding
import com.example.frasa.source.local.Session
import com.example.frasa.ui.detail.DetailViewModel
import com.example.frasa.ui.home.HomeActivity
import com.example.frasa.utils.json.parseJson
import org.json.JSONObject

class Question5Fragment : Fragment() {
    private lateinit var session : Session
    private var _binding: FragmentQuestion5Binding? = null
    private val binding get() = _binding!!
    private lateinit var jsonData: JSONObject
    private val viewModel: QuestionViewModel by lazy {
        ViewModelProvider(this,
            ViewModelProvider.NewInstanceFactory()
        )[QuestionViewModel::class.java]
    }
    private lateinit var onClickBoardingListener: OnClickBoardingListener

    override fun onAttach(context: Context) {
        super.onAttach(context)
        try {
            onClickBoardingListener = context as OnClickBoardingListener
        } catch (e: ClassCastException) {
            throw ClassCastException("${this.javaClass.simpleName} must implement OnClickBoardingListener")
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        session = Session(requireContext())
        jsonData = JSONObject()
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentQuestion5Binding.inflate(inflater, container, false)
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

        binding.btnFinish.setOnClickListener {
            onClickBoardingListener.onButtonClicked(it)
            jsonData.apply {
                put("currentTimeStart", session.currentTimeStart)
                put("currentTimeEnd", session.currentTimeEnd)
                put("score", session.score)
                put("token", session.token)
            }
            viewModel.postScore(jsonData.parseJson())

        }
    }
}