package com.example.frasa.utils

import android.content.Context
import android.widget.ImageView
import com.bumptech.glide.Glide

object Helper {
    const val TYPE_DATA = "TYPE_DATA"

    fun setImageWithGlide(context: Context, imagePath: Int, imageView: ImageView) {
        Glide.with(context).clear(imageView)
        Glide.with(context).load(imagePath).into(imageView)
    }
}