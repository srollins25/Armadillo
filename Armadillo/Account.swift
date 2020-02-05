//
//  Account.swift
//  Armadillo
//
//  Created by stephan rollins on 1/26/20.
//  Copyright © 2020 OmniStack. All rights reserved.
//

import SwiftUI

struct Account: Identifiable {
    var id = UUID()
    var account: String
    var username: String
    var email: String
    var pw: String
    var created: Double
}

#if DEBUG
var testarr = [
    Account(account: "Google", username: "test", email: "email@email.com", pw: "qwertyuiop", created: Date().timeIntervalSince1970),
        Account(account: "Google", username: "test2", email: "email2@email.com", pw: "qwertyuiop", created: Date().timeIntervalSince1970),
            Account(account: "Google", username: "test3", email: "email3@email.com", pw: "qwertyuiop", created: Date().timeIntervalSince1970)
]

#endif
