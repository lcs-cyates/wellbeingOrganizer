//
//  ContentView.swift
//  wellbeingOrganizer
//
//  Created by Yates, Clea on 2020-12-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("How are you feeling today?")
                    .font(.title)
                    .padding()
                
                Button(action: {
                    //when enter is pressed go to screen 2
                    screen2()
                }, label: {
                    Text("Enter")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
