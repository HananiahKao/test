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
            SphereView()
                .padding()
        }
        .windowStyle(.automatic)
//        .defaultSize(width: 1, height: 1080, depth: 1080, in: .centimeters)
        
    }
}
