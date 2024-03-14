//
//  Mercury.swift
//  SpaceApp
//
//  Created by Given Mahlangu on 2024/01/11.
//

// Mercury.swift

import SwiftUI
import RealityKitContent
import RealityKit

struct Mercury: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isHovered = false
    var planet: Planets = .Mercury
    
    
    
    

    
    var body: some View {
        
        
        ZStack {
            // Your background and other UI elements here
            
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(.white)
                        .font(.title)
                }
                Spacer()
                
                HStack {
                    ScrollView{
                        Text("Mercury")
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                            .padding(.top, 50)
                            .foregroundColor(.white)
                        
                        HStack{
                            
                            /*Model3D(named: "Mercury", bundle: realityKitContentBundle)
                                .padding(.bottom, 50)
                                .padding(.trailing, 30)
                                .padding(.leading, 50)*/
                            Model3D(named: "Earth") { model in
                                 model
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .scaleEffect(0.4)
                                     .phaseAnimator([false, true]) { Planet, threeDYRotate in
                                         Planet
                                             .rotation3DEffect(.degrees(threeDYRotate ? 0 : 5 * 20), axis: (x: 0, y: 1, z: 0))
                                     } animation: { threeDYRotate in
                                             .linear(duration: 10).repeatForever(autoreverses: false)
                                     }
                             } placeholder: {
                                 ProgressView()
                             }
                            
                            
                            
                            Text("Mercury is the first planet from the Sun and the smallest in the Solar System. It is a terrestrial planet with a heavily cratered surface due to overlapping impact events. These features are well preserved since the planet has no geological activity and an extremely tenuous atmosphere called an exosphere.")
                                .padding(.trailing, 30)
                        }
                        Text("Mercury Facts")
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                            .padding(.top, 50)
                            .foregroundColor(.white)
                        Text("Explore the planets in our solar system.")
                        
                        
                    }
                    
                    // Additional content specific to Mercury
                }
            }
            
        
        }
        
    }
}


#Preview {
    Mercury()
}
