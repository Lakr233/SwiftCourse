//
//  main.swift
//  SwiftCourse - https://github.com/Lakr233/SwiftCourse/blob/main/LICENSE
//
//  Created by Lakr Aream on 2022/9/20.
//

import Foundation

let target = Int.random(in: 0 ... 9)                // generate random number between 0 and 9

while true {                                        // loop forever

    print("[*] Now tell me a number and press enter!")

    let input = readLine()                          // read user input from command line

    if let input = input,                           // input from String? -> String
        let value = Int(input)                      // input from String -> Int? -> Int
    {

        if value == target {
            print("[*] You win this game!")
            exit(0)                                  // exit the program
        } else if value < target {
            print("[*] This number is too small!")
        } else {
            print("[*] This number is too big!")
        }

    } else {                                        // cast / unwrap failed
        print("[*] Invalid input!")
    }

}
