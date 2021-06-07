package com.example.frasa.domain.repository

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.model.ParagraphModel
import com.example.frasa.domain.model.ScoreModel
import com.google.gson.JsonObject

interface AppRepository {

    suspend fun setScore(jsonBody: JsonObject): LiveData<ScoreModel>
    suspend fun getParagraf(): LiveData<ParagraphModel>
}