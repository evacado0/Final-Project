//
//  Final_ProjectApp.swift
//  Final Project
//
//  Created by Eva Skarabot on 8/14/23.
//

import SwiftUI
@main
struct Final_ProjectApp: App {
    init() {
        printFonts()
    }

    func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        
        for familyName in fontFamilyNames {
            print("------")
            print("Font Family Name -> [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font names ==> [\(names)]")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
