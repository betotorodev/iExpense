//
//  Expenses.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import Foundation

class Expenses: ObservableObject {
  
  @Published var personalItems = [ExpenseItem]() {
    didSet {
      if let encoded = try? JSONEncoder().encode(personalItems) {
        UserDefaults.standard.set(encoded, forKey: "PersonalItems")
      }
    }
  }
  @Published var businessItems = [ExpenseItem]() {
    didSet {
      if let encoded = try? JSONEncoder().encode(businessItems) {
        UserDefaults.standard.set(encoded, forKey: "BusinessItems")
      }
    }
  }
  
  let localCurrency: FloatingPointFormatStyle<Double>.Currency = .currency(code: Locale.current.currencyCode ?? "USD")
  
  init() {
    if let savedPersonalItems = UserDefaults.standard.data(forKey: "PersonalItems"),
       let savedBusinessItems = UserDefaults.standard.data(forKey: "BusinessItems") {
        if let decodedPersonalItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedPersonalItems),
           let decodedBusinessItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedBusinessItems){
              personalItems = decodedPersonalItems
              businessItems = decodedBusinessItems
              return
      }
    }
    
    personalItems = []
    businessItems = []
  }
  
}
