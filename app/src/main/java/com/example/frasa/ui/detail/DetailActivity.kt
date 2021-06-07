package com.example.frasa.ui.detail

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import androidx.lifecycle.ViewModelProvider
import com.example.frasa.App.Companion.session
import com.example.frasa.R
import com.example.frasa.domain.model.DataModel
import com.example.frasa.utils.Helper.setImageWithGlide
import com.example.frasa.utils.json.parseJson
import kotlinx.android.synthetic.main.activity_detail.*
import org.json.JSONObject

class DetailActivity : AppCompatActivity() {

    companion object{
        const val EXTRA_DATA = "extra_data"
    }

    private lateinit var result: DataModel

    private lateinit var jsonData: JSONObject

    private val viewModel: DetailViewModel by lazy {
        ViewModelProvider(this@DetailActivity,
            ViewModelProvider.NewInstanceFactory()
        )[DetailViewModel::class.java]
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_detail)

        jsonData = JSONObject()

        val id = intent.getStringExtra(EXTRA_DATA)

        viewModel.setId(id)
        result = viewModel.getDetailbyId()
        tv_category.text =result.kategori
        tv_title.text = result.judul
        tv_writer.text = result.penulis
        sinopsis.text = result.sinopsis
        setImageWithGlide(this@DetailActivity, result.gambar, cover)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        btn_subscribe.setOnClickListener {
            jsonData.put("judul", result.judul)
            viewModel.postParagraph(jsonData.parseJson())
            Toast.makeText(this,"SUBSCRIBED!", Toast.LENGTH_SHORT).show()
        }

        observeData()
    }

    private fun observeData() {
        viewModel.paragraph.observe(this, {

        })
    }

    override fun onSupportNavigateUp(): Boolean {
        finish()
        return super.onSupportNavigateUp()
    }
}