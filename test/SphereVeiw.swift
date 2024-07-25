//
//  SphereVeiw.swift
//  test
//
//  Created by Hananiah on 2024/7/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SphereView: View {
    var body: some View {
        RealityView { content in
            let model = ModelEntity(
                mesh: .generateSphere(radius: 0.2),
                         materials: [SimpleMaterial(color: .white, isMetallic: true)])
            let model2 = ModelEntity(
                mesh: .generateBox(size: 0.3),
                         materials: [SimpleMaterial(color: .white, isMetallic: false)])
            content.add(model)
            content.add(model2)
        }
        Model3D(named: "mapPin",bundle: realityKitContentBundle) { Model in
            Model.model?
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview(windowStyle: .volumetric){
    SphereView()
}
