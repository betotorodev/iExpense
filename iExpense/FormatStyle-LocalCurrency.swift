//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Beto Toro on 13/07/22.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
  static var localCurrency: Self {
    .currency(code: Locale.current.currencyCode ?? "USD")
  }
}
