package com.example.frasa.domain.repository

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.model.ScoreModel
import com.google.gson.JsonObject

interface AppRepository {
    suspend fun setParagraph(jsonBody: JsonObject): LiveData<DataModel>
    suspend fun setScore(jsonBody: JsonObject): LiveData<ScoreModel>
}