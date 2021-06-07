package com.example.frasa.source.network.response

import com.google.gson.annotations.SerializedName

data class ParagrafResponse(

    @field:SerializedName("paragraph")
    val paragraph: String,

    @field:SerializedName("summary")
    val summary: String
)