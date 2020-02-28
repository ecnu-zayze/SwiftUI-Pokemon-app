//
//  RectangleType.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct RectangleType: View {
    var TypeName : String = "Bug"
    var body: some View {
        Group {
            ZStack {
                HStack{
                    Image(TypeName)
                    Spacer()
                }
                .padding(.leading, 14.0)
                Text(TypeName.uppercased())
                    .foregroundColor(.white)
                    .frame(width: 79, height: 16)
                    .offset(x: 8)
            }.frame(width: 110.0, height: 30.0)
                .background(Color("\(TypeName+"RecColor")"))
                .cornerRadius(104)
                .shadow(color: Color("\(TypeName+"RecColor")").opacity(0.7) ,radius: 5)
        }.frame(width: 120, height: 40)
    }
}

struct RectangleType_Previews: PreviewProvider {
    static var previews: some View {
        RectangleType(TypeName: "Bug")
    }
}
