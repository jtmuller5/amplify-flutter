// 
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package com.amazonaws.amplify.amplify_datastore.pigeons

import android.util.Log
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MessageCodec
import io.flutter.plugin.common.StandardMessageCodec
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

private fun wrapResult(result: Any?): List<Any?> {
  return listOf(result)
}

private fun wrapError(exception: Throwable): List<Any?> {
  if (exception is FlutterError) {
    return listOf(
      exception.code,
      exception.message,
      exception.details
    )
  } else {
    return listOf(
      exception.javaClass.simpleName,
      exception.toString(),
      "Cause: " + exception.cause + ", Stacktrace: " + Log.getStackTraceString(exception)
    )
  }
}

/**
 * Error class for passing custom error details to Flutter via a thrown PlatformException.
 * @property code The error code.
 * @property message The error message.
 * @property details The error details. Must be a datatype supported by the api codec.
 */
class FlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeAuthSession (
  val isSignedIn: Boolean,
  val userSub: String? = null,
  val userPoolTokens: NativeUserPoolTokens? = null,
  val identityId: String? = null,
  val awsCredentials: NativeAWSCredentials? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeAuthSession {
      val isSignedIn = list[0] as Boolean
      val userSub = list[1] as String?
      val userPoolTokens: NativeUserPoolTokens? = (list[2] as List<Any?>?)?.let {
        NativeUserPoolTokens.fromList(it)
      }
      val identityId = list[3] as String?
      val awsCredentials: NativeAWSCredentials? = (list[4] as List<Any?>?)?.let {
        NativeAWSCredentials.fromList(it)
      }
      return NativeAuthSession(isSignedIn, userSub, userPoolTokens, identityId, awsCredentials)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      isSignedIn,
      userSub,
      userPoolTokens?.toList(),
      identityId,
      awsCredentials?.toList(),
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeAuthUser (
  val userId: String,
  val username: String

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeAuthUser {
      val userId = list[0] as String
      val username = list[1] as String
      return NativeAuthUser(userId, username)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      userId,
      username,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeUserPoolTokens (
  val accessToken: String,
  val refreshToken: String,
  val idToken: String

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeUserPoolTokens {
      val accessToken = list[0] as String
      val refreshToken = list[1] as String
      val idToken = list[2] as String
      return NativeUserPoolTokens(accessToken, refreshToken, idToken)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      accessToken,
      refreshToken,
      idToken,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeAWSCredentials (
  val accessKeyId: String,
  val secretAccessKey: String,
  val sessionToken: String? = null,
  val expirationIso8601Utc: String? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeAWSCredentials {
      val accessKeyId = list[0] as String
      val secretAccessKey = list[1] as String
      val sessionToken = list[2] as String?
      val expirationIso8601Utc = list[3] as String?
      return NativeAWSCredentials(accessKeyId, secretAccessKey, sessionToken, expirationIso8601Utc)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      accessKeyId,
      secretAccessKey,
      sessionToken,
      expirationIso8601Utc,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeGraphQLOperation (
  val response: String? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeGraphQLOperation {
      val response = list[0] as String?
      return NativeGraphQLOperation(response)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      response,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeGraphQLSubscriptionResponse (
  val subscriptionId: String? = null,
  val payloadJson: String? = null,
  val type: String? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeGraphQLSubscriptionResponse {
      val subscriptionId = list[0] as String?
      val payloadJson = list[1] as String?
      val type = list[2] as String?
      return NativeGraphQLSubscriptionResponse(subscriptionId, payloadJson, type)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      subscriptionId,
      payloadJson,
      type,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class NativeGraphQLRequest (
  val apiName: String? = null,
  val document: String? = null,
  val variables: Map<String?, String?>? = null,
  val responseType: String? = null,
  val decodePath: String? = null,
  val options: Map<String?, String?>? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): NativeGraphQLRequest {
      val apiName = list[0] as String?
      val document = list[1] as String?
      val variables = list[2] as Map<String?, String?>?
      val responseType = list[3] as String?
      val decodePath = list[4] as String?
      val options = list[5] as Map<String?, String?>?
      return NativeGraphQLRequest(apiName, document, variables, responseType, decodePath, options)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      apiName,
      document,
      variables,
      responseType,
      decodePath,
      options,
    )
  }
}

@Suppress("UNCHECKED_CAST")
private object NativeAuthPluginCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeAWSCredentials.fromList(it)
        }
      }
      129.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeAuthSession.fromList(it)
        }
      }
      130.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeUserPoolTokens.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is NativeAWSCredentials -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      is NativeAuthSession -> {
        stream.write(129)
        writeValue(stream, value.toList())
      }
      is NativeUserPoolTokens -> {
        stream.write(130)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated class from Pigeon that represents Flutter messages that can be called from Kotlin. */
@Suppress("UNCHECKED_CAST")
class NativeAuthPlugin(private val binaryMessenger: BinaryMessenger) {
  companion object {
    /** The codec used by NativeAuthPlugin. */
    val codec: MessageCodec<Any?> by lazy {
      NativeAuthPluginCodec
    }
  }
  fun fetchAuthSession(callback: (NativeAuthSession) -> Unit) {
    val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeAuthPlugin.fetchAuthSession", codec)
    channel.send(null) {
      val result = it as NativeAuthSession
      callback(result)
    }
  }
}
@Suppress("UNCHECKED_CAST")
private object NativeApiPluginCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeGraphQLOperation.fromList(it)
        }
      }
      129.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeGraphQLRequest.fromList(it)
        }
      }
      130.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeGraphQLSubscriptionResponse.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is NativeGraphQLOperation -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      is NativeGraphQLRequest -> {
        stream.write(129)
        writeValue(stream, value.toList())
      }
      is NativeGraphQLSubscriptionResponse -> {
        stream.write(130)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated class from Pigeon that represents Flutter messages that can be called from Kotlin. */
@Suppress("UNCHECKED_CAST")
class NativeApiPlugin(private val binaryMessenger: BinaryMessenger) {
  companion object {
    /** The codec used by NativeApiPlugin. */
    val codec: MessageCodec<Any?> by lazy {
      NativeApiPluginCodec
    }
  }
  fun getLatestAuthToken(providerNameArg: String, callback: (String?) -> Unit) {
    val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeApiPlugin.getLatestAuthToken", codec)
    channel.send(listOf(providerNameArg)) {
      val result = it as String?
      callback(result)
    }
  }
  fun mutate(requestArg: NativeGraphQLRequest, callback: (NativeGraphQLOperation) -> Unit) {
    val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeApiPlugin.mutate", codec)
    channel.send(listOf(requestArg)) {
      val result = it as NativeGraphQLOperation
      callback(result)
    }
  }
  fun subscribe(requestArg: NativeGraphQLRequest, callback: (NativeGraphQLSubscriptionResponse) -> Unit) {
    val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeApiPlugin.subscribe", codec)
    channel.send(listOf(requestArg)) {
      val result = it as NativeGraphQLSubscriptionResponse
      callback(result)
    }
  }
}
/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface NativeAmplifyBridge {
  fun configure(version: String, config: String, callback: (Result<Unit>) -> Unit)

  companion object {
    /** The codec used by NativeAmplifyBridge. */
    val codec: MessageCodec<Any?> by lazy {
      StandardMessageCodec()
    }
    /** Sets up an instance of `NativeAmplifyBridge` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: NativeAmplifyBridge?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeAmplifyBridge.configure", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val versionArg = args[0] as String
            val configArg = args[1] as String
            api.configure(versionArg, configArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
@Suppress("UNCHECKED_CAST")
private object NativeAuthBridgeCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeAuthUser.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is NativeAuthUser -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface NativeAuthBridge {
  fun addAuthPlugin(callback: (Result<Unit>) -> Unit)
  fun updateCurrentUser(user: NativeAuthUser?)

  companion object {
    /** The codec used by NativeAuthBridge. */
    val codec: MessageCodec<Any?> by lazy {
      NativeAuthBridgeCodec
    }
    /** Sets up an instance of `NativeAuthBridge` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: NativeAuthBridge?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeAuthBridge.addAuthPlugin", codec)
        if (api != null) {
          channel.setMessageHandler { _, reply ->
            api.addAuthPlugin() { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeAuthBridge.updateCurrentUser", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val userArg = args[0] as NativeAuthUser?
            var wrapped: List<Any?>
            try {
              api.updateCurrentUser(userArg)
              wrapped = listOf<Any?>(null)
            } catch (exception: Throwable) {
              wrapped = wrapError(exception)
            }
            reply.reply(wrapped)
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
@Suppress("UNCHECKED_CAST")
private object NativeApiBridgeCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          NativeGraphQLSubscriptionResponse.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is NativeGraphQLSubscriptionResponse -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface NativeApiBridge {
  fun addApiPlugin(authProvidersList: List<String>, callback: (Result<Unit>) -> Unit)
  fun sendSubscriptionEvent(event: NativeGraphQLSubscriptionResponse, callback: (Result<Unit>) -> Unit)

  companion object {
    /** The codec used by NativeApiBridge. */
    val codec: MessageCodec<Any?> by lazy {
      NativeApiBridgeCodec
    }
    /** Sets up an instance of `NativeApiBridge` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: NativeApiBridge?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeApiBridge.addApiPlugin", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val authProvidersListArg = args[0] as List<String>
            api.addApiPlugin(authProvidersListArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.amplify_datastore.NativeApiBridge.sendSubscriptionEvent", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val eventArg = args[0] as NativeGraphQLSubscriptionResponse
            api.sendSubscriptionEvent(eventArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
