# Turbo Az

This project is a modern Flutter application designed with a robust architecture to ensure scalability and an excellent developer experience.

## 🚀 Key Features

- 📂 **File-Based Routing:** Powered by the `go_router_sugar` package, navigation in the application is strictly file-based. As you create new pages and directories within the designated paths, routes are automatically generated to mirror your file structure.
- 🛡️ **Type-Safe:** Routing and navigation processes are completely Type-Safe. This approach prevents route-related runtime errors like missing paths or incorrect parameter passing by catching them safely at compile-time.
- 🎨 **Centralized Design System:** All colors, typography, and styling components across the app are governed by a single, comprehensive configuration file.

## 🛠 Setup and Running

1. Install project dependencies:
```bash
flutter pub get
```

2. Run `build_runner` for routing and code generation:
```bash
dart run build_runner build --delete-conflicting-outputs
```

3. Run the application:
```bash
flutter run
```

## 🗂 Structure

The application screens reside entirely within the `lib/pages/` directory to adhere to the File-Based Routing layout. Readily available core pages include:
- **Login Page**
- **Register Page**
- **Forgot Password Page**
- **Home Page**

> **Team Note:** For detailed explanations on routing mechanisms, arguments, and page creation standards, please refer to the team's routing workflow documentation.
