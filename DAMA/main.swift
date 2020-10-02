//
//  main.swift
//  DAMA
//
//  Created by shaikha aljenaidel on 9/28/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
var one = "♟"
var two = "♙"
enum Type{
    case none
    case white
    case black
    var emoji: String{
        switch self{
        case .none: return " "
        case .white: return "♟"
        case .black: return "♙"
        }
    }
}
struct Checker{
    var location: Int
    var type: Type
}

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
printTable()
var input = Int(readLine()!)!
func validateMove(player: Int){
    let location = checkers[player-1].location
    var playerr = checkers[player-1].location
    var input1 = input
    if checkers[player-1].type == .black || checkers[player-1].type == .white{
        let f = (player-1)+8
        let b = (player-1)-8
        let r = (player-1)+1
        let l = (player-1)-1
        for i in 0..<9{
            if b == i && checkers[player-1].type == .black{
                if player == 9{
                    if checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " "{
                        print("\(location) can move to \(f+1), write the location number to move")
                    }else if checkers[r].type.emoji == " "{
                        print("\(location) can move to \(r+1), write the location number to move")
                    }else{
                        print("this checker can't move :(")
                    }
                }
                if player != 9 && player == 16{
                    if checkers[f].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(l+1) write the location number to move")
                    }else if checkers[f].type.emoji == " "{
                        print("\(location) can move to \(f+1), write the location number to move")
                    }else if checkers[l].type.emoji == " "{
                        print("\(location) can move to \(l+1), write the location number to move")
                    }else{
                        print("this checker can't move :(")
                    }
                    
                }
                if player != 9 && player != 16{
                    if checkers[f].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(l+1) write the location number to move")
                    }else if checkers[f].type.emoji == " "{
                        print("\(location) can move to \(f+1), write the location number to move")
                    }else if checkers[l].type.emoji == " "{
                        print("\(location) can move to \(l+1), write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " "{
                        print("\(location) can move to \(f+1), write the location number to move")
                    }else if checkers[r].type.emoji == " "{
                        print("\(location) can move to \(r+1), write the location number to move")
                    }
                }
            }
        }
        for i in 56..<65{
            if f == i && checkers[player-1].type == .white{
                if player == 56{
                    if checkers[b].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("1")
                        print("\(location) can move to \(b+1), \(l+1) write the location number to move")
                    }else if checkers[b].type.emoji == " "{
                        print("2")
                        print("\(location) can move to \(b+1), write the location number to move")
                    }else if checkers[l].type.emoji == " "{
                        print("3")
                        print("\(location) can move to \(l+1), write the location number to move")
                    }else{
                        print("this checker can't move :(")
                    }
                }
                if player != 56{
                    if checkers[b].type.emoji == " "{
                        print("\(location) can move to \(b+1), write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(r+1) write the location number to move")
                    }else if checkers[r].type.emoji == " "{
                        print("\(location) can move to \(r+1), write the location number to move")
                    }else{
                        print("this checker can't move :(")
                    }
                }
            }
        }
        if player % 8 == 0 && player != 56 && player != 16{
            if checkers[b].type.emoji == " " && checkers[f].type.emoji == " "{
                print("\(location) can move to \(b+1), \(f+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[l].type.emoji == " "{
                print("\(location) can move to \(b+1), \(f+1) and \(l+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[l].type.emoji == " "{
                print("\(location) can move to \(b+1), \(l+1) write the location number to move")
            }else if checkers[f].type.emoji == " " && checkers[l].type.emoji == " "{
                print("\(location) can move to \(f+1), \(l+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[f].type.emoji != " "{
                print("\(location) can move to \(b+1), write the location number to move")
            }else if checkers[f].type.emoji == " " && checkers[b].type.emoji != " "{
                print("\(location) can move to \(f+1), write the location number to move")
            }else if checkers[l].type.emoji == " " && checkers[f].type.emoji != " " && checkers[b].type.emoji != " "{
                print("\(location) can move to \(l+1), write the location number to move")
            }
        }else if (player-1) % 8 == 0 && player != 49 && player != 9{
            if checkers[b].type.emoji == " " && checkers[f].type.emoji == " "{
                print("\(location) can move to \(b+1), \(f+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                print("\(location) can move to \(b+1), \(f+1) and \(r+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[r].type.emoji == " "{
                print("\(location) can move to \(b+1), \(r+1) write the location number to move")
            }else if checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                print("\(location) can move to \(f+1), \(r+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[f].type.emoji != " "{
                print("\(location) can move to \(b+1), write the location number to move")
            }else if checkers[f].type.emoji == " " && checkers[b].type.emoji != " "{
                print("\(location) can move to \(f+1), write the location number to move")
            }else if checkers[r].type.emoji == " " && checkers[f].type.emoji != " " && checkers[b].type.emoji != " "{
                print("\(location) can move to \(r+1), write the location number to move")
            }
        }
    }
    
}

validateMove(player: input)

func canMove(player: Int)->Bool{
    if checkers[player-1].type == Type.black || checkers[player-1].type == Type.white{
        return true
    }else{
        return false
    }
}

while canMove(player: input){
    
}











//var f: [[String]] = [
//[f1,f2,f3,f4,f5,f6,f7,f8],
//[f9,f10,f11,f12,f13,f14,f15,f16],
//[f17,f18,f19,f20,f21,f22,f23,f24],
//[f25,f26,f27,f28,f29,f30,f31,f32],
//[f33,f34,f35,f36,"37","38","39","40"],
//["♙","♙","♙","♙","♙","♙","♙","♙"],
//["♙","♙","♙","♙","♙","♙","♙","♙"],
//[]
//]
//line 1
//var f1 = "1"; var f2 = "2"; var f3 = "3"; var f4 = "4"; var f5 = "5"; var f6 = "6"; var f7 = "7"; var f8 = "8"
//line 2
//var f9 = "♟"; var f10 = "♟"; var f11 = "♟"; var f12 = "♟"; var f13 = "♟"; var f14 = "♟"; var f15 = "♟"; var f16 = "♟"
//line 3
//var f17 = "♟"; var f18 = "♟"; var f19 = "♟"; var f20 = "♟"; var f21 = "♟"; var f22 = "♟"; var f23 = "♟"; var f24 = "♟"
//line 4
//var f25 = "25"; var f26 = "26"; var f27 = "27"; var f28 = "28"; var f29 = "29"; var f30 = "30"; var f31 = "31"; var f32 = "32"
//line 5
//var f33 = "33"; var f34 = "34"; var f35 = "35"; var f36 = "36"; var f37 = "37"; var f38 = "38"; var f39 = "39"; var f40 = "40"
//line 6
//var f41 = "♙"; var f42 = "♙"; var f43 = "♙"; var f44 = "♙"; var f45 = "♙"; var f46 = "♙"; var f47 = "♙"; var f48 = "♙"
//line 7
//var f49 = "♙"; var f50 = "♙"; var f51 = "♙"; var f52 = "♙"; var f53 = "♙"; var f54 = "♙"; var f55 = "♙"; var f56 = "♙"
//line 8
//var f57 = "57"; var f58 = "58"; var f59 = "59"; var f60 = "60"; var f61 = "61"; var f62 = "62"; var f63 = "63"; var f64 = "64"

//func printTable(){
////    print("")
//    print(" ---- ---- ---- ---- ---- ---- ---- ----")
//    print("| \(f57) | \(f58) | \(f59) | \(f60) | \(f61) | \(f62) | \(f63) | \(f64) |")
//    print("-----------------------------------------")
//    print("|  \(f49) |  \(f50) |  \(f51) |  \(f52) |  \(f53) |  \(f54) |  \(f55) |  \(f56) |")
//    print("-----------------------------------------")
//    print("|  \(f41) |  \(f42) |  \(f43) |  \(f44) |  \(f45) |  \(f46) |  \(f47) |  \(f48) |")
//    print("-----------------------------------------")
//    print("| \(f33) | \(f34) | \(f35) | \(f36) | \(f37) | \(f38) | \(f39) | \(f40) |")
//    print("-----------------------------------------")
//    print("| \(f25) | \(f26) | \(f27) | \(f28) | \(f29) | \(f30) | \(f31) | \(f32) |")
//    print("-----------------------------------------")
//    print("|  \(f17) |  \(f18) |  \(f19) |  \(f20) |  \(f21) |  \(f22) |  \(f23) |  \(f24) |")
//    print("-----------------------------------------")
//    print("|  \(f9) |  \(f10) |  \(f11) |  \(f12) |  \(f13) |  \(f14) |  \(f15) |  \(f16) |")
//    print("-----------------------------------------")
//    print("|  \(f1) |  \(f2) |  \(f3) |  \(f4) |  \(f5) |  \(f6) |  \(f7) |  \(f8) |")
//    print(" ---- ---- ---- ---- ---- ---- ---- ----")
//}
func printInstructions(){
    print("")
    print("How to play? Please input a number for a piece to move like '9R' as an example of 'move piece 9 to the right'.", "\n- for the first round you can only choose 9->24 for filled player or 41->56 for unfilled player and you can move forward and backward only: 'F' or 'B'.")
}

//printInstructions()
//printTable()
//
//let input = readLine()!
//if input == "9\(Move.forward.input)" || input == "9\(Move.backward.input)" {
//    f9 = "9"
//    if input == "9\(Move.forward.input)"{
//        let res = 9 + 8
//
//    }
//
//} else if input == "10\(Move.forward.input)" || input == "10\(Move.backward.input)" || input == "11\(Move.forward.input)" || input == "11\(Move.backward.input)" || input == "12\(Move.forward.input)" || input == "13\(Move.forward.input)" || input == "13\(Move.backward.input)" || input == "14\(Move.forward.input)" || input == "14\(Move.backward.input)" || input == "15\(Move.forward.input)" || input == "15\(Move.forward.input)"{
//    print("jjjj")
//}

//for i in 0..<64{
//    if i % 2 == 0 && i == 0{
//        printInstructions()
//        print("♟'s turn")
//        printTable()
//    }else if i % 2 == 0 && i != 0{
//        print("♟'s turn")
//        printTable()
//    }else{
//        print("♙'s turn")
//        printTable()
//    }
//}
