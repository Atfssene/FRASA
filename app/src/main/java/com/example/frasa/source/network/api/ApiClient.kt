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

        _apiInstance2 = Retrofit.Builder()
            .baseUrl(BASE_URL2)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(ApiService2::class.java)
    }

    companion object {
        private const val BASE_URL = "https://frasadb-j4jaf2mpiq-uc.a.run.app/"
        private const val BASE_URL2 = "https://frasa-j4jaf2mpiq-uc.a.run.app/"

        private var _apiInstance: ApiService? = null
        private var _apiInstance2: ApiService2? = null

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

        val apiInstance2: ApiService2
            get() {
                if (_apiInstance2 == null) {
                    synchronized(Any()) {
                        if (_apiInstance2 == null) {
                            throw RuntimeException("Error create ApiService instance")
                        }
                    }
                }
                return _apiInstance2!!
            }
    }
}