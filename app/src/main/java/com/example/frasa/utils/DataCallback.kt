package com.example.frasa.utils

import com.example.frasa.domain.model.DataModel

interface DataCallback {
    fun onItemClicked(data: DataModel)
}