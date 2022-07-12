//
//  ShowingViews.swift
//  iExpense
//
//  Created by Beto Toro on 12/07/22.
//

import SwiftUI

struct SecondView: View {
  
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    Button("Dismiss") {
      dismiss()
    }
  }
}

struct ShowingViews: View {
  
  @State private var showingSheet = false
  
  var body: some View {
    Button("showing sheet") {
      showingSheet.toggle()
    }
    .sheet(isPresented: $showingSheet) {
      SecondView()
    }
  }
}

struct ShowingViews_Previews: PreviewProvider {
  static var previews: some View {
    ShowingViews()
  }
}
