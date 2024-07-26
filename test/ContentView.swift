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
    @State var show : Bool = true
    var body: some View {
        VStack {
            DetailView()
            Model3D(named: "mapPin", bundle: realityKitContentBundle) { model in
                model.model?
                    .offset(x: 100)
            }
            .onTapGesture {
                show = true
            }
            .popover(isPresented: $show) {
                DetailView()
            }
            Model3D(named: "Map", bundle: realityKitContentBundle) { model in
                model.model?
                    .resizable()
                    .frame(depth: 1080)
                    .frame(width: 810,height: 10)
            }
            .padding(.bottom,0)
        }
        .padding(.bottom,0)
    }
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}
