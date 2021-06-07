package com.example.frasa.domain.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
class ParagraphModel (
    var paragraph: String = "",
    var summary: String = "",
):Parcelable