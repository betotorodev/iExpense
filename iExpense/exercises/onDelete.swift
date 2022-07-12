//
//  onDelete.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import SwiftUI

struct onDelete: View {
  @State private var numbers = [Int]()
  @State private var currentNumber = 1
  
  func removeRows(at offsets: IndexSet) {
    numbers.remove(atOffsets: offsets)
  }
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          ForEach(numbers, id: \.self) {
            Text("Row \($0)")
          }
          .onDelete(perform: removeRows)
        }
        
        Button("Add Number") {
          numbers.append(currentNumber)
          currentNumber += 1
        }
      }
      .navigationTitle("onDelete()")
      .toolbar {
        EditButton()
      }
    }
  }
}

struct onDelete_Previews: PreviewProvider {
  static var previews: some View {
    onDelete()
  }
}
