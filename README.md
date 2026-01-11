# 📚 Bookly App

Bookly is a Flutter application for browsing and searching books using the **Google Books API**.  


---

## 🚀 Features

- 📖 Display Featured Books
- 🔥 Display Best Seller Books
- 🔍 Search for books
- 📘 Book details screen
- 📚 Similar books suggestions
- 🌐 REST API integration
- ⚠️ Error handling and loading states
- 🎨 Clean and responsive UI

---

## 🧠 Architecture

The app is built using **Clean Architecture** principles:


├── core
│ ├── errors
│ ├── utils
│ ├── widgets
│ └── services
├── features
│ ├── home
│ │ ├── data
│ │ ├── domain
│ │ └── presentation
│ └── search
│ ├── data
│ ├── domain
│ └── presentation
└── main.dart


---

## 🧩 State Management

- **Flutter Bloc**
- **Cubit**

Each feature has its own Cubit to manage states such as:
- Loading
- Success
- Failure

---

## 🌐 API Used

- **Google Books API**

---

## 🛠️ Packages Used

- flutter_bloc
- dio
- go_router
- cached_network_image
- equatable
- get_it

---

## 📸 Screenshots

> Add app screenshots here

---

## ▶️ Getting Started

### Prerequisites
- Flutter SDK
- Dart
- Android Studio or VS Code

### Installation

1. Clone the repository:
   ```bash
   git clone  https://github.com/OmarNabilali/bookly_app.git
