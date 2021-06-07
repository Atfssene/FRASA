package com.example.frasa.ui.summary

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.frasa.domain.model.ParagraphModel
import com.example.frasa.domain.model.ScoreModel
import com.example.frasa.domain.repository.AppRepository
import com.example.frasa.domain.repository.AppRepositoryImpl
import com.example.frasa.source.network.api.ApiClient
import com.example.frasa.source.network.source.AppDataSource
import com.example.frasa.source.network.source.RemoteDataSource
import com.google.gson.JsonObject
import kotlinx.coroutines.launch

class SummaryViewModel : ViewModel(){
    private var repository: AppRepository
    private var dataSource: AppDataSource = RemoteDataSource(ApiClient.apiInstance)

    private val _paragraf = MutableLiveData<ParagraphModel>()
    val paragraf: LiveData<ParagraphModel>
        get() = _paragraf

    init {
        repository = AppRepositoryImpl(dataSource)
    }
    fun getParagraf() =  viewModelScope.launch {
        val data = repository.getParagraf()
        _paragraf.postValue(data.value)
    }
}