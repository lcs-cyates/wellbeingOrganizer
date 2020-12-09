//
//  screen2.swift
//  wellbeingOrganizer
//
//  Created by Yates, Clea on 2020-12-05.
//

import SwiftUI

struct ScreenTwoView: View {
    @Binding var GoToScreen2: Bool
    @State private var addDailyGoal = ""
    @State private var addWeeklyGoal = ""
    @State private var addLongTermGoal = ""
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            NavigationView{
                Form{
                    Section{
                        Text("Daily")
                        TextField("Add a goal", text: $addDailyGoal)
                    }
                    Section{
                        Text("Weekly")
                        TextField("Add a goal", text: $addWeeklyGoal)
                    }
                    Section{
                        Text("Long Term")
                        TextField("Add a goal", text: $addLongTermGoal)
                    }
                }
            }
        }.navigationBarTitle(Text("Goals"))
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

//struct ScreenTwoView: View {
//    var body: some View {
//        ZStack{
//            Color.yellow
//        }
//    }
//}
