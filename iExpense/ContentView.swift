//
//  ContentView.swift
//  iExpense
//
//  Created by Beto Toro on 11/07/22.
//

import SwiftUI

struct ContentView: View {
  
  @StateObject var expenses = Expenses()
  @State private var showingAddExpense = false
  
  func removePersonalItems(at offsets: IndexSet) {
    expenses.personalItems.remove(atOffsets: offsets)
  }
  
  func removeBusinessItems(at offsets: IndexSet) {
    expenses.businessItems.remove(atOffsets: offsets)
  }
  
  var body: some View {
    NavigationView {
      List {
        if !expenses.personalItems.isEmpty {
          Section("Personal") {
            ForEach(expenses.personalItems) { item in
              ListItem(expenses: expenses, item: item)
            }
            .onDelete(perform: removePersonalItems)
          }
        }
        
        if !expenses.businessItems.isEmpty {
          Section("Business") {
            ForEach(expenses.businessItems) { item in
              ListItem(expenses: expenses, item: item)
            }
            .onDelete(perform: removeBusinessItems)
          }          
        }
        
      }
      .navigationTitle("iExpense")
      .toolbar {
        Button {
          showingAddExpense = true
        } label: {
          Image(systemName: "plus")
        }
        .foregroundColor(.black)
      }
      .sheet(isPresented: $showingAddExpense) {
        AddView(expenses: expenses)
      }
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
