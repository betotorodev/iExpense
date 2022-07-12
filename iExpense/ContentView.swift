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
  
  func removeItems(at offsets: IndexSet) {
    expenses.items.remove(atOffsets: offsets)
  }
  
  var body: some View {
    NavigationView {
      List {
        ForEach(expenses.items) { item in
          Text(item.name)
        }
        .onDelete(perform: removeItems)
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
