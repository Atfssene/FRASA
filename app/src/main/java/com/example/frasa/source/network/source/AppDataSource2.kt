package com.example.frasa.source.network.source

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.google.gson.JsonObject

interface AppDataSource2 {
    suspend fun setParagraph(jsonBody: JsonObject): LiveData<DataModel>
}