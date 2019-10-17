//
//  UsersView.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 16.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import SwiftUI
import Combine



struct UsersView: View {
    
    var user: UsersList
    
    var body: some View {
        HStack {
            Spacer()
            Image("mini")
            .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .clipped()
            
            VStack(alignment:.leading, spacing: 5.0){
                HStack{Text (user.first_name)
                    .font(.title)
                    Text (user.last_name)
                    .font(.title)
                }
                HStack{
                    Text(user.email)
                        .font(.subheadline)
                    Spacer()
                }
            }
        }.padding()
    }
}

#if DEBUG
struct TopView_Previews : PreviewProvider {
    static var previews: some View {
        UsersView(user: usersList[2])
    }
}
#endif
