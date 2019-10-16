//
//  ContentView.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 15.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import SwiftUI
import Combine
import Alamofire
import Foundation



struct ContentView : View {
    var body: some View {
        NavigationView {
            List(usersList) { user in
                Cell(user: user)
            }
            .navigationBarTitle(Text("Users List"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

