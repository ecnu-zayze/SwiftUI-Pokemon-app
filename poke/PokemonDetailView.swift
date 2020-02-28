//
//  PokemonDetailView.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct PokemonDetailView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Spacer().background(LinearGradient(gradient: Gradient(colors: [Color("WaterColor1"),Color("WaterColor2")]), startPoint: .leading, endPoint: .trailing))
                    .edgesIgnoringSafeArea(.vertical)
                VStack{
                    HStack {
                        Button(action: {
                            //
                        }) {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height:17)
                            .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding(.leading, 16.0)
                    .frame(height: 21)
                        Spacer()
                            .frame(height: 141.0)
                    ZStack {
                        
                        VStack{
                            Spacer()
                                .frame(height: 57.0)
                            HStack {
                                Spacer()
                                Text("Squirtle")
                                    .tracking(1.5)
                                    .font(.largeTitle)
                                    .fontWeight(.regular)
                                    .lineLimit(1)
                                    .frame(height: 55)
                                Spacer()
                            }
                            Spacer()
                                .frame(height: 5.0)
                            RectangleType(TypeName: "Water")
                            Spacer()
                            .frame(height: 5.0)
                            Text("Squirtle's shell is not merely used for protection.The shell’s rounded shape and the grooves on its surface help minimize resistance in water, enabling this pokemon to swim at high speed.")
                                .font(.subheadline)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .frame(width: 350, height: 115)
                                
                            Spacer()
                        }.background(Color.white)
                            .cornerRadius(48)
                        
                        Image("ShowSquirtle")
                        .resizable()
                            .frame(width: 170, height: 170)
                            .offset(y: -162-233)
                    }
                }
            }
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView()
    }
}
