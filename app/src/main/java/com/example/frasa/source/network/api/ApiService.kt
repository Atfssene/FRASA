package com.example.frasa.source.network.api

import com.example.frasa.source.network.response.AppResponse
import com.example.frasa.source.network.response.ScoreResponse
import com.google.gson.JsonObject
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST


interface ApiService {

    @POST("/predict")
    suspend fun setParagraph(@Body jsonBody: JsonObject?): Response<AppResponse>

    @POST("/insert_score")
    suspend fun setScore (@Body jsonBody: JsonObject?): Response<ScoreResponse>

}