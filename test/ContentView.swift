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
            RealityView { content in
                let model = ModelEntity(
                    mesh: .generateSphere(radius: 0.025),
                    materials: [SimpleMaterial(color: .red,roughness: 0.5,isMetallic: false)])
                let model2 = ModelEntity(mesh: .generateCone(height: 0.1, radius: 0.008), materials: [SimpleMaterial(color: .red, roughness: 0.5, isMetallic: false)])
                content.add(model)
                content.add(model2)
                model2.setPosition([0,0,0.1], relativeTo: model)
            } /*attachments: {
                Button("button") {
                    
                }
            }*/

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
