package com.example.frasa.source.local

import android.content.Context
import android.content.SharedPreferences
import com.example.frasa.domain.repository.AppRepository
import com.example.frasa.source.network.api.ApiClient
import com.example.frasa.source.network.source.AppDataSource
import com.example.frasa.source.network.source.RemoteDataSource
import org.json.JSONObject

class Session (context: Context) {



    private val sp: SharedPreferences by lazy {
        context.getSharedPreferences(SESSION_NAME, Context.MODE_PRIVATE)
    }

    private val spe: SharedPreferences.Editor by lazy {
        sp.edit()
    }

    fun reset() {
        spe.clear().apply()
    }

    var score: Int
    get() = sp.getInt(PREF_SCORE, 0)
    set(value) = spe.putInt(PREF_SCORE, value).apply()

    var currentTimeStart: String?
    get() = sp.getString(PREF_TIME_START,"")
    set(value) = spe.putString(PREF_TIME_START, value).apply()

    var currentTimeEnd: String?
    get() = sp.getString(PREF_TIME_END, "")
    set(value) = spe.putString(PREF_TIME_END, value).apply()

    var summary: String?
    get() = sp.getString(PREF_SUMMARY,"")
    set(value) = spe.putString(PREF_SUMMARY, value).apply()



    companion object{
        private const val SESSION_NAME = "frasa session"
        private const val PREF_SCORE = "score key"
        private const val PREF_TIME_START = "current time start"
        private const val PREF_TIME_END = "current time end"
        private const val PREF_SUMMARY = "summary text"
    }
}