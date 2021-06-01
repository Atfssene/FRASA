package com.example.frasa.source.network.api

import android.content.Context
import com.example.frasa.App
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class ApiClient {
    fun create() {
        _apiInstance = Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(ApiService::class.java)
    }

    companion object {
        private const val BASE_URL = "https://frasadb-j4jaf2mpiq-uc.a.run.app/"

        private var _apiInstance: ApiService? = null

        val apiInstance: ApiService
            get() {
                if (_apiInstance == null) {
                    synchronized(Any()) {
                        if (_apiInstance == null) {
                            throw RuntimeException("Error create ApiService instance")
                        }
                    }
                }
                return _apiInstance!!
            }
    }
}