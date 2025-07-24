dependencies {
  // Import the Firebase BoM
  implementation(platform("com.google.firebase:firebase-bom:34.0.0"))
  implementation 'com.google.firebase:firebase-analytics'
  implementation 'com.google.firebase:firebase-auth'
  implementation 'com.google.firebase:firebase-firestore'
  implementation 'com.google.firebase:firebase-database'
  implementation 'com.google.firebase:firebase-storage'
  implementation 'com.google.firebase:firebase-messaging'
  implementation 'com.google.firebase:firebase-crashlytics'


  // TODO: Add the dependencies for Firebase products you want to use
  // When using the BoM, don't specify versions in Firebase dependencies
  // https://firebase.google.com/docs/android/setup#available-libraries
}

plugins {

  // ...

  // Add the dependency for the Google services Gradle plugin
  id("com.google.gms.google-services") version "4.4.3" apply false
  id("com.android.application")

}

android {
    namespace = "com.example.mindnest"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
         applicationId "com.example.mindnest"
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.mindnest"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

buildscript {
    repositories {
        google()
        mavenCentral()
    }
}


flutter {
    source = "../.."

apply plugin: 'com.google.gms.google-services'
}


