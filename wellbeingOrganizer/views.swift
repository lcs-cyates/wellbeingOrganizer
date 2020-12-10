//
//  screen2.swift
//  wellbeingOrganizer
//
//  Created by Yates, Clea on 2020-12-05.
//

import SwiftUI

struct ScreenTwoView: View {
    @Binding var GoToScreen2: Bool
    @State private var dailyGoal = ""
    @State private var weeklyGoal = ""
    @State private var longTermGoal = ""
    @State private var addDailyGoal: [String] = []
    @State private var addWeeklyGoal: [String] = []
    @State private var addLongTermGoal: [String] = []
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            NavigationView{
                Form{
                    Section{
                        Text("Daily")
                        TextField("Add a goal", text: $dailyGoal)
                        Button(action:{
                            addDailyGoal.append(dailyGoal)
                            print(addDailyGoal)
                            dailyGoal = ""
                            saveDailyGoal()
                        },label: {
                            Text("Save")
                        })
                    }
                    Section{
                        Text("Weekly")
                        TextField("Add a goal", text: $weeklyGoal)
                        Button(action:{
                            addWeeklyGoal.append(weeklyGoal)
                            print(addWeeklyGoal)
                            weeklyGoal = ""
                            saveWeeklyGoal()
                        },label: {
                            Text("Save")
                        })
                    }
                    Section{
                        Text("Long Term")
                        TextField("Add a goal", text: $longTermGoal)
                        Button(action:{
                            addLongTermGoal.append(longTermGoal)
                            print(addLongTermGoal)
                            longTermGoal = ""
                            saveLongTermGoal()
                        },label: {
                            Text("Save")
                        })
                    }
//                    Section(header: Text("My favourite colours are...")) {
//                                        // NOTE: If items in a list will be removed later, they really should be made unique. See: https://www.hackingwithswift.com/books/ios-swiftui/working-with-identifiable-items-in-swiftui
//                                        List(addDailyGoal, id: \.self) { colour in
//                                            Text(colour)
                }
            }
        }.navigationBarTitle(Text("Goals"))
    }
    func saveDailyGoal() {
        addDailyGoal.append(dailyGoal)
        print(addDailyGoal)
        dailyGoal = ""
    }
    func saveWeeklyGoal() {
        addWeeklyGoal.append(weeklyGoal)
        print(addWeeklyGoal)
        weeklyGoal = ""
    }
    func saveLongTermGoal() {
        addLongTermGoal.append(longTermGoal)
        print(addLongTermGoal)
        longTermGoal = ""
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
    
