//
//  ContentView.swift
//  wellbeingOrganizer
//
//  Created by Yates, Clea on 2020-12-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var GoToScreen2 : Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.yellow
                    .ignoresSafeArea()
                if GoToScreen2 == false {
                    ScreenOneView(GoToScreen2: $GoToScreen2)
                } else {
                    ScreenTwoView(GoToScreen2: $GoToScreen2)
               }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
