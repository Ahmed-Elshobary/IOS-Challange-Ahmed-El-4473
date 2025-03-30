Salla Task - System Design and Architecture

Overview

This repository contains the source code for a SwiftUI app that interacts with an API to fetch product details, brand themes, and store information. The app is designed using the MVVM pattern and adheres to Clean Architecture principles.

Key Components:
1. MVVM Pattern: Separates concerns by using ViewModels to mediate between views and the data layer.
2. Repository Pattern: Ensures separation of concerns for data sources (API, caching, etc.).
3. Use Cases: Business logic is centralized in use cases.
4. Networking Layer: Handles all network communication using URLSession and caching with URLCache.

Diagrams
1. Class Diagram:   
2. Component Diagram:   
3. Sequence Diagram:   

![image](https://github.com/user-attachments/assets/51d7a5f6-eb6c-4dc0-949a-d3ece0cb2ed0)

How to Run
1. Clone the repository.
2. Open the project in Xcode.
3. Run the app on a simulator or physical device.

Architecture Summary:
* Presentation Layer: SwiftUI Views and ViewModels.
* Domain Layer: Contains use cases like ProductUseCase and ThemeSettingsUseCase.
* Data Layer: Includes repositories and models, like ProductRepository and ThemeRepository.
* Networking Layer: Handles HTTP requests via NetworkManager.
  

Installation
Ensure you have the following tools:
* Xcode 13 or later.
* iOS 15+ for the deployment target.


