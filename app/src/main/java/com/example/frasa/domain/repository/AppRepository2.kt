package com.example.frasa.domain.repository

import androidx.lifecycle.LiveData
import com.example.frasa.domain.model.DataModel
import com.google.gson.JsonObject

interface AppRepository2 {
    suspend fun setParagraph(jsonBody: JsonObject): LiveData<DataModel>
}