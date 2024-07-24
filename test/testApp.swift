//
//  testApp.swift
//  test
//
//  Created by Hananiah on 2024/7/22.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width :6, height: 6, depth: 6, in: .centimeters)
    }
}
