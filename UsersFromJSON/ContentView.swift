//
//  ContentView.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 15.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List
                {
                    UsersView()
                    UsersView()
                    UsersView()
            }
            .navigationBarTitle(Text("Users List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

