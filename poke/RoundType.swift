//
//  RoundType.swift
//  poke
//
//  Created by apple on 2020/2/25.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct RoundType: View {
    var TypeName : String = "Water"
    var TypeRadio : CGFloat = 40
    var body: some View {
        let multiplier = TypeRadio/40
        return Group {
            Group{
                Image(TypeName).scaleEffect(multiplier)
                
            }.frame(width: 30*multiplier, height: 30*multiplier)
                .background(LinearGradient(gradient: Gradient(colors: [Color("\(TypeName+"Color1")"),Color("\(TypeName+"Color2")")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(30*multiplier)
                .shadow(color: Color("\(TypeName+"Shadow")").opacity(0.7), radius: 5*multiplier, x: 0, y: 0)
        }.frame(width: TypeRadio, height: TypeRadio)
    }
}

struct RoundType_Previews: PreviewProvider {
    static var previews: some View {
        RoundType(TypeName: "Water", TypeRadio: 40)
    }
}
