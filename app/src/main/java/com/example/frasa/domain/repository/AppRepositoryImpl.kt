package com.example.frasa.domain.repository

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.model.ScoreModel
import com.example.frasa.source.network.source.AppDataSource
import com.google.gson.JsonObject

class AppRepositoryImpl(
    private val appDataSource: AppDataSource
) : AppRepository {

    override suspend fun setParagraph(jsonBody: JsonObject): LiveData<DataModel> {
        return appDataSource.setParagraph(jsonBody)
    }

    override suspend fun setScore(jsonBody: JsonObject): LiveData<ScoreModel> {
        return appDataSource.setScore(jsonBody)
    }
}