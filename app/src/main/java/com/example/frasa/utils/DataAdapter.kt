package com.example.frasa.utils

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.frasa.R
import com.example.frasa.domain.model.DataModel
import com.example.frasa.utils.Helper.setImageWithGlide
import kotlinx.android.synthetic.main.item_row.view.*
import java.util.ArrayList

class DataAdapter(private val callback: DataCallback) :
    RecyclerView.Adapter<DataAdapter.ListViewHolder>() {
    private val listData = ArrayList<DataModel>()

    fun setData(data: List<DataModel>?) {
        if (data == null) return
        listData.clear()
        listData.addAll(data)
    }

    inner class ListViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        fun bind(data: DataModel) {
            with(itemView) {
                setImageWithGlide(context, data.gambar,cover_book)

                card_item.setOnClickListener {
                    callback.onItemClicked(data)
                }
            }

        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ListViewHolder =
        ListViewHolder(
            LayoutInflater.from(parent.context).inflate(R.layout.item_row, parent, false)
        )

    override fun getItemCount(): Int = listData.size

    override fun onBindViewHolder(holder: DataAdapter.ListViewHolder, position: Int) {
        holder.bind(listData[position])
    }

}