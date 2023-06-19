//
//  ContentView.swift
//  cardGame
//
//  Created by Hari on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerCard = "card6"
   @State var cpuCard = "card9"
   @State var playerScore = 0
   @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
          
        VStack{
            Spacer()
            Image("logo")
            Spacer()
            
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image (cpuCard)
                Spacer()
            }
            Spacer()
         
            
            Button(action: {
                
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                playerCard = "card\(playerRand)"
                cpuCard = "card\(cpuRand)"
                
                
                
                
                if(playerRand > cpuRand){
                    playerScore += 1
                }
               else if ( playerRand == cpuRand){
                    
                }
                else{
                    cpuScore += 1
                }
                
            }, label: {
                HStack{
                   Image("dealbutton")
                       
                } .foregroundColor(Color.white)
            })


            Spacer()
            HStack{
                Spacer()
                VStack{
                    
                    Text("Player")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    Text(String(playerScore))
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .padding(.top, 4.0)
                        
                      
               
                }
                Spacer()
                VStack{
                
                    Text("CPU")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    Text(String(cpuScore))
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .padding(.top, 4.0)
               
                }
                Spacer()
            }
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
