package com.example.frasa.ui.test

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.model.ScoreModel
import com.example.frasa.domain.repository.AppRepository
import com.example.frasa.domain.repository.AppRepositoryImpl
import com.example.frasa.source.network.api.ApiClient
import com.example.frasa.source.network.source.AppDataSource
import com.example.frasa.source.network.source.RemoteDataSource
import com.google.gson.JsonObject
import kotlinx.coroutines.launch

class QuestionViewModel : ViewModel() {
    private var repository: AppRepository
    private var dataSource: AppDataSource = RemoteDataSource(ApiClient.apiInstance)

    private val _score = MutableLiveData<ScoreModel>()
    val score: LiveData<ScoreModel>
        get() = _score

    init {
        repository = AppRepositoryImpl(dataSource)
    }
    fun postScore(jsonBody: JsonObject) =  viewModelScope.launch {
        val data = repository.setScore(jsonBody)
        _score.postValue(data.value)
    }
}