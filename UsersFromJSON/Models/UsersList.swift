//
//  UsersList.swift
//  UsersFromJSON
//
//  Created by Кирилл Елсуфьев on 16.10.2019.
//  Copyright © 2019 Кирилл Елсуфьев. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI



struct UsersList: Hashable, Codable, Identifiable {
    var id: Int
    
    var first_name: String
    var last_name: String
    var email: String
    var avatar_url: String
    var created_at: String
    var updated_at: String
    var url: String
    
}
