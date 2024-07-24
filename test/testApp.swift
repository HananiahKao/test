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
        .defaultSize(width: 200, height: 200, depth: 200, in: .meters)
        
    }
}
