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
    private let dailyGoalsKey = "addDailyGoal"
    private let weeklyGoalsKey = "addWeeklyGoal"
    private let longTermGoalsKey = "addLongTermGoal"
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            NavigationView{
                Form{
                    Section{
                        Text("Daily:")
                        TextField("Add a goal", text: $dailyGoal)
                        Button(action:{
//                            addDailyGoal.append(dailyGoal)
//                            print(addDailyGoal)
//                            dailyGoal = ""
                            saveDailyGoal()
                        },label: {
                            Text("Save")
                        })
                    }
                    List(addDailyGoal, id: \.self) { colour in
                        Text(colour)

                    }
                        
                    Section{
                        Text("Weekly:")
                        TextField("Add a goal", text: $weeklyGoal)
                        Button(action:{
//                            addWeeklyGoal.append(weeklyGoal)
//                            print(addWeeklyGoal)
//                            weeklyGoal = ""
                            saveWeeklyGoal()
                        },label: {
                            Text("Save")
                        })
                    }
                    List(addWeeklyGoal, id: \.self) { colour in
                        Text(colour)
                        
                    }
                    Section{
                        Text("Long Term:")
                        TextField("Add a goal", text: $longTermGoal)
                        Button(action:{
//                            addLongTermGoal.append(longTermGoal)
//                            print(addLongTermGoal)
//                            longTermGoal = ""
                            saveLongTermGoal()
                        },label: {
                            Text("Save")
                        })
                    }
                    List(addLongTermGoal, id: \.self) { colour in
                        Text(colour)
                        
                    }
//                    Section(header: Text("My favourite colours are...")) {
//                                        // NOTE: If items in a list will be removed later, they really should be made unique. See: https://www.hackingwithswift.com/books/ios-swiftui/working-with-identifiable-items-in-swiftui
//                                        List(addDailyGoal, id: \.self) { colour in
//                                            Text(colour)
                }
            }
        }.navigationBarTitle(Text("Goals"))
    
.onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
    print("moving to the background!")
    let defaults = UserDefaults.standard
    defaults.set(addDailyGoal, forKey: dailyGoalsKey)
}
.onAppear(){
    print("Moving back to the foreground!")
    let defaults = UserDefaults.standard
    addDailyGoal = defaults.object(forKey: dailyGoalsKey) as? [String] ?? []
}
    
.onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
    print("moving to the background!")
    let defaults = UserDefaults.standard
    defaults.set(addWeeklyGoal, forKey: weeklyGoalsKey)
}
.onAppear(){
    print("Moving back to the foreground!")
    let defaults = UserDefaults.standard
    addWeeklyGoal = defaults.object(forKey: weeklyGoalsKey) as? [String] ?? []
}
    
.onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
    print("moving to the background!")
    let defaults = UserDefaults.standard
    defaults.set(addLongTermGoal, forKey: longTermGoalsKey)
}
.onAppear(){
    print("Moving back to the foreground!")
    let defaults = UserDefaults.standard
    addLongTermGoal = defaults.object(forKey: longTermGoalsKey) as? [String] ?? []
}
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
    
