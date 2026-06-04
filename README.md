# flutter_voice_calling_app_2026

This is the mobile client application for the coin-based voice calling system. It is built using Flutter and integrates Agora SDK for high-performance audio/video RTC, Firebase for user authentication & Cloud Messaging (FCM) notifications, and calls backend APIs to synchronize coin transactions.

---

## Technical Stack
- **Framework**: Flutter (Dart)
- **State Management**: Provider
- **Calling engine**: Agora RTC
- **Push Messages**: Firebase Cloud Messaging (FCM)
- **API Client**: Dio

---

## Local Development Setup

### 1. Prerequisite Installations
- Flutter SDK (v3.0.x or later)
- Android Studio / VS Code with Dart & Flutter plugins
- JDK 17 (for Android build tools)

### 2. Dependency Resolution
Run the following command at the root of the mobile folder:
```bash
flutter pub get
```

### 3. API Config Setup
Ensure you configure the URL endpoint pointing to your `backend-api` instance. Open [lib/services/api_config.dart](file:///d:/Flutter%20calling%20android%20app%202026/flutter-app/lib/services/api_config.dart) and configure:
```dart
const String baseUrl = "https://your-backend-api.railway.app/api";
```

---

## Firebase Setup

This app requires Firebase Auth and FCM. Follow these steps to configure:

1. Go to the [Firebase Console](https://console.firebase.google.com).
2. Create a new project (e.g. `coin-voice-calling`).
3. Add an Android Application:
   - Package Name: `com.example.flutter_voice_calling_app_2026` (check in `android/app/build.gradle.kts`).
4. Download the `google-services.json` file.
5. Place `google-services.json` inside the `android/app/` folder.
6. Enable **Phone Authentication** in the Firebase Authentication console.
7. Configure FCM credentials and upload APNs/FCM keys to Firebase if sending notifications.

---

## Production Releases (Android)

### 1. Configure App Signing (Keystore)
Create a file named `key.properties` in the `android/` directory containing:
```properties
storePassword=yourStorePassword
keyPassword=yourKeyPassword
keyAlias=yourKeyAlias
storeFile=/path/to/your/keystore.jks
```
Update `android/app/build.gradle.kts` to reference this signing config for release builds.

### 2. Build APK (for direct testing/distribution)
To generate a release APK:
```bash
flutter build apk --release
```
The compiled binary will be created at: `build/app/outputs/flutter-apk/app-release.apk`.

### 3. Build Android App Bundle (for Google Play Store upload)
To generate a release AAB package for the Play Store console:
```bash
flutter build appbundle --release
```
The compiled App Bundle will be created at: `build/app/outputs/bundle/release/app-release.aab`.
