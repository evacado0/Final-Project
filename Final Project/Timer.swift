//
//  Timer.swift
//  Final Project
//
//  Created by Eva Skarabot on 8/15/23.
//

import SwiftUI

struct Timer: View {
    var body: some View {
        VStack{
            NavigationStack{
                HStack {
                    Spacer()
                    Text("MindfulMe")
                        .font(.custom("Raleway-Bold", size: 35))
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Image("brain")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90.0)
                    Spacer()
                }
                HStack(spacing: 25.0){
                    NavigationLink(destination: ContentView())
                    {Text("Home")
                        .foregroundColor(Color.black)}
                    .font(.custom("Raleway-Regular", size: 18))
                    NavigationLink(destination: Journal())
                    {Text("Journal")
                        .foregroundColor(Color.black)}
                    .font(.custom("Raleway-Regular", size: 18))
                    NavigationLink(destination: Resources())
                    {Text("Resources")
                        .foregroundColor(Color.black)}
                    .font(.custom("Raleway-Regular", size: 18))
                    NavigationLink(destination: Timer())
                    {Text("Timer")
                        .foregroundColor(Color.black)}
                    .font(.custom("Raleway-Regular", size: 18))
                }
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }   .navigationTitle("Home")
                .navigationBarHidden(true)
        }
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        Timer()
    }
}
