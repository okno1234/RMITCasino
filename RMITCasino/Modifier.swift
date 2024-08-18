//
//  Modifier.swift
//  RMITCasino
//
//  Created by user264150 on 8/17/24.
//

import Foundation
import SwiftUI

struct Shadow: ViewModifier {
    func body(content: Content)-> some View {
        content
            .shadow(color: Color("RMITblack"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct scoreNum: ViewModifier {
    func body(content: Content)-> some View {
        content
            .foregroundStyle(.white)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
}

struct scoreText: ViewModifier {
    func body(content: Content)-> some View {
        content
            .foregroundStyle(.white)
    }
}

struct scoreBackground: ViewModifier {
    func body(content: Content)-> some View {
        content
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
            .background(
                Capsule()
                    .foregroundColor(Color("RMITblack")))
    }
}
    
struct reelMod: ViewModifier {
    func body(content: Content)-> some View {
        content
            .scaledToFit()
            .frame(minWidth: 180, idealWidth: 200, maxWidth: 220, alignment: .center)
            .modifier(Shadow())
    }
}
    
struct appleMod: ViewModifier {
    func body(content: Content)-> some View {
        content
            .scaledToFit()
            .frame(minWidth: 50, idealWidth: 70, maxWidth: 90, alignment: .center)
            .modifier(Shadow())
    }
}
