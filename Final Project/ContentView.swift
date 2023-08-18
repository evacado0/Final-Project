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
        NavigationStack{
            let randomFacts = ["1 in 3 college students experience significant depression and anxiety.", "150% of middle school students reported feeling stressed over academics all the time, while 75% of high school students felt the same. College students feel stress as well, with 45% saying they felt that way at a higher-than-average rate.", "Recent studies show that the COVID pandemic, bullying, and school shootings are significant factors leading to stress among high school and middle school students.", "51% of students in university list academics as the primary cause of trauma, viewing it as difficult for them to cope with."]
            
            //Header
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
            
            //Nav Bar
            HStack(spacing: 25.0){
                Text("Home")
                    .foregroundColor(Color.black)
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
                .font(.custom("Raleway-Regular", size: 18))}
            Spacer()
            
            //Middle Area
            ScrollView {
                VStack {
                    Spacer(minLength: 50)
                    HStack {
                        Text("We know school can be hard. MindfulMe solves that.")
                            .font(.custom("Raleway-Bold", size: 33))
                        
                        Spacer()
                        
                        Image("stressed")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(100)
                    }
                    Spacer(minLength: 50)
                    
                    //Fast Facts
                    Text("Fast Facts")
                        .font(.custom("Raleway-Bold", size: 28))
                        .foregroundColor(Color(red: 97/255, green: 137/255, blue: 133/255))
                        .padding(30)
                    
                    VStack {
                        Text(factText)
                            .multilineTextAlignment(.center)
                            .font(.custom("Raleway-Regular", size: 20))
                    }
                    Spacer(minLength: 40)
                    
                    Button("Tap me!"){
                        let fact = randomFacts.randomElement()!
                        factText = fact
                    }
                        .font(.custom("Raleway-Bold", size: 15))
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(red: 97/255, green: 137/255, blue: 133/255))
                        .cornerRadius(40)
                }
                .padding()
                .navigationTitle("Home")
                .navigationBarHidden(true)
            }
        }
    }
    }
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}







