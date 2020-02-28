//
//  ContentView.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let CellDataList = CellData
    @State private var ShowDetail : Bool = false
    var body: some View {
        NavigationView {
            VStack {
                List(CellDataList) { item in
                    NavigationLink(destination: NavigationDetail()){
                        PokeCell(PokeName: item.PokeName, PokeNum: item.PokeNum, TypeName1: item.TypeName1, TypeName2: item.TypeName2)
                            .onTapGesture {
                                self.ShowDetail.toggle()
                        }
                    }
//                    {
//                           NavigationLink(destination: ) {  }
//                           }
//                .sheet(isPresented: self.$ShowDetail){
//                    PokeDetailView()
//                }
                }
            }
//            .blur(radius: ShowDetail ? 20 : 0)
//            .animation(.easeInOut)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PokeCell: View {
    var PokeName : String = "Squirtle"
    var PokeNum : Int = 7
    var TypeName1 : String = "Water"
    var TypeName2 : String = "Water"
    var body: some View {
        return HStack {
            Image(PokeName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(PokeName)
                    .foregroundColor(Color("CellTitleColor"))
                    .font(.headline)
                    .fontWeight(.medium)
                    .lineLimit(1)
                Text("#\(PokeNum)")
                    .foregroundColor(Color("CellNumColor"))
                    .font(.subheadline)
                    .lineLimit(1)
            }
            Rectangle().foregroundColor(.white)
            RoundType(TypeName: TypeName1, TypeRadio: 40)
            Spacer()
                .frame(width: 10.0)
            RoundType(TypeName: TypeName2, TypeRadio: 40)
        }
        .frame(height: 70)
    }
}

struct Cell : Identifiable {
    var id = UUID()
    var PokeName : String
    var TypeName1 : String
    var TypeName2 : String
    var PokeNum : Int
}

let CellData = [
    Cell(PokeName: "Bulbasaur", TypeName1: "Grass", TypeName2: "Poison", PokeNum: 1),
    Cell(PokeName: "Ivysaur", TypeName1: "Grass", TypeName2: "Poison", PokeNum: 2),
    Cell(PokeName: "Venusaur", TypeName1: "Grass", TypeName2: "Poison", PokeNum: 3),
    Cell(PokeName: "Charmander", TypeName1: "NoType", TypeName2: "Fire", PokeNum: 4),
    Cell(PokeName: "Charmeleon", TypeName1: "NoType", TypeName2: "Fire", PokeNum: 5),
    Cell(PokeName: "Charizard", TypeName1: "Fire", TypeName2: "Flying", PokeNum: 6),
    Cell(PokeName: "Squirtle", TypeName1: "NoType", TypeName2: "Water", PokeNum: 7),
    Cell(PokeName: "Wartotle", TypeName1: "NoType", TypeName2: "Water", PokeNum: 8)
]


//struct PokeDetailView : View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//
//    var body: some View{
//        ZStack {
//            Group{
//                HStack {
//                    Spacer()
//                    VStack {
//                        Spacer()
//                    }
//                    Spacer()
//                }
//            }.background(LinearGradient(gradient: Gradient(colors: [Color("WaterColor1"),Color("WaterColor2")]), startPoint: .leading, endPoint: .trailing))
//                .edgesIgnoringSafeArea(.bottom)
//
//            HStack {
//                Button(action: {
//                    self.presentationMode.wrappedValue.dismiss()
//                }) {
//                Image(systemName: "chevron.down")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height:21)
//                    .foregroundColor(.white)
//                }
//                Spacer()
//                Text("detail")
//            }
//        }
//    }
//}
