package com.example.frasa.source.network.source

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.ParagraphModel
import com.example.frasa.domain.model.ScoreModel
import com.google.gson.JsonObject

interface AppDataSource {

    suspend fun setScore(jsonBody: JsonObject): LiveData<ScoreModel>
    suspend fun getParagraf(): LiveData<ParagraphModel>

}