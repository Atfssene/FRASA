package com.example.frasa.source.network.response


data class AppResponse(
    val id: String,
    val judul: String,
    val kategori: String,
    val penulis: String,
    val gambar: Int,
    val sinopsis: String,
    val isi: String
)
