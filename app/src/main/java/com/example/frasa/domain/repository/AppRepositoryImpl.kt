package com.example.frasa.domain.repository

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.model.ParagraphModel
import com.example.frasa.domain.model.ScoreModel
import com.example.frasa.source.network.source.AppDataSource
import com.example.frasa.source.network.source.AppDataSource2
import com.google.gson.JsonObject

class AppRepositoryImpl(
    private val appDataSource: AppDataSource
) : AppRepository {



    override suspend fun setScore(jsonBody: JsonObject): LiveData<ScoreModel> {
        return appDataSource.setScore(jsonBody)
    }

    override suspend fun getParagraf(): LiveData<ParagraphModel> {
        return appDataSource.getParagraf()
    }
}