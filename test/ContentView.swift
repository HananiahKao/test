//
//  ContentView.swift
//  test
//
//  Created by Hananiah on 2024/7/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var text : String = "Hello, world!"
    var body: some View {
        VStack {
            Model3D(named: "Map", bundle: realityKitContentBundle)
                .padding(.bottom, 0)
                .onTapGesture {
                    text = text == "" ? "Hello,world!" : ""
                }
            Text(text)
        }
        .padding()
    }
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}
