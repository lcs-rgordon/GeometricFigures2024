//
//  CircleView.swift
//  GeometricFigures
//
//  Created by Russell Gordon on 2024-09-30.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    
    // Describes circle the user is controlling through the UI
    @State var currentCircle = Circle(radius: 1.0)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Image("Circle")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Radius")
                .bold()
            
            HStack {
                Text("1")
                Slider(
                    value: $currentCircle.radius,
                    in: 1...100,
                    step: 1
                )
                Text("100")
            }
            .padding()
            
            Text("\(currentCircle.radius.formatted())")
                        
            Spacer()
        }
    }
}

#Preview {
    CircleView()
}
