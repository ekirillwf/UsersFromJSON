//
//  Cell.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 16.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import SwiftUI

struct Cell : View {
    
    var user: UsersList
    
    var body: some View {
        VStack(spacing: 16.0) {
            UsersView(user: user)
            
            .lineLimit(nil)
        }.padding()
    }
}

#if DEBUG
struct Cell_Previews : PreviewProvider {
    static var previews: some View {
        Cell(user: usersList[0])
    }
}
#endif
