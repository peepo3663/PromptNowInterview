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
            ContentView()
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
        let fillChar = "0   "
        for i in 0...numberOfLines-1 {
            let numberOfX = i+1
            var xChars: String = ""
            for _ in 1...numberOfX {
                xChars += xChar
            }
            print(xChars)
        }
    }
    
    private func printOutQuiz1No3() {
        
    }
}
