package com.example.frasa.domain.repository

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.example.frasa.source.network.source.AppDataSource2
import com.google.gson.JsonObject

class AppRepositoryImpl2(
    private val appDataSource2: AppDataSource2
) : AppRepository2 {
    override suspend fun setParagraph(jsonBody: JsonObject): LiveData<DataModel> {
        return appDataSource2.setParagraph(jsonBody)
    }
}