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
        
        
    //Header
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
        
    //Nav Bar
        NavigationStack{
            HStack(spacing: 70.0){
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
        }
        
        //Middle Area
        HStack {
            Text("We know school can be hard. MindfulMe solves that.")
                .font(.custom("Raleway-Bold", size: 33))
            
            Spacer()
            
            Image("stressed")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(100)
        }
        Spacer()
          
        //Fast Facts
          Text("Fast Facts")
            .font(.custom("Raleway-Bold", size: 28))
            .foregroundColor(Color.blue)
            .padding(30)
          
          Text(factText)
              .multilineTextAlignment(.center)
              .font(.custom("Raleway-Regular", size: 20))
            
        Button("Click me!"){
          let fact = randomFacts.randomElement()!
          factText = fact
        }.buttonStyle(.borderedProminent)
            .font(.custom("Raleway-Regular", size: 15))
          .padding()
    }
    .padding()
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}







