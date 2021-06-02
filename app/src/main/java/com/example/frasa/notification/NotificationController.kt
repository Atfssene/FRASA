package com.example.frasa.notification

import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.NotificationManager.IMPORTANCE_HIGH
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.media.RingtoneManager
import android.os.Build
import androidx.core.app.NotificationCompat
import com.example.frasa.R
import com.example.frasa.ui.summary.SummaryActivity


class NotificationController constructor(private val applicationContext: Context) {
    private val NOTIFICATION_GENERAL_ID =1
    private val CHANNEL_ID = "my_channel"

    private val notificationManager : NotificationManager by lazy {
        applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
    }
    private val defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)

    fun createNotificationBasic (push:String,withImage:Boolean,image: Bitmap?=null){

        /**
         * Setup Intent
         */
        val notificationIntent = Intent(applicationContext, SummaryActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_CLEAR_TOP
        }

        val pendingIntent = PendingIntent.getActivity(
            applicationContext,
            0,
            notificationIntent,
            PendingIntent.FLAG_UPDATE_CURRENT
        )

        /**
         * Build Notification
         */
        val notificationBuilder = buildNotification(applicationContext, CHANNEL_ID) {
            setSmallIcon(R.drawable.ic_launcher_foreground)
            setContentTitle("New Notification")
            setContentText(push)
            setAutoCancel(true)
            setStyle(NotificationCompat.BigTextStyle().bigText(push))
            setSound(defaultSoundUri)
            setContentIntent(pendingIntent)
            setPriority(NotificationCompat.PRIORITY_DEFAULT)

            if (withImage) {
                setLargeIcon(image)
            }


        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channelName = "channelName"
            val channel = NotificationChannel(CHANNEL_ID, channelName, IMPORTANCE_HIGH).apply {
                description = "My channel description"
            }
            notificationManager.createNotificationChannel(channel)
        }

        notificationManager.notify(NOTIFICATION_GENERAL_ID,notificationBuilder.build())

    }


    fun buildNotification(context: Context, channelId: String, block: NotificationCompat.Builder.() -> Unit = {}) =
        NotificationCompat.Builder(context, channelId).apply(block)


}
