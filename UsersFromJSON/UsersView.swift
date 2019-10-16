//
//  UsersView.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 16.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import SwiftUI


struct UsersView: View {
    var body: some View {
        HStack {
            Spacer()
            Image("mini")
            .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            VStack(alignment:.leading, spacing: 5.0){
                HStack{Text ("Имя")
                    .font(.title)
                Text ("Фамилия")
                    .font(.title)
                }
                HStack{
                    Text("e-mail")
                        .font(.subheadline)
                    Spacer()
                }
            }
        }.padding()
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
