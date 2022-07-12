//
//  SharingState.swift
//  iExpense
//
//  Created by Beto Toro on 11/07/22.
//

import SwiftUI

class User: ObservableObject {
  @Published var firstName = "Bilbo"
  @Published var lastName = "Baggins"
}

struct SharingState: View {
  @StateObject private var user = User()
  
  var body: some View {
    VStack {
      Text("Your name is \(user.firstName) \(user.lastName).")
      
      TextField("First name", text: $user.firstName)
      TextField("Last name", text: $user.lastName)
    }
  }
}

struct SharingState_Previews: PreviewProvider {
  static var previews: some View {
    SharingState()
  }
}
