//
//  ContentView.swift
//  Final Project
//
//  Created by Eva Skarabot on 8/14/23.
//

import SwiftUI
struct ContentView: View {
  @State private var factText = "Click to generate some random facts about mental health!"
  @State private var imageBlank = "blank"
  var body: some View {
      
    let randomFacts = ["1 in 3 college students experience significant depression and anxiety.", "150% of middle school students reported feeling stressed over academics all the time, while 75% of high school students felt the same. College students feel stress as well, with 45% saying they felt that way at a higher-than-average rate.", "Recent studies show that the COVID pandemic, bullying, and school shootings are significant factors leading to stress among high school and middle school students.", "51% of students in university list academics as the primary cause of trauma, viewing it as difficult for them to cope with."]
      
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
      VStack {
        Spacer()
        Image("fact1")
          .resizable(resizingMode:.stretch)
          .aspectRatio(contentMode: .fit)
          .cornerRadius(20)
        Spacer()
          Text("Fast Facts")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.blue)
            .padding(30)
          
          Text(factText)
              .multilineTextAlignment(.center)
            
        Button("Click me!"){
          var fact = randomFacts.randomElement()!
          factText = fact
        }.buttonStyle(.borderedProminent)
          .padding()
      }
      //MindfulMe provides students with resources for dealing with mental health problems and limiting stress from school.“)
    }
    .padding()
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}







