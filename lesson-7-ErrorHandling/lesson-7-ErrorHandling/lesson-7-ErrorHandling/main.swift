//
//  main.swift
//  lesson-7-ErrorHandling
//
//  Created by Dainis Putans on 21/01/2021.
//

import Foundation

enum BankAccountError: Error {
    case insuficientFunds
    case invalidAmount
}

class BankAccount {
    var amount = 0.0
    
    func depositFunds(funds: Double) throws -> Double {
        if funds < 0 {
            throw BankAccountError.invalidAmount
        }
        amount += funds
        return amount
    }
    func withdrowFunds(funds: Double) throws -> Double {
        if funds < 0 {
            throw BankAccountError.invalidAmount
        }
        if funds > amount {
            throw BankAccountError.insuficientFunds
        }
        amount -= funds
        return amount
    }
}

do {
    var myBankAccount = BankAccount()
    try myBankAccount.depositFunds(funds: -20.0)
    print(myBankAccount.amount)
} catch BankAccountError.insuficientFunds {
    print("insuffucuent funds error")
} catch BankAccountError.invalidAmount {
    print("invalid amount error")
}
  catch {
    print("an error has occured \(error.localizedDescription)")
}
