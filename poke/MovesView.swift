//
//  MovesView.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct MovesView: View {
    let MoveDataList = MoveData
    var body: some View {
        VStack {
            List(MoveDataList){ item in
                HStack {
                    Text(item.MoveName)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                    Spacer()
                    RoundType(TypeName: item.TypeName, TypeRadio:40)
                }.frame(height: 70.0)
            }.padding(.leading, 10.0)
        }
    }
}

struct MovesView_Previews: PreviewProvider {
    static var previews: some View {
        MovesView()
    }
}

struct Move:Identifiable {
    var id = UUID()
    var MoveName : String
    var TypeName : String
}

let MoveData = [
    Move(MoveName: "Withdraw", TypeName: "Water"),
    Move(MoveName: "Aqua Tail", TypeName: "Water"),
    Move(MoveName: "Water Gun", TypeName: "Water"),
    Move(MoveName: "Bubble", TypeName: "Water"),
    Move(MoveName: "Nuzzle", TypeName: "Electric"),
    Move(MoveName: "Thunder Shock", TypeName: "Electric"),
    Move(MoveName: "Thunder Wave", TypeName: "Electric"),
    Move(MoveName: "Spark", TypeName: "Electric"),
    Move(MoveName: "Ember", TypeName: "Fire"),
    Move(MoveName: "Fire Fang", TypeName: "Fire"),
    Move(MoveName: "Flamethrower", TypeName: "Fire"),
    Move(MoveName: "Fire Spin", TypeName: "Fire"),
    Move(MoveName: "Bite", TypeName: "Dark"),
    Move(MoveName: "Tackle", TypeName: "Normal"),
    Move(MoveName: "Tail Whip", TypeName: "Normal"),
    Move(MoveName: "Rapid Spin", TypeName: "Normal")
]
