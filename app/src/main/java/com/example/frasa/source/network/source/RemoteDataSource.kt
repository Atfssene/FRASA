package com.example.frasa.source.network.source

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.example.frasa.domain.model.DataModel
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
                            score = data.score
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

    override suspend fun setParagraph(jsonBody: JsonObject): LiveData<DataModel> = coroutineScope {
        withContext(Dispatchers.IO) {
            try {
                val response = api.setParagraph(jsonBody)

                if (response.isSuccessful) {
                    var dataModel = DataModel()

                    response.body()?.let { data ->
                        dataModel = DataModel(
                            id = data.id,
                            judul = data.judul,
                            kategori = data.kategori,
                            penulis = data.penulis,
                            gambar = data.gambar,
                            sinopsis = data.sinopsis,
                            isi = data.isi
                        )
                    }
                    return@withContext MutableLiveData(dataModel)
                } else {
                    return@withContext MutableLiveData(DataModel())
                }
            } catch (e: Throwable) {
                return@withContext MutableLiveData(DataModel())
            }
        }
    }
}