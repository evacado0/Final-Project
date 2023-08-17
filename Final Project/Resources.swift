//
//  Resources.swift
//  Final Project
//
//  Created by Eva Skarabot on 8/15/23.
//

import SwiftUI

struct Resources: View {
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
                VStack{
                    Text("Fast Facts")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(30)
                    Text("- 1 in 5 U.S. adults experience mental illness each year")
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    Text("- 1 in 20 U.S. adults experience serious mental illness each year")
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    Text("- 1 in 6 U.S. youth aged 6-17 experience a mental health disorder each year")
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    Text("- 50% of all lifetime mental illness begins by age 14, and 75% by age 24")
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    Text("- Suicide is the 2nd leading cause of death among people aged 10-14")
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    Text("source: National Alliance on Mental Illness (www.nami.org/mhstats)")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(5)
                    Text("Resources")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(30)
                }
            }   .navigationTitle("Home")
                .navigationBarHidden(true)
        }
    }
}
struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
