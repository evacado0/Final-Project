//
//  Journal.swift
//  Final Project
//
//  Created by Eva Skarabot on 8/15/23.
//

import SwiftUI

struct Journal: View {
    @State private var text: String = ""
    var body: some View {
        VStack{
            NavigationStack{
                HStack {
                    Spacer()
                    Text("MindfulMe")
                        .font(.custom("Raleway-Bold", size: 35))
                        .foregroundColor(Color(red: 97/255, green: 137/255, blue: 133/255))
                    
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
                    NavigationLink(destination: TimerView())
                    {Text("Timer")
                        .foregroundColor(Color.black)}
                    .font(.custom("Raleway-Regular", size: 18))
                }
                Spacer()
                Spacer()
                Text("Use this space to write about anything!").font(.custom("Raleway-Bold", size: 30))
                    .foregroundColor(Color(red: 97/255, green: 137/255, blue: 133/255))
                    .multilineTextAlignment(.center)

                VStack {
                            TextEditor(text: $text)
                                .frame(minHeight: 100)
                                .padding()
                                .border(Color.black, width: 1)
                                .font(.custom("Raleway-Regular", size: 18))
                        }
                        .padding()
                
                Button("Clear") {
                    text = ""
                }.font(.custom("Raleway-Bold", size: 15))
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color(red: 97/255, green: 137/255, blue: 133/255))
                    .cornerRadius(40)
               
                
                
                Spacer()
                
            
            }   .navigationTitle("Home")
                .navigationBarHidden(true)
        }
    }
}

struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
