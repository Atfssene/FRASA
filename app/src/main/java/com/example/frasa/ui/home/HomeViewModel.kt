package com.example.frasa.ui.home

import androidx.lifecycle.ViewModel
import com.example.frasa.domain.model.DataModel
import com.example.frasa.utils.DataDummy

class HomeViewModel : ViewModel(){
    fun getListData(): List<DataModel> = DataDummy.generateDataDummy()
}