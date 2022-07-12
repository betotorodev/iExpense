//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import Foundation

struct ExpenseItem: Identifiable {
  let id = UUID()
  let name: String
  let type: String
  let amount: Double
}
