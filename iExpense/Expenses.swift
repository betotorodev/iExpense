//
//  Expenses.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import Foundation

class Expenses: ObservableObject {
  @Published var items = [ExpenseItem]()
}
