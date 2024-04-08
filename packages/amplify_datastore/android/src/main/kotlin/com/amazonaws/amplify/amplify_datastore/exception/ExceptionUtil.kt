// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.exception

import android.os.Handler
import android.os.Looper
import com.amplifyframework.AmplifyException
import com.amplifyframework.core.Amplify
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.google.gson.JsonSerializationContext
import com.google.gson.JsonSerializer
import com.google.gson.reflect.TypeToken
import io.flutter.plugin.common.MethodChannel.Result
import java.lang.reflect.Type

class ExceptionUtil {
    companion object {
        @JvmStatic
        fun postExceptionToFlutterChannel(
            result: Result,
            errorCode: String,
            details: Map<String, Any?>,
            threadHandler: Handler
        ) {
            threadHandler.post {
                result.error(
                    errorCode,
                    ExceptionMessages.defaultFallbackExceptionMessage,
                    details
                )
            }
        }

        @JvmStatic
        fun createSerializedError(e: AmplifyException): Map<String, Any?> {
            val gsonBuilder = GsonBuilder()
            gsonBuilder.registerTypeHierarchyAdapter(AmplifyException::class.java, AmplifyExceptionSerializer())
            val gson = gsonBuilder.create()
            val serializedJsonException = gson.toJson(e)

            @Suppress("UNCHECKED_CAST")
            var serializedMap: Map<String, Any> = gson.fromJson(serializedJsonException, Map::class.java) as Map<String, Any>

            // Remove unnecessary fields
            serializedMap =
                serializedMap.filterKeys { it != "stackTrace" && it != "suppressedExceptions" }

            // Update the name of fields as per Dart exceptions
            return serializedMap.mapKeys {
                when (it.key) {
                    "detailMessage" -> "message"
                    "cause" -> "underlyingException"
                    else -> it.key
                }
            }
        }

        @JvmStatic
        fun createSerializedUnrecognizedError(e: Exception): Map<String, Any?> {
            return createSerializedError(ExceptionMessages.missingExceptionMessage, null, e.toString())
        }

        @JvmStatic
        fun createSerializedError(
            message: String,
            recoverySuggestion: String?,
            cause: String?
        ): Map<String, String?> {
            return mapOf(
                "message" to message,
                "recoverySuggestion" to (
                    recoverySuggestion
                        ?: ExceptionMessages.missingRecoverySuggestion
                    ),
                "underlyingException" to cause
            )
        }

        @JvmStatic
        fun handleAddPluginException(pluginName: String, e: Exception, flutterResult: Result, threadHandler: Handler) {
            var errorCode = pluginName + "Exception"
            if (e is Amplify.AlreadyConfiguredException) {
                errorCode = "AmplifyAlreadyConfiguredException"
            }
            val errorDetails: Map<String, Any?> = when (e) {
                is AmplifyException -> createSerializedError(e)
                else -> createSerializedUnrecognizedError(e)
            }
            postExceptionToFlutterChannel(flutterResult, errorCode, errorDetails, threadHandler)
        }
    }
}

class AmplifyExceptionSerializer : JsonSerializer<AmplifyException> {
    override fun serialize(src: AmplifyException?, typeOfSrc: Type?, context: JsonSerializationContext?): JsonElement {
        val jsonObject = JsonObject()
        src?.let {
            jsonObject.addProperty("message", src.message)
            jsonObject.addProperty("recoverySuggestion", src.recoverySuggestion)
        }
        return jsonObject
    }
}
