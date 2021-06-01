package com.example.frasa.utils.json

import android.util.Log
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.json.JSONException
import org.json.JSONObject

fun JSONObject.parseJson(): JsonObject {
    var gsonObject = JsonObject()
    try {
        val jsonParser = JsonParser()
        gsonObject = jsonParser.parse(this.toString()) as JsonObject

        //print parameter
        Log.v("MY gson.JSON:  ", "AS PARAMETER  $gsonObject")
    } catch (e: JSONException) {
        e.printStackTrace()
    }
    return gsonObject
}