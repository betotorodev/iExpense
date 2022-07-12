//
//  Codable.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import SwiftUI

struct UserTwo: Codable {
  let firstName: String
  let lastName: String
}

struct CodableView: View {
  
  @State private var user = UserTwo(firstName: "Taylor", lastName: "Swift")
  
  var body: some View {
    Button("Save User") {
      let encoder = JSONEncoder()
      
      if let data = try? encoder.encode(user) {
        UserDefaults.standard.set(data, forKey: "UserData")
      }
    }
  }
}

struct CCodableView_Previews: PreviewProvider {
  static var previews: some View {
    CodableView()
  }
}
