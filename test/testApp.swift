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
                .padding()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 810, height: 30, depth: 1080)
    }
}
