package com.example.frasa.ui.test

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.fragment.app.Fragment
import androidx.viewpager2.widget.ViewPager2
import com.example.frasa.R
import com.example.frasa.ui.adapter.ViewPagerAdapter


class QuestionActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_question)
        val viewPager: ViewPager2 = findViewById(R.id.view_pager)

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
}