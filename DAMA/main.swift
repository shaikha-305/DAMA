//
//  main.swift
//  DAMA
//
//  Created by shaikha aljenaidel on 9/28/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
var white = "♟"
var black = "♙"
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
                    }else{
                        print("this checker can't move :(")
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
             if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                print("\(location) can move to \(b+1), \(f+1) and \(r+1) write the location number to move")
            }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " "{
                print("\(location) can move to \(b+1), \(f+1) write the location number to move")
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
        }else{
            if checkers[player-1].type == .white{
                if player != 49 && player != 50 && player != 51 && player != 52 && player != 53 && player != 54 && player != 55 && player != 56{
                    if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(f+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(b+1), \(f+1) and \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(f+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(b+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji != " "{
                        print("\(location) can move to \(b+1), \(f+1) and \(l+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(f+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(l+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(l+1) write the location number to move")
                    }else if checkers[l].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(l+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[r].type.emoji != " " && checkers[b].type.emoji != " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(f+1), write the location number to move")
                    }else if checkers[r].type.emoji == " " && checkers[f].type.emoji != " " && checkers[b].type.emoji != " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(r+1), write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[r].type.emoji != " " && checkers[f].type.emoji != " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(b+1), write the location number to move")
                    }else if checkers[l].type.emoji == " " && checkers[r].type.emoji != " " && checkers[b].type.emoji != " " && checkers[f].type.emoji != " "{
                        print("\(location) can move to \(l+1), write the location number to move")
                    }else {
                        print("this checker can't move :(")
                    }
                }
            }else if checkers[player-1].type == .black{
                if player != 9 && player != 10 && player != 11 && player != 12 && player != 13 && player != 14 && player != 15 && player != 16{
                    if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(f+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(b+1), \(f+1) and \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(f+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji == " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(b+1), \(l+1) and \(r+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " " && checkers[l].type.emoji == " " && checkers[r].type.emoji != " "{
                        print("\(location) can move to \(b+1), \(f+1) and \(l+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[f].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(f+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(l+1) write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(b+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[l].type.emoji == " "{
                        print("\(location) can move to \(f+1), \(l+1) write the location number to move")
                    }else if checkers[l].type.emoji == " " && checkers[r].type.emoji == " "{
                        print("\(location) can move to \(l+1), \(r+1) write the location number to move")
                    }else if checkers[f].type.emoji == " " && checkers[r].type.emoji != " " && checkers[b].type.emoji != " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(f+1), write the location number to move")
                    }else if checkers[r].type.emoji == " " && checkers[f].type.emoji != " " && checkers[b].type.emoji != " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(r+1), write the location number to move")
                    }else if checkers[b].type.emoji == " " && checkers[r].type.emoji != " " && checkers[f].type.emoji != " " && checkers[l].type.emoji != " "{
                        print("\(location) can move to \(b+1), write the location number to move")
                    }else if checkers[l].type.emoji == " " && checkers[r].type.emoji != " " && checkers[b].type.emoji != " " && checkers[f].type.emoji != " "{
                        print("\(location) can move to \(l+1), write the location number to move")
                    }else {
                        print("this checker can't move :(")
                    }
                }
            }
        }
    }
    
}
var input: Int
//validateMove(player: input)

func canMove(player: Int)->Bool{
    if checkers[player-1].type == Type.black || checkers[player-1].type == Type.white{
        return true
    }else{
        return false
    }
}

//while canMove(player: input){
//
//}
printTable()
var player = white
for i in 0..<65{
    print("How to play? Please type a number for a piece to move")
    input = Int(readLine()!)!
    if canMove(player: input){
        validateMove(player: input)
        var movement = Int(readLine()!)!
        checkers[movement-1].type = checkers[input-1].type
        checkers[input-1].type = .none
        printTable()
    }else {
        print("⚠️ wrong input")
        print("How to play? Please type a number for a piece to move")
        printTable()
    }
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
    print("How to play? Please type a number for a piece to move")
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
