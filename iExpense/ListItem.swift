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
      
      Text(item.amount, format: .localCurrency)
        .style(for: item)
    }
    
  }
}

struct ListItem_Previews: PreviewProvider {
  static var previews: some View {
    let itemData = ExpenseItem(name: "holi", type: "Personal", amount: 10.0)
    ListItem(expenses: Expenses(), item: itemData)
  }
}
