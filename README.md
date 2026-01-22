# Elevate Flutter Task

A Flutter e-commerce app showcasing the **Home Screen** feature with **Cubit** for state management.

---

## Features

- Home Screen with shimmer loading & product list
- Wishlist toggle on product cards
- Reviews display
- State management using **Cubit**
- Clean Architecture:
  - **Data Layer:** DataSource, Model, Repository
  - **Domain Layer:** Entities, Repository Interface, UseCase
  - **Presentation Layer:** Screens, Cubit, Widgets
- Networking: Dio, error handling, Result wrapper
- Dependency Injection (DI) implemented
- Responsive UI with **flutter_screenutil**

---

## Screenshots

| Shimmer Loading | Home Screen |
|-----------------|-------------|
|<img width="1080" height="2400" alt="Screenshot_1769090964" src="https://github.com/user-attachments/assets/10b68e1a-c2e9-4a18-b795-5a050310aba7" />|<img width="1080" height="2400" alt="Screenshot_1769090972" src="https://github.com/user-attachments/assets/09f67d63-dbf5-4cf3-8724-b1c18ed38039" />|

---

## Getting Started

```bash
git clone <repo-url>
cd elevate_flutter_task
flutter pub get
flutter run
```
## Folder Structure

```
lib/
 ├─ core/          # Theming, helpers, networking, usecase
 ├─ features/
 │   └─ home/
 │       ├─ data/
 │       ├─ domain/
 │       └─ presentation/
 └─ main.dart
```


ذذ
