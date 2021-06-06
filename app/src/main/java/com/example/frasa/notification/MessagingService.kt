package com.example.frasa.notification


import android.content.Intent
import android.util.Log
import com.example.frasa.App.Companion.session
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import com.google.gson.Gson


class MessagingService : FirebaseMessagingService() {

    companion object{
        const val TAG = "PUSH_Android"
    }

    override fun onNewToken(token: String) {
        super.onNewToken(token)
        Log.d(TAG, "onNewToken: $token")
        FirebaseMessaging.getInstance().token.addOnCompleteListener {
            if(it.isComplete){
                val firebaseToken = it.result.toString()
                Log.d(TAG, "Refreshed token: $firebaseToken")
            }
        }
    }

    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        super.onMessageReceived(remoteMessage)
        val click_action = remoteMessage.notification?.clickAction
        val intent = Intent(click_action)

        Log.d(TAG,"onMessageReceived:${Gson().toJsonTree(remoteMessage.data)}")
        val data: Map<String, String> = remoteMessage.data

        session.summary = data["summary"].toString()
        session.paragraf = data["paragraf"].toString()
    }
}