//
//  ContentView.swift
//  Final Project
//
//  Created by Eva Skarabot on 8/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Text("MindfulMe")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
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
            Spacer()
            
            
        Text("Did you know that 1 in 3 college students experience significant depression and anxiety?")
            
            //MindfulMe provides students with resources for dealing with mental health problems and limiting stress from school.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
