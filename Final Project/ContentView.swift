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
                Image("brain")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                Text("MindfulMe")
                    .font(.largeTitle)
                
            Spacer()
            }
            Spacer()
            
            
            
            
            //Text("blurb: Did you know, according to mayoclinichealthsystem.org, Since the start of the COVID-19 pandemic, rates of anxiety and depression among college students have increased substantially. A recent study found that 1 in 3 college students experiences significant depression and anxiety. Our app provides students with resources for dealing with mental health problems and limiting stress from school.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
