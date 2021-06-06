package com.example.frasa.domain.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
class ScoreModel (
    var currentTimeStart: String = "",
    var currentTimeEnd: String = "",
    var score: Int = -1,
    var token: String = ""
): Parcelable