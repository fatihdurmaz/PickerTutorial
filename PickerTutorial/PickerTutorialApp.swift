//
//  PickerTutorialApp.swift
//  PickerTutorial
//
//  Created by Fatih Durmaz on 8.02.2024.
//

import SwiftUI

@main
struct PickerTutorialApp: App {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
