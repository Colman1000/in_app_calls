# In-App Calls

[![pub package](https://img.shields.io/pub/v/in_app_calls)](https://pub.dev/packages/in_app_calls) [![license](https://img.shields.io/github/license/colman1000/in_app_calls)](https://github.com/colman1000/in_app_calls)

A flutter package based on the [WebRTC plugin](https://pub.dev/packages/flutter_webrtc) for easily integrating In-App Voice &
Video Call experiences in your Mobile/Desktop/Web apps.

<p align="center">
<strong>Made with 💖 from </strong> EaseCore 

## Usage

Add `in_app_calls` as a [dependency in your pubspec.yaml file](https://flutter.io/using-packages/).

### iOS

Add the following entry to your _Info.plist_ file, located in `<project root>/ios/Runner/Info.plist`:

```xml

<key>NSCameraUsageDescription</key>
<string>$(PRODUCT_NAME) Camera Usage!</string>
<key>NSMicrophoneUsageDescription</key>
<string>$(PRODUCT_NAME) Microphone Usage!</string>
```

This entry allows your app to access camera and microphone.

### Android

Ensure the following permission is present in your Android Manifest file, located
in `<project root>/android/app/src/main/AndroidManifest.xml`:

```xml

<uses-feature android:name="android.hardware.camera"/>
<uses-feature android:name="android.hardware.camera.autofocus"/>
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.RECORD_AUDIO"/>
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
<uses-permission android:name="android.permission.CHANGE_NETWORK_STATE"/>
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS"/>
```

If you need to use a Bluetooth device, please add:

```xml

<uses-permission android:name="android.permission.BLUETOOTH" android:maxSdkVersion="30"/>
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" android:maxSdkVersion="30"/>
<uses-permission android:name="android.permission.BLUETOOTH_CONNECT"/>
```

The Flutter project template adds it, so it may already be there.

Also you will need to set your build settings to Java 8, because official WebRTC jar now uses static methods
in `EglBase` interface. Just add this to your app level `build.gradle`:

```groovy
android {
    //...
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
}
```

If necessary, in the same `build.gradle` you will need to increase `minSdkVersion` of `defaultConfig` up to `23` (
currently default Flutter generator set it to `16`).

### Important reminder

When you compile the release apk, you need to add the following operations,
[Setup Proguard Rules](https://github.com/flutter-webrtc/flutter-webrtc/commit/d32dab13b5a0bed80dd9d0f98990f107b9b514f4)

## Contributions

Contributions are welcome! Please follow the conventions described in the [contributing guide]()

### Example

For more examples, please refer to the [example project]()