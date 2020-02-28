//
//  BallsView.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct BallsView: View {
    let BallDataList = BallData
    var body: some View {
        List(BallDataList) { item in
            HStack {
                Group {
                    Image(item.BallName)
                }.frame(width: 40, height: 40)
                Text(item.BallName)
                    .font(.title)
                    .fontWeight(.light)
                Spacer()
                Text(String(item.BallPrice))
                    .font(.headline)
                    .foregroundColor(Color("BallPriceColor"))
                Image("price")
            }.padding(.leading, 5.0).frame(height: 70.0)
        }
    }
}

struct BallsView_Previews: PreviewProvider {
    static var previews: some View {
        BallsView()
    }
}

struct Ball : Identifiable {
    var id = UUID()
    var BallName : String
    var BallPrice : Int
}

let BallData = [
    Ball(BallName: "Master Ball", BallPrice: 2500),
    Ball(BallName: "Ultra Ball", BallPrice: 1200),
    Ball(BallName: "Great Ball", BallPrice: 600),
    Ball(BallName: "Poke Ball", BallPrice: 600),
    Ball(BallName: "Safari Ball", BallPrice: 0),
    Ball(BallName: "Net Ball", BallPrice: 1000),
    Ball(BallName: "Dive Ball", BallPrice: 1000),
    Ball(BallName: "Nest Ball", BallPrice: 1000)
]
