package com.example.frasa.source.network.response

import com.google.gson.annotations.SerializedName

data class ScoreResponse(

	@field:SerializedName("score")
	val score: Int,

	@field:SerializedName("currentTimeStart")
	val currentTimeStart: String,

	@field:SerializedName("currentTimeEnd")
	val currentTimeEnd: String
)