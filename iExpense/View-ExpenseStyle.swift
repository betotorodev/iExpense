//
//  View-ExpenseStyle.swift
//  iExpense
//
//  Created by Beto Toro on 13/07/22.
//

import SwiftUI

extension View {
  func style(for item: ExpenseItem) -> some View {
    if item.amount <= 10.0 {
      return self.foregroundColor(.green)
    } else if item.amount <= 100.0 {
      return self.foregroundColor(.black)
    } else {
      return self.foregroundColor(.red)
    }
  }
}
