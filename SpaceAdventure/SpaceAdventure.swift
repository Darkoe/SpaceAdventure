/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class SpaceAdventure {
    
    func start() {
        displayIntroduction()
        greetAdventurer()
        println("Let's go on an adventure!")
        determineDestination()
    }
 
    private func displayIntroduction() {
        let numberOfPlanets = 8
        let diameterOfEarth = 24859.82 // In miles, from pole to pole.
        println("Welcome to our solar system!")
        println("There are \(numberOfPlanets) planets to explore.")
        println("Your are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
    }
    
    private func responseToPrompt(prompt: String) -> String {
        println(prompt)
        return getln()
    }

    private func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        println("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    
    private func determineDestination() {
        var decision = "" // Start with empty String
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                println("Ok! Traveling to...")
                // TOOD: travel to random planet
            } else if decision == "N" {
                println("Ok, name the planet you would like to visit...")
                // TODO: let the user select a planet to visit
            } else {
                println("Sorry, I didn't get that.")
            }
        }
    }

}