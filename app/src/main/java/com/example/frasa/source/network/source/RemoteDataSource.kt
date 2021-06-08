package com.example.frasa.source.network.source

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.example.frasa.domain.model.ParagraphModel
import com.example.frasa.domain.model.ScoreModel
import com.example.frasa.source.network.api.ApiService
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

    override suspend fun getParagraf(): LiveData<ParagraphModel> = coroutineScope {
        withContext(Dispatchers.IO) {
            try {
                val response = api.getParagraf()
                if (response.isSuccessful) {
                    var paragraphModel = ParagraphModel()

                    response.body()?.let { data ->
                        paragraphModel = ParagraphModel(
                            paragraph = data.paragraph,
                            summary = data.summary
                        )
                    }
                    return@withContext MutableLiveData(paragraphModel)
                } else {
                    return@withContext MutableLiveData(ParagraphModel())
                }
            } catch (e: Throwable) {
                return@withContext MutableLiveData(ParagraphModel())
            }
        }
    }


}