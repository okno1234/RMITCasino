//
//  ContentView.swift
//  RMITCasino
//
//  Created by user264150 on 8/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
            Gradient(colors: [Color("RMITblue"), Color("RMITpurple")]),
                           startPoint: .top, endPoint: .bottom)
            VStack{
                LogoView(name: "rmit-casino-welcome-logo")
                HStack{
                    HStack{
                        
                        Text("YOUR\nSCORE")
                            .modifier(scoreText())
                            .multilineTextAlignment(.leading)
                        Text("100")
                            .modifier(scoreNum())
                        
                    }
                    .modifier(scoreBackground())
                    Spacer()
                    HStack{
                        
                        Text("100")                            .modifier(scoreNum())
                        Text("HIGH?\nSCORE")
                            .modifier(scoreText())
                            .multilineTextAlignment(.trailing)
            
                    }
                    .modifier(scoreBackground())
                    
                }
                ZStack{
                    Image("reel")
                        .resizable()
                        .modifier(reelMod())
                    Image("apple")
                        .resizable()
                        .modifier(appleMod())
                }
                HStack{
                    ZStack{
                        Image("reel")
                            .resizable()
                            .modifier(reelMod())
                        Image("apple")
                            .resizable()
                            .modifier(appleMod())
                    }
                    ZStack{
                        Image("reel")
                            .resizable()
                            .modifier(reelMod())
                        Image("apple")
                            .resizable()
                            .modifier(appleMod())
                    }
                }
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
