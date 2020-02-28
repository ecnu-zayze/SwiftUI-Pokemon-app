//
//  TabBar.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
        ContentView()
            .tabItem {
                VStack{
                    Image("PokemonTab")
                        .resizable()
                        .frame(width: 29, height: 29)
                    Text("Pokemon")
                        .font(.headline)
                }
            }.tag(1)
        MovesView()
            .tabItem {
                VStack{
                    Image("MovesTab")
                        .resizable()
                        .frame(width: 26, height: 26)
                    Text("Moves")
                        .font(.headline)
                }
            }.tag(2)
        BallsView()
            .tabItem {
                VStack{
                    Image("BallsTab")
                        .resizable()
                        .frame(width: 28, height: 28)
                    Text("Balls")
                        .font(.headline)
                }
            }.tag(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
