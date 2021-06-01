package com.example.frasa.notification

import android.util.Log
import com.example.frasa.App.Companion.session
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import com.google.gson.Gson

class MessagingService : FirebaseMessagingService() {

    val TAG = MessagingService::class.java.simpleName

    lateinit var notificationController: NotificationController

    override fun onNewToken(token: String) {
        super.onNewToken(token)
        Log.d(TAG,"onNewToken: $token",)
    }

    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        super.onMessageReceived(remoteMessage)
        Log.d(TAG,"onMessageReceived:${Gson().toJsonTree(remoteMessage.data)}")
        val data: Map<String, String> = remoteMessage.data
        noticationController.createNotificationBasic(
            push = data["push"].toString(),
            withImage = false
        )
        session.summary = data["summary"].toString()
    }

}