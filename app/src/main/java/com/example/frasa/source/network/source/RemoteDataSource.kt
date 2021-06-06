package com.example.frasa.source.network.source

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.model.ScoreModel
import com.example.frasa.source.network.api.ApiService
import com.example.frasa.source.network.api.ApiService2
import com.google.gson.JsonObject
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.withContext

class RemoteDataSource(
    private val api: ApiService
) : AppDataSource {
    override suspend fun setScore(jsonBody: JsonObject): LiveData<ScoreModel> = coroutineScope {
        withContext(Dispatchers.IO) {
            try {
                val response = api.setScore(jsonBody)
                if (response.isSuccessful) {
                    var scoreModel = ScoreModel()

                    response.body()?.let { data ->
                        scoreModel = ScoreModel(
                            currentTimeStart = data.currentTimeStart,
                            currentTimeEnd = data.currentTimeEnd,
                            score = data.score,
                            token = data.token
                        )
                    }
                    return@withContext MutableLiveData(scoreModel)
                } else {
                    return@withContext MutableLiveData(ScoreModel())
                }
            } catch (e: Throwable) {
                return@withContext MutableLiveData(ScoreModel())
            }
        }
    }


}