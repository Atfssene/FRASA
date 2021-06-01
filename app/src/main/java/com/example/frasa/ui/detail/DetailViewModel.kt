package com.example.frasa.ui.detail

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.frasa.domain.model.DataModel
import com.example.frasa.domain.repository.AppRepository
import com.example.frasa.domain.repository.AppRepositoryImpl
import com.example.frasa.source.network.api.ApiClient
import com.example.frasa.source.network.source.AppDataSource
import com.example.frasa.source.network.source.RemoteDataSource
import com.example.frasa.utils.DataDummy
import com.google.gson.JsonObject
import kotlinx.coroutines.launch

class DetailViewModel : ViewModel() {
    private lateinit var id: String

    private var repository: AppRepository
    private var dataSource: AppDataSource = RemoteDataSource(ApiClient.apiInstance)

    private val _paragraph = MutableLiveData<DataModel>()
    val paragraph: LiveData<DataModel>
        get() = _paragraph

    init {
        repository = AppRepositoryImpl(dataSource)
    }

    private fun getListData(): ArrayList<DataModel> = DataDummy.generateDataDummy() as ArrayList<DataModel>

    fun postParagraph(jsonBody: JsonObject) =  viewModelScope.launch {
        val data = repository.setParagraph(jsonBody)
        _paragraph.postValue(data.value)
    }

    fun setId(id: String?){
        this.id = id.toString()
    }

    fun getDetailbyId(): DataModel{
        lateinit var result: DataModel
        val listData = getListData()
        for (data in listData){
            if (data.id == id){
                result = data
                break
            }
        }
        return result
    }
}