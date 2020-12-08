//
//  screen2.swift
//  wellbeingOrganizer
//
//  Created by Yates, Clea on 2020-12-05.
//

import SwiftUI

struct ScreenTwoView: View {
    @Binding var GoToScreen2: Bool
    var body: some View {
        Text("Goals")
    }
}

struct ScreenOneView: View {
    @Binding var GoToScreen2: Bool
    @State var textBox : String = ""

    var body: some View {
        VStack {
            Text("How are you feeling today?")
                .font(.title)
                .padding()
            TextField("Text", text: $textBox)
                .padding()
            
                Button(action: {
                    withAnimation{
                    //when enter is pressed go to screen 2
                        GoToScreen2 = true
                    } 
                    
                }) {
                    Text("Enter")
                }
            }

        }
    }
