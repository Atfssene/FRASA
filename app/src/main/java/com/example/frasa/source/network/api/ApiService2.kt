package com.example.frasa.source.network.api

import com.example.frasa.source.network.response.AppResponse
import com.google.gson.JsonObject
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST

interface ApiService2 {
    @POST("/predict")
    suspend fun setParagraph(@Body jsonBody: JsonObject?): Response<AppResponse>
}