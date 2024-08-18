//
//  LogoView.swift
//  RMITCasino
//
//  Created by user264150 on 8/17/24.
//

import SwiftUI

struct LogoView: View {
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(minWidth: 250, idealWidth: 280, maxWidth: 320)
            .modifier(Shadow())
    }
}

#Preview {
    LogoView(name: "rmit-casino-welcome-logo")
}
