//
//  ListItem.swift
//  iExpense
//
//  Created by Beto Toro on 13/07/22.
//

import SwiftUI

struct ListItem: View {
  
  @ObservedObject var expenses: Expenses
  let item: ExpenseItem
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(item.name)
          .font(.headline)
        Text(item.type)
      }
      
      Spacer()
      
      if item.amount <= 10.0 {
        Text(item.amount, format: .localCurrency)
          .foregroundColor(.green)
      } else if item.amount <= 100.0 {
        Text(item.amount, format: .localCurrency)
          .foregroundColor(.black)
      } else if item.amount > 100.0 {
        Text(item.amount, format: .localCurrency)
          .foregroundColor(.red)
      }
      
    }
    
  }
}

struct ListItem_Previews: PreviewProvider {
  static var previews: some View {
    let itemData = ExpenseItem(name: "holi", type: "Personal", amount: 10.0)
    ListItem(expenses: Expenses(), item: itemData)
  }
}
