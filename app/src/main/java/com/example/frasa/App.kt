package com.example.frasa

import android.app.Application
import com.example.frasa.source.local.Session
import com.example.frasa.source.network.api.ApiClient

class App: Application() {

    override fun onCreate() {
        super.onCreate()
        session = Session(this)

        ApiClient().create()
    }

    companion object{
        lateinit var session: Session
    }
}