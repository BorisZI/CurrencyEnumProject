//
//  main.swift
//  CurrencyEnumProject
//
//  Created by Boris Zitserman on 19.09.2022.
//
import Foundation

enum CurrencyUnit {
    case rouble([String], String)
    case euro([String], String)
    case dollar([String],DollarCountrys, String)
    
    enum DollarCountrys: String {
        case usa = "USA"
        case canada = "Canada"
        case australia = "Australia"
    }
}

let dollarCurrency = CurrencyUnit.dollar(["USA", "Dominicana", "Cuba"], .usa, "USD")
let rubleCurrency = CurrencyUnit.rouble(["Russia"], "RUB")
let euroCurrency = CurrencyUnit.euro(["Italy", "French", "Germany"], "EUR")

print(dollarCurrency)


func infoAboutCurrency(type: CurrencyUnit) {
    switch type {
    case let .rouble(countries, shortName):
        print("Рубль Катируется в: \(countries.joined(separator: ", ")). Красткое наименование: \(shortName)")
    case let .euro(countries, shortName):
        print("Евро Катируется в: \(countries.joined(separator: ", ")). Красткое наименование: \(shortName)")
    
    case let .dollar(countries, national, shortName):
        print("Доллар \(national) Катируется в: \(countries.joined(separator: ", ")). Красткое наименование: \(shortName)")
    }
}

infoAboutCurrency(type: euroCurrency)



