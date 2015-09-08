//
//  BankAccount.swift
//
//
//  Created by Gin on 9/7/15.
//  Swift class exercise
//


class BankAccount {
    let name: String
    var balance: Int
    
    init(name: String, initialBalanceInCents balance: Int) {
        self.name = name
        self.balance = balance
    }
    
    func toDollars() -> Double {
        return Double(self.balance) / 100.0
    }
    
    func deposit(amount: Int) -> Int {
        self.balance += amount
        return self.balance
    }
    
    func withdraw(amount: Int) -> Int {
        self.balance -= amount
        return self.balance
    }
}

var account = BankAccount(name: "Jin", initialBalanceInCents: 100)
let balance = account.toDollars()
var newBalance = account.deposit(200)
newBalance = account.withdraw(50)



