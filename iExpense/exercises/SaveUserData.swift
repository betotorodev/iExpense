//
//  SaveUserData.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import SwiftUI

struct SaveUserData: View {
  
  @AppStorage("tapCount") private var tapCount = 0
//  @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
  
  var body: some View {
    Button("Tap count: \(tapCount)") {
      tapCount += 1
//      UserDefaults.standard.set(self.tapCount, forKey: "Tap")
    }
  }
}

struct SaveUserData_Previews: PreviewProvider {
  static var previews: some View {
    SaveUserData()
  }
}
