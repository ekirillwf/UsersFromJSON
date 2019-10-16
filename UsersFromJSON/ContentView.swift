//
//  ContentView.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 15.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import SwiftUI
import Combine

struct Users: Decodable {
    let firstName, seconName, email, imagUrl: String
}

class NetworkManager{
    var didChange = PassthroughSubject<NetworkManager, Never>()
    
    var users = [Users]() {
        didSet{
            didChange.send(self)
            
        }
    }
}



struct ContentView: View {
    
    
    @State var networkManager = NetworkManager()
    
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

