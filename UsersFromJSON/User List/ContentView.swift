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

//guard let url = URL(string:"https://frogogo-test.herokuapp.com/users.json") else { return }
//
//       let session = URLSession.shared
//       session.dataTask(with: url) {
//           (data, response, error) in
//           if let response = response {
//               print (response)
//           }
//           guard let data = data else {return}
//           print (data)
//
//           do {
//               let json = try JSONSerialization.jsonObject(with: data, options: [])
//               print(json)
//           }
//           catch {
//               print (error)
//           }
//       }.resume()
//
//
//
//   }

struct ContentView : View {
    
    var body: some View {
        
        HStack {
            VStack {
                NavigationView {
                    
                    List(usersList) { user in
                        Cell(user: user)
                        
                    }
                    .navigationBarTitle(Text("Users List"))
                    
                }
                Button(action: {}) {
                    Text("Добавить нового пользователя")
                        
                        .font(.subheadline)
                }
            }
            
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

