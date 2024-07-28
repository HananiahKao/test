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
    @State var show : Bool = false
    var body: some View {
        VStack {
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
            mapPin(color: .blue)
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

struct mapPin: View {
    @State var color : UIColor
    var body: some View {
        RealityView { content in
            let model = ModelEntity(
                mesh: .generateSphere(radius: 0.025),
                materials: [SimpleMaterial(color: color,roughness: 0.5,isMetallic: false)])
            let model2 = ModelEntity(mesh: .generateCone(height: 0.1, radius: 0.008), materials: [SimpleMaterial(color: color, roughness: 0.5, isMetallic: false)])
            content.add(model)
            content.add(model2)
            model2.setPosition([0,-0.07,0], relativeTo: model)
            model2.setOrientation(simd_quatf(ix: 1, iy: 0, iz: 0, r: 0), relativeTo: model)
        }
        .onTapGesture {
            color = .red
        }
    }
}
