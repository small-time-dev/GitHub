//
//  ContentView.swift
//  first test app
//
//  Created by Curtis Martin on 10/9/2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world! - lol")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
