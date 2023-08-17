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
            }
        }

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
