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
                    Spacer(minLength: 30)
                    
                    //Additional Facts
                ScrollView {
                    VStack{
                        Text("Additional Facts")
                            .font(.custom("Raleway-Bold", size: 30))
                            .foregroundColor(Color(red: 97/255, green: 137/255, blue: 133/255))
                            .padding(10)
                        
                        VStack(alignment: .leading, spacing: 20.0) {
                            Text("- 1 in 5 U.S. adults experience mental illness each year.")
                            Text("- 1 in 20 U.S. adults experience serious mental illness each year.")
                            Text("- 1 in 6 U.S. youth aged 6-17 experience a mental health disorder each year.")
                            Text("- 50% of all lifetime mental illness begins by age 14, and 75% by age 24.")
                            Text("- Suicide is the 2nd leading cause of death among people aged 10-14.")
                        }
                        .padding(.all, 25.0)
                        .frame(width: 375.0)
                        .foregroundColor(Color.white)
                        .font(.custom("Raleway-Regular", size: 17))
                        .background(Color.black)
                        .cornerRadius(40)

                        Text("Source: National Alliance on Mental Illness (www.nami.org/mhstats)")
                            .font(.custom("Raleway-Bold", size: 12))
                            .multilineTextAlignment(.center)
                            .padding(5)
                    }
                    Spacer(minLength: 30)
                    
                    //Resources
                    VStack{
                        Text("Resources")
                            .font(.custom("Raleway-Bold", size: 30))
                            .foregroundColor(Color(red: 97/255, green: 137/255, blue: 133/255))
                            .padding(5)
                    }
                    
                    //Websites to Destress
                    VStack(alignment: .center, spacing: 20.0) {
                        Text("Websites to Destress (Clickable!)")
                            .font(.custom("Raleway-Bold", size: 23))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        
                        Link("1. 10 Minute Mindfulness Meditation", destination: URL(string: "https://www.youtube.com/watch?v=ZToicYcHIOU")!)
                            .font(.custom("Raleway-Italic", size: 18))
                        Text("Tamara Levitt guides this 10 minute Daily Calm mindfulness meditation to powerfully restore and re-connect with the present.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Raleway-Regular", size: 15))

                        Link("2. Do Nothing for 2 Minutes", destination: URL(string:"http://www.donothingfor2minutes.com/")!)
                            .font(.custom("Raleway-Italic", size: 18))
                        Text("This site is designed to encourage you to spend two minutes doing nothing but relaxing. This site plays the sounds of waves and ocean birds while a timer is displayed, counting down two minutes. If your mouse or keyboard is touched, the timer will reset.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Raleway-Regular", size: 15))
                        
                        Link("3. Exhaler", destination: URL(string:"https://xhalr.com/")!)
                            .font(.custom("Raleway-Italic", size: 18))
                        Text("This site guides you through the process of breathing mindfully, focusing on taking deep breaths. This process has been proven to calm those in a state of agitation, and can be helpful to bookmark as a calming resource.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Raleway-Regular", size: 15))

                        Link("4. Sparx", destination: URL(string: "https://landing.sparx.org.nz/")!)
                            .font(.custom("Raleway-Italic", size: 18))
                        Text("SPARX is a free game designed to help young people dealing with depression and anxiety process their feelings, learn CBT (Cognitive Behavioral Therapy) skills, and learn and practice real-life skills in a fantasy world.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Raleway-Regular", size: 15))
                        

                    }
                    .padding(.all, 10.0)
                    .frame(width: 375.0)
                    .background(Color(red: 205/255, green: 137/255, blue: 135/255))
                    .foregroundColor(Color.black)
                    .cornerRadius(40)
                    
                    Spacer(minLength: 40)
                    
                    //Self Help Books
                    VStack{
                        Text("Self-Help Books")
                            .font(.custom("Raleway-Bold", size: 23))
                            .foregroundColor(Color.black)
                            .padding(.top, 20)
                        
                        VStack(alignment: .leading, spacing: 20.0) {
                            Text("1. 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones' - James Clear")
                            Text("2. 'The Body Keeps the Score: Brain, Mind, and Body in the Healing of Trauma - Bessel van der Kolk")
                            Text("3. 'The 7 Habits of Highly Effective People' - Stephen R. Covey")
                            Text("4. 'Awaken The Giant Within' - Tony Robbins")
                            Text("5. 'The Gifts of Imperfection' - Brené Brown")
                            
                        }
                        .padding(.all, 20.0)
                        .font(.custom("Raleway-Italic", size: 18))
                    }
                    .frame(width: 375.0)
                    .background(Color(red: 150/255, green: 187/255, blue: 187/255))
                    .cornerRadius(40)
                }
            }
            }   .navigationTitle("Home")
                .navigationBarHidden(true)
        }
    }
struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
