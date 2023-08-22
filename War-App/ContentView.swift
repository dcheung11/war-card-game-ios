//
//  ContentView.swift
//  War-App
//
//  Created by Damien Cheung on 2023-01-02.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0


    
    var body: some View {
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(
                    action: {
                        let playerRandom = Int.random(in: 2...14)
                        let cpuRandom = Int.random(in: 2...14)
                        playerCard = "card" + String(playerRandom)
                        cpuCard = "card" + String(cpuRandom)
                        if (playerRandom > cpuRandom) {
                            playerScore += 1
                        }
                        else if (cpuRandom > playerRandom) {
                            cpuScore += 1
                        }
                        else {
                            
                        }
                             
                            


                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .padding()
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
            }
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
