# AmyR App Documentation
## Project Overview
AmyR is a Flutter-based mobile application designed to automate retail processes and provide a virtual AI assistant for store management. It aims to streamline operations from shop to customer, offering swift and secure delivery solutions.
**Key Features:**
*   **Authentication:** User authentication via phone number and OTP verification.
*   **Onboarding:** Guided onboarding experience for new users.
*   **Home Screen:** Bottom navigation bar for easy access to different sections of the app.
*   **Theming:** Customizable light theme.
*   **Constants:** Centralized constants for colors, images, text, and sizes.
*   **Device Utility:** Utility functions for device-specific information and operations.
*   **HTTP Client:** Helper class for making HTTP requests.
**Supported Platforms:**
*   Android
*   iOS
*   Web (Firebase configuration included)
*   macOS
*   Windows
## Getting Started
### Installation
1.  **Clone the repository:**
    ```bash
    git clone <repository_url>
    ```
    
2.  **Navigate to the project directory:**
    ```bash
    cd amyr_app
    ```
    
3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
    
4.  **Configure Firebase:**
    *   Create a Firebase project in the Firebase Console.
    *   Register your Android, iOS, and Web apps with Firebase.
    *   Download the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) files and place them in the appropriate directories.
    *   The `firebase_options.dart` file is already configured with placeholder API keys and app IDs.  **Replace these with your actual Firebase credentials.**
5.  **Run the app:**
    ```bash
    flutter run
    ```
    
### Dependencies
The following dependencies are used in this project:
*   **flutter:** Flutter SDK
*   **iconsax:** Icon library
*   **cupertino\_icons:** Cupertino icons
*   **http:** HTTP client for making API requests
*   **intl:** Internationalization and localization support
*   **logger:** Logging library
*   **url\_launcher:** Launch URLs
*   **get:** State management and dependency injection
*   **flutter\_native\_splash:** Native splash screen
*   **smooth\_page\_indicator:** Page indicator widget
*   **flutter\_otp\_text\_field:** OTP text field widget
*   **firebase\_core:** Firebase core library
*   **firebase\_auth:** Firebase authentication library
## Code Structure
The project is organized into the following directories:
*   **amyr\_app/**: Root directory of the Flutter project.
    *   **lib/**: Contains the Dart source code.
        *   **features/**: Contains feature-specific code.
            *   **authentication/**: Authentication-related features (onboarding, login, OTP verification, welcome screen).
                *   **controllers/**: Authentication controllers (AuthControllers, OnboardingController, OtpController).
                *   **screens/**: Authentication screens (LoginScreen, OnboardingScreen, OtpScreen, WelcomeScreen).
            *   **Home/**: Home screen and navigation features.
                *   **controllers/**: Home controllers (Nav\_bar\_controller).
                *   **screens/**: Home screens (Home\_page).
        *   **utils/**: Utility classes and constants.
            *   **constants/**: Constants for colors, images, text, sizes, and API endpoints.
            *   **device/**: Device-related utility functions.
            *   **formatters/**: Data formatting functions.
            *   **helpers/**: Helper functions.
            *   **http/**: HTTP client.
            *   **theme/**: Custom theme definitions.
            *   **validators/**: Input validation functions.
        *   **app.dart**: Main application widget.
        *   **firebase\_options.dart**: Firebase configuration options.
        *   **main.dart**: Entry point of the application.
    *   **pubspec.yaml**: Flutter package configuration file.
    *   **splash.yaml**: Configuration for the native splash screen.
### Key Components
*   **AuthControllers:** Manages phone number authentication and OTP verification using Firebase Authentication.
*   **OnboardingController:** Controls the onboarding experience, managing page transitions and navigation.
*   **OtpController:** Verifies OTP entered by the user and navigates to the home screen upon successful verification.
*   **Nav\_bar\_controller:** Manages the bottom navigation bar state.
*   **KColors:** Defines the color palette for the application.
*   **KImages:** Defines the paths to image assets.
*   **KTexts:** Defines the text strings used throughout the application.
*   **KSizes:** Defines the sizes and spacing used in the UI.
*   **KDeviceUtils:** Provides utility functions for accessing device information and performing device-related operations.
*   **THttpHelper:** Provides helper methods for making HTTP requests.
*   **KAppTheme:** Defines the application's theme.
## API Documentation
The application uses the `THttpHelper` class to make HTTP requests.  The base URL is defined as `_baseUrl` within the `THttpHelper` class.
**Endpoints:**
The following helper methods are available:
*   **GET:** `THttpHelper.get(String endpoint)`
*   **POST:** `THttpHelper.post(String endpoint, dynamic data)`
*   **PUT:** `THttpHelper.put(String endpoint, dynamic data)`
*   **DELETE:** `THttpHelper.delete(String endpoint)`
**Example API Request (Hypothetical):**
```dart
Future<void> fetchData() async {
  try {
    final response = await THttpHelper.get('users');
    print(response);
  } catch (e) {
    print('Error: $e');
  }
}
```
**Note:** Replace `'users'` with the actual API endpoint. The `_baseUrl` in `lib/utils/http/http_client.dart` must also be updated to the correct API base URL.
## Contributing
Contributions to the AmyR app are welcome! Please follow these guidelines:
1.  **Fork the repository.**
2.  **Create a new branch for your feature or bug fix.**
3.  **Follow the existing code style and best practices.**
4.  **Write clear and concise commit messages.**
5.  **Submit a pull request with a detailed description of your changes.**
## FAQ
**Q: How do I configure Firebase?**
A: Follow the steps in the "Getting Started" section to create a Firebase project, register your apps, and configure the `firebase_options.dart` file.
**Q: How do I change the app's theme?**
A: Modify the `KAppTheme.lightTheme` and `KAppTheme.darkTheme` properties in `lib/utils/theme/theme.dart`.
