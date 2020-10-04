//
//  Models.swift
//  DAMA
//
//  Created by shaikha aljenaidel on 10/3/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
var checkers: [Checker] = [
    Checker(location: 1, type: .none),
    Checker(location: 2, type: .none),
    Checker(location: 3, type: .none),
    Checker(location: 4, type: .none),
    Checker(location: 5, type: .none),
    Checker(location: 6, type: .none),
    Checker(location: 7, type: .none),
    Checker(location: 8, type: .none),
    Checker(location: 9, type: .black),
    Checker(location: 10, type: .black),
    Checker(location: 11, type: .black),
    Checker(location: 12, type: .black),
    Checker(location: 13, type: .black),
    Checker(location: 14, type: .black),
    Checker(location: 15, type: .black),
    Checker(location: 16, type: .black),
    Checker(location: 17, type: .black),
    Checker(location: 18, type: .black),
    Checker(location: 19, type: .black),
    Checker(location: 20, type: .black),
    Checker(location: 21, type: .black),
    Checker(location: 22, type: .black),
    Checker(location: 23, type: .black),
    Checker(location: 24, type: .black),
    Checker(location: 25, type: .none),
    Checker(location: 26, type: .none),
    Checker(location: 27, type: .none),
    Checker(location: 28, type: .none),
    Checker(location: 29, type: .none),
    Checker(location: 30, type: .none),
    Checker(location: 31, type: .none),
    Checker(location: 32, type: .none),
    Checker(location: 33, type: .none),
    Checker(location: 34, type: .none),
    Checker(location: 35, type: .none),
    Checker(location: 36, type: .none),
    Checker(location: 37, type: .none),
    Checker(location: 38, type: .none),
    Checker(location: 39, type: .none),
    Checker(location: 40, type: .none),
    Checker(location: 41, type: .white),
    Checker(location: 42, type: .white),
    Checker(location: 43, type: .white),
    Checker(location: 44, type: .white),
    Checker(location: 45, type: .white),
    Checker(location: 46, type: .white),
    Checker(location: 47, type: .white),
    Checker(location: 48, type: .white),
    Checker(location: 49, type: .white),
    Checker(location: 50, type: .white),
    Checker(location: 51, type: .white),
    Checker(location: 52, type: .white),
    Checker(location: 53, type: .white),
    Checker(location: 54, type: .white),
    Checker(location: 55, type: .white),
    Checker(location: 56, type: .white),
    Checker(location: 57, type: .none),
    Checker(location: 58, type: .none),
    Checker(location: 59, type: .none),
    Checker(location: 60, type: .none),
    Checker(location: 61, type: .none),
    Checker(location: 62, type: .none),
    Checker(location: 63, type: .none),
    Checker(location: 64, type: .none)
]
func printTable(){
    for i in checkers{
        if i.location == 1{
            print("-----------------------------------------------------------------")
        }
        if i.location == 1 || i.location == 2 || i.location == 3 || i.location == 4 || i.location == 5 || i.location == 6 || i.location == 7 {
            print("| \(i.location)    \(i.type.emoji)", terminator: "")
        }else if i.location == 8 || i.location == 16 || i.location == 24 || i.location == 32 || i.location == 40 || i.location == 48 || i.location == 56 || i.location == 64{
            print("| \(i.location)   \(i.type.emoji) |", terminator: "\n")
            print("-----------------------------------------------------------------")
        }else if i.location == 9 || i.location == 10 || i.location == 11 || i.location == 12 || i.location == 13 || i.location == 14 || i.location == 15 {
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }else if i.location == 17 || i.location == 18 || i.location == 19 || i.location == 20 || i.location == 21 || i.location == 22 || i.location == 23{
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }else if i.location == 25 || i.location == 26 || i.location == 27 || i.location == 28 || i.location == 29 || i.location == 30 || i.location == 31 {
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }else if i.location == 33 || i.location == 34 || i.location == 35 || i.location == 36 || i.location == 37 || i.location == 38 || i.location == 39{
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }else if i.location == 41 || i.location == 42 || i.location == 43 || i.location == 44 || i.location == 45 || i.location == 46 || i.location == 47{
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }else if i.location == 49 || i.location == 50 || i.location == 51 || i.location == 52 || i.location == 53 || i.location == 54 || i.location == 55{
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }else if i.location == 57 || i.location == 58 || i.location == 59 || i.location == 60 || i.location == 61 || i.location == 62 || i.location == 63{
            print("| \(i.location)   \(i.type.emoji)", terminator: "")
        }
        
    }
}
