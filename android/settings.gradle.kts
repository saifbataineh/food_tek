pluginManagement {
    val flutterSdkPath: String by lazy {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val path = properties.getProperty("flutter.sdk")
        checkNotNull(path) { "flutter.sdk not set in local.properties" }
        path
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.2.1" apply false
    id("org.jetbrains.kotlin.android") version "2.1.10" apply false
    id("com.google.gms.google-services") version "4.4.2" apply false
}

include(":app")