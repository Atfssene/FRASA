package com.example.frasa.ui.test

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.viewpager2.widget.ViewPager2
import com.example.frasa.App.Companion.session
import com.example.frasa.R
import com.example.frasa.ui.adapter.ViewPagerAdapter
import com.example.frasa.ui.home.HomeActivity


class QuestionActivity : AppCompatActivity(), OnClickBoardingListener {
    private lateinit var viewPager: ViewPager2
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_question)

        viewPager = findViewById(R.id.view_pager)

        val fragments: ArrayList<Fragment> = arrayListOf(
            Question1Fragment(),
            Question2Fragment(),
            Question3Fragment(),
            Question4Fragment(),
            Question5Fragment()
        )

        val adapter = ViewPagerAdapter(fragments, this)
        viewPager.adapter = adapter
    }

    override fun onButtonClicked(view: View) {
        val position= viewPager.currentItem
        when(view.id){
            R.id.btn_save ->{
                viewPager.currentItem = position+1
            }
            R.id.btn_finish ->{
                session.isFirstTime = false
                val intent = Intent(this, HomeActivity::class.java)
                startActivity(intent)
                finishAffinity()
            }
        }
    }
}