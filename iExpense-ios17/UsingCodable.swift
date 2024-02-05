//
//  UsingCodable.swift
//  iExpense-ios17
//
//  Created by Alin RADU on 05.02.2024.
//

import SwiftUI

struct User1: Codable {
    let firstName: String
    let lastName: String
}

struct UsingCodable: View {
    @State private var user = User1(firstName: "Taylor", lastName: "Swift")
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Button("Save User") {
            let encoder = JSONEncoder()

            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    UsingCodable()
}
