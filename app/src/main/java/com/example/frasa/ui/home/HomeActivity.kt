package com.example.frasa.ui.home

import android.content.Intent
import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModelProvider
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.frasa.R
import com.example.frasa.domain.model.DataModel
import com.example.frasa.notification.MessagingService
import com.example.frasa.ui.detail.DetailActivity
import com.example.frasa.utils.DataAdapter
import com.example.frasa.utils.DataCallback
import com.google.firebase.messaging.FirebaseMessaging
import kotlinx.android.synthetic.main.activity_home.*

class HomeActivity : AppCompatActivity(), DataCallback {
    private lateinit var viewModel: HomeViewModel
    private var gridLayoutManager: GridLayoutManager? = null

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_home)

        viewModel = ViewModelProvider(
        this@HomeActivity,
        ViewModelProvider.NewInstanceFactory()
        )[HomeViewModel::class.java]

        val listData = viewModel.getListData()
        gridLayoutManager = GridLayoutManager(applicationContext, 2, LinearLayoutManager.VERTICAL, false)

        setupRecyclerView(listData)

//        FirebaseMessaging.getInstance().token.addOnCompleteListener {
//            if(it.isComplete){
//                val firebaseToken = it.result.toString()
//                Log.d(MessagingService.TAG, "Refreshed token: $firebaseToken")
//            }
//        }
    }

    private fun setupRecyclerView(listData: List<DataModel>) {
        rv_frasa.apply {
            layoutManager = gridLayoutManager
            adapter = DataAdapter(this@HomeActivity)
            setHasFixedSize(true)
        }.also {
            it.adapter.let { adapter ->
                when (adapter){
                    is DataAdapter ->{
                        adapter.setData(listData)
                    }
                }
            }
        }
    }


    override fun onItemClicked(data: DataModel) {
        startActivity(
            Intent(
                this,
                DetailActivity::class.java
            )
                .putExtra(DetailActivity.EXTRA_DATA,data.id)
        )
    }
}