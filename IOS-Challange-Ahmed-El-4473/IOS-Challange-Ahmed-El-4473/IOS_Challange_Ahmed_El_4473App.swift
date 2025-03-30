//
//  IOS_Challange_Ahmed_El_4473App.swift
//  IOS-Challange-Ahmed-El-4473
//
//  Created by ahmed elshobary on 09/09/2024.
//

import SwiftUI

@main
struct IOS_Challange_Ahmed_El_4473App: App {
    let persistenceController = PersistenceController.shared
    let networkManager = NetworkManager.shared
    
    var body: some Scene {
        WindowGroup {
            BrandDetailView(
                fetchStoreDetails: {
                    do {
                        return try await StoreDetailsUseCase(repository: StoreDetailsRepository()).execute()
                    } catch {
                        print("Error fetching store details: \(error)")
                        return nil
                    }
                },
                fetchProducts: { page in
                    do {
                        let productResponse = try await ProductUseCase(repository: ProductRepository()).execute(page: page)
                        return productResponse.data  // Return the array of ProductModel
                    } catch {
                        print("Error fetching products: \(error.localizedDescription)")
                        return []  // Return an empty array in case of failure
                    }
                },
                fetchThemeSettings: {
                    do {
                        try await ThemeSettingsUseCase(repository: ThemeRepository()).execute()
                    } catch {
                        print("Error fetching theme settings: \(error)")
                    }
                }
            )
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
