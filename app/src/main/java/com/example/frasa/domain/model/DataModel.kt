package com.example.frasa.domain.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
class DataModel(
    var id: String = "",
    var judul: String = "",
    var kategori: String = "",
    var penulis: String = "",
    var gambar: Int = -1,
    var sinopsis: String = "",
    var isi: String = ""
):Parcelable