//
//  NavigationDetail.swift
//  poke
//
//  Created by apple on 2020/2/26.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct NavigationDetail: View {
    let StatusDataList = StatusData
    let WeaknessDataList = WeaknessData
    @State var ShowStatus : Bool = false
    var body: some View {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing: 0) {
                    VStack(alignment: .leading) {
                        ForEach(StatusDataList) { item in
                            HStack(alignment: .center){
                                HStack {
                                    Text(item.StatusName).fontWeight(.bold).foregroundColor(Color("WaterRecColor"))
                                    Spacer()
                                }.frame(width: 53.0, height: 16.0)
                                Text("\(item.StatusNum)"[..<"\(item.StatusNum)".firstIndex(of:".")!]).foregroundColor(Color("StatusValueColor"))
                                Spacer()
                                    .frame(width: 10)
                                VStack(alignment: .leading) {
                                    ZStack.init(alignment: .leading) {
                                        Rectangle()
                                            .frame(width: 240, height: 8)
                                            .cornerRadius(4)
                                            .foregroundColor(Color("StatusRecColor"))
                                        LinearGradient(gradient: Gradient(colors: [Color("WaterColor2"), Color("WaterColor1")]), startPoint: .leading, endPoint: .trailing)
                                            .frame(width: self.ShowStatus ? 0:(240*item.Multiplier), height: 8)
                                            .cornerRadius(4)
                                            .animation(.default)
                                            .onAppear(){
                                                self.ShowStatus.toggle()
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.bottom, 13.0)
                    
                    DetailTitle(title: "Weaknesses")
                    
                    VStack(spacing: 5) {
                        ForEach(WeaknessDataList) { item in
                            HStack(spacing: 0){
                                HStack {
                                    RoundType(TypeName: item.WeeknessType[0])
                                    Group {
                                        Text("\(item.WeeknessValue[0])"[..<"\(item.WeeknessValue[0])".firstIndex(of:".")!] + "x")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("StatusValueMultiplierColor"))
                                            
                                    }
                                    .frame(width: 46.0, height: 27.0)
                                }
                                .frame(width: 122.0, height: 42.0)
                                
                                HStack {
                                    RoundType(TypeName: item.WeeknessType[1])
                                    Group {
                                        Text("\(item.WeeknessValue[1])"[..<"\(item.WeeknessValue[1])".firstIndex(of:".")!] + "x")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("StatusValueMultiplierColor"))
                                    }.frame(width: 46.0, height: 27.0)
                                }
                                .frame(width: 122.0, height: 42.0)
                                
                                HStack {
                                    RoundType(TypeName: item.WeeknessType[2])
                                    Group {
                                        Text("\(item.WeeknessValue[2])"[..<"\(item.WeeknessValue[2])".firstIndex(of:".")!] + "x")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                        .foregroundColor(Color("StatusValueMultiplierColor"))
                                    }.frame(width: 46.0, height: 27.0)
                                }
                                .frame(width: 122.0, height: 42.0)
                            }
                        }
                    }
                    .padding(.top, 7.0)
                    .padding(.bottom, 10.0)
                    
                    AbilitiesBreedingCaptureView()
                    DetailTitle(title: "Sprites")
                    DetailSprites()
                    
                }
                .padding(.bottom, 50.0)
            }
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail()
    }
}

struct Status : Identifiable {
    var id = UUID()
    var StatusName : String
    var StatusNum : CGFloat
    var Max : CGFloat{
        get{
            return 999
        }
    }
    var Multiplier: CGFloat{
        get{
            return StatusNum/Max
        }
    }
}

let StatusData  = [
    Status(StatusName: "HP", StatusNum: 619),
    Status(StatusName: "ATK", StatusNum: 424),
    Status(StatusName: "DEF", StatusNum: 843),
    Status(StatusName: "SATK", StatusNum: 235),
    Status(StatusName: "SDEF", StatusNum: 648),
    Status(StatusName: "SPD", StatusNum: 748)
]

struct Weakness : Identifiable {
    var id = UUID()
    var WeeknessType : Array<String>
    var WeeknessValue : Array<CGFloat>
}

let WeaknessData = [
    Weakness(WeeknessType: ["Bug","Dark","Dragon"], WeeknessValue: [1,2,3]),
    Weakness(WeeknessType: ["Electric","Fairy","Fight"], WeeknessValue: [3,2,1]),
    Weakness(WeeknessType: ["Fire","Flying","Ghost"], WeeknessValue: [1,3,2]),
    Weakness(WeeknessType: ["Grass","Ground","Ice"], WeeknessValue: [2,3,1]),
    Weakness(WeeknessType: ["Normal","Poison","Psychic"], WeeknessValue: [3,1,2]),
    Weakness(WeeknessType: ["Rock","Steel","Water"], WeeknessValue: [2,1,3])
]


struct DetailTitle: View {
    var title : String = "Abilities"
    var body: some View {
        Group {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .frame(height: 27.0)
                .foregroundColor(Color("WaterRecColor"))
        }.frame(height: 60.0)
    }
}

struct DetailAbilitiesView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Torrent")
                .font(.headline)
                .foregroundColor(Color("WaterRecColor"))
            Text("Powers up Water-type moves when the Pokémon is in trouble.")
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(Color("StatusValueMultiplierColor"))
                .frame(height: 43.0)
            Divider()
            HStack{
                Text("Rain Dish")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                Image(systemName: "eye.slash")
                    .scaleEffect(0.8)
                    .foregroundColor(Color("WaterRecColor"))
            }
            .frame(height: 20.0)
            Text("The Pokémon gradually regains HP in rain.")
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(Color("StatusValueMultiplierColor"))
                .frame(height: 20.0)
        }
        .padding(.horizontal, 25.0)
        .padding(.bottom, 16.0)
    }
}

struct DetailBreedingView: View {
    var body: some View {
        HStack(alignment: .top){
            VStack(spacing: 0){
                Text("Egg Group")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(width: 102.0, height: 20.0)
                Spacer()
                    .frame(height: 10.0)
                Group {
                    Text("Monster")
                        .font(.body)
                        .fontWeight(.light)
                        .foregroundColor(Color("StatusValueMultiplierColor"))
                        .frame(width: 102.0, height: 20.0)
                    Spacer()
                    .frame(height: 5.0)
                    Text("Water I")
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color("StatusValueMultiplierColor"))
                    .frame(width: 102.0, height: 20.0)
                }
//                .frame(width: 102.0, height: 45.0)
                
            }
            .frame(width: 112.0, height: 93.0)
            Divider()
            VStack(spacing: 5.0){
                Text("Hatch Time")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(width: 102.0, height: 20.0)
                Spacer()
                    .frame(height: 5.0)
                Text("5101 Steps")
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color("StatusValueMultiplierColor"))
                    .frame(width: 102.0, height: 20.0)
                Text("20 Cycles")
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color("StatusValueMultiplierColor"))
                    .frame(width: 102.0, height: 20.0)
            }.frame(width: 112.0, height: 93.0)
            Divider()
            VStack(spacing: 5.0){
                Text("Gender")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(width: 102.0, height: 20.0)
                Spacer()
                    .frame(height: 5.0)
                HStack{
                    VStack(spacing: 0.0){
                        Text("12.5%")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color("FemaleColor"))
                            .frame(width: 59.0, height: 20.0)
                        Spacer()
                            .frame(height: 5.0)
                        Text("87.5%")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color("MaleColor"))
                            .frame(width: 59.0, height: 20.0)
                    }
                    ZStack {
                        Circle()
                            .stroke(Color("MaleColor"),style: StrokeStyle(lineWidth: 3.94))
                            .frame(width: 40.0, height: 40.0)
                        Circle()
                            .trim(from:0.875, to: 1)
                            .stroke(Color("FemaleColor"),style:StrokeStyle(lineWidth: 3.94, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,0], dashPhase: 0))
                            .rotationEffect(Angle.init(degrees: -90))
                            .frame(width: 40.0, height: 40.0)
                        Image("MaleAndFemale")
                    }
                }
                
            }.frame(width: 112.0, height: 93.0)
        }
        .frame(height: 120.0)
        .padding(.vertical, 14.0)
    }
}

struct DetaileCaptureView: View {
    var body: some View {
        HStack(alignment: .top){
            VStack(spacing: 0.0){
                Text("Egg Group")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(width: 102.0, height: 20.0)
                Spacer()
                    .frame(height: 18.0)
                Text("Monster")
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color("StatusValueMultiplierColor"))
                    .frame(width: 102.0, height: 20.0)
            }
            .frame(width: 112.0, height: 93.0)
            Divider()
            VStack(spacing: 0.0){
                Text("Generation")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(width: 102.0, height: 20.0)
                Spacer()
                    .frame(height: 18.0)
                Text("Generation 1")
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color("StatusValueMultiplierColor"))
                    .frame(width: 102.0, height: 20.0)
            }
            .frame(width: 102.0, height: 93.0)
            Divider()
            VStack(spacing: 5.0){
                Text("Capture Rate")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(width: 105.0, height: 20.0)
                Spacer()
                    .frame(height: 5.0)
                HStack{
                    VStack(spacing: 0.0){
                        Text("45%")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color("MaleColor"))
                            .frame(width: 59.0, height: 20.0)
                    }
                    ZStack {
                        Circle()
                            .stroke(Color.gray.opacity(0.2),style: StrokeStyle(lineWidth: 3.94))
                            .frame(width: 40.0, height: 40.0)
                        Circle()
                            .trim(from:0.55, to: 1)
                            .stroke(Color("MaleColor"),style:StrokeStyle(lineWidth: 3.94, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,0], dashPhase: 0))
                            .rotationEffect(Angle.init(degrees: -90))
                            .frame(width: 40.0, height: 40.0)
                        Image("Capture Rate")
                    }
                }
                
            }.frame(width: 112.0, height: 93.0)
        }
        .frame(height: 120.0)
        .padding(.vertical, 14.0)
    }
}

struct DetailSprites: View {
    var body: some View {
        HStack{
            VStack{
                Spacer()
                    .frame(height: 12.0)
                Text("Normal")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(height: 20.0)
                Spacer()
                .frame(height: 10.0)
                Image("ShowSquirtle")
                .resizable()
                .frame(width: 100, height: 100)
            }.frame(width: 169, height: 152)
            VStack{
                Spacer()
                    .frame(height: 12.0)
                Text("Shiny")
                    .font(.headline)
                    .foregroundColor(Color("WaterRecColor"))
                    .frame(height: 20.0)
                Spacer()
                .frame(height: 10.0)
                Image("ShowSquirtle")
                .resizable()
                .frame(width: 100, height: 100)
            }.frame(width: 169, height: 152)
            
        }.frame(height: 152)
    }
}
