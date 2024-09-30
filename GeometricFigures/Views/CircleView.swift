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
        VStack(spacing: 10) {
            Image("Circle")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Radius")
                .font(.title3)
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
            
            Text("\(currentCircle.radius.formatted())")
                                    
            Divider()
            
            Text("Diameter")
                .font(.title3)
                .bold()
            Text("\(currentCircle.diameter.formatted()) units")

            Text("Area")
                .font(.title3)
                .bold()
            Text("\(currentCircle.area.formatted()) square units")

            Text("Circumference")
                .font(.title3)
                .bold()

            Text("\(currentCircle.circumference.formatted()) units")
            
            Spacer()

        }
        .padding()
    }
}

#Preview {
    CircleView()
}
