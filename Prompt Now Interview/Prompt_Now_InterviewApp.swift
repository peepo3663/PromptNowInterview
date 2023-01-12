//
//  Prompt_Now_InterviewApp.swift
//  Prompt Now Interview
//
//  Created by Peter Beans on 1/11/23.
//

import SwiftUI

@main
struct Prompt_Now_InterviewApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        quiz1functionsTest()
    }
    
    var body: some Scene {
        WindowGroup {
            CellView()
        }.onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("State: Active")
            case .background:
                print("State: Background")
            case .inactive:
                print("State: Inactive")
            @unknown default:
                print("State: Unknown")
            }
        }
    }
    
    private func quiz1functionsTest() {
        printOutQuiz1No1()
        printOutQuiz1No2()
        printOutQuiz1No3()
    }
    
    private func printOutQuiz1No1(_ numberOfLines: Int = 10) {
        print("Programming and Algorithm 1")
        let xChar = "X"
        for i in 0...numberOfLines-1 {
            let numberOfX = i+1
            var xChars: String = ""
            for _ in 1...numberOfX {
                xChars += xChar
            }
            print(xChars)
        }
    }
    
    private func printOutQuiz1No2(_ numberOfLines: Int = 10) {
        print("Programming and Algorithm 2")
        let xChar = "X"
        let fillChar = "0"
        for i in 0...numberOfLines-1 {
            let numberOfX = i+1
            let numberOfColumn = 10
            let numberOfFillZero = numberOfColumn - numberOfX
            var xChars: String = ""
            for j in 1...numberOfColumn {
                if j <= numberOfFillZero {
                    xChars += fillChar
                } else {
                    xChars += xChar
                }
            }
            print(xChars)
        }
    }
    
    private func printOutQuiz1No3(_ heightOfPyramid: Int =  5) {
        print("Programming and Algorithm 3")
        let xChar = "X"
        let fillChar = "0"
        for i in 1...heightOfPyramid {
            var numberOfX = 0
            let numberOfSpace = heightOfPyramid - i
            if numberOfSpace > 0 {
                for _ in 1...numberOfSpace {
                    print(fillChar, terminator: "")
                }
            }
            while (numberOfX != 2 * i - 1) {
                print(xChar, terminator: "")
                numberOfX += 1
            }
            if numberOfSpace > 0 {
                for _ in 1...numberOfSpace {
                    print(fillChar, terminator: "")
                }
            }
            print("")
        }
    }
}
