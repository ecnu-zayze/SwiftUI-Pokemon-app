//
//  AbilitiesBreedingCaptureView.swift
//  poke
//
//  Created by apple on 2020/2/28.
//  Copyright © 2020 zayze. All rights reserved.
//

import SwiftUI

struct AbilitiesBreedingCaptureView: View {
    var body: some View {
        VStack(spacing: 0) {
            DetailTitle(title: "Abilities")
            DetailAbilitiesView()
            DetailTitle(title: "Breeding")
            DetailBreedingView()
            DetailTitle(title: "Capture")
            DetaileCaptureView()
        }
        
    }
}

struct AbilitiesBreedingCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        AbilitiesBreedingCaptureView()
    }
}


