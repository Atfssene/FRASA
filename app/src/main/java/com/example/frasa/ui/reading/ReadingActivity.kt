package com.example.frasa.ui.reading

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.fragment.app.Fragment
import androidx.viewpager2.widget.ViewPager2
import com.example.frasa.R
import com.example.frasa.ui.adapter.ViewPagerAdapter

class ReadingActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_reading)

        val viewPager: ViewPager2 = findViewById(R.id.view_pager)

        val fragments: ArrayList<Fragment> = arrayListOf(
            Reading1Fragment(),
            Reading2Fragment(),
            Reading3Fragment()
        )

        val adapter = ViewPagerAdapter(fragments, this)
        viewPager.adapter = adapter
    }
}