package com.example.frasa.source.network.api

import com.example.frasa.source.network.response.ParagrafResponse
import com.example.frasa.source.network.response.ScoreResponse
import com.google.gson.JsonObject
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST


interface ApiService {


    @POST("/insert_score")
    suspend fun setScore (@Body jsonBody: JsonObject?): Response<ScoreResponse>

    @GET("/resources/paragraph")
    suspend fun getParagraf(): Response<ParagrafResponse>

}