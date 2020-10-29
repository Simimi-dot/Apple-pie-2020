//
//  Game.swift
//  Apple pie 2020
//
//  Created by Егор Астахов on 29.10.2020.
//



struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    private var guessedLetters: [Character] = []
    
    init(word:String, incorrectMovesRemaining:Int) {
        self.word = word
        self.incorrectMovesRemaining = incorrectMovesRemaining
    }
    
    var guessedWord: String{
        var wordToShow = ""
        
        for letter in word{
            if guessedLetters.contains(Character (letter.lowercased())){
                wordToShow += String(letter)
            }else{
                wordToShow += "_"
            }
            
        }
        return wordToShow
    }
    
    
    mutating func playerGuessed(letter:Character){
        let lowercasedLetter = Character(letter.lowercased())
        guessedLetters.append(lowercasedLetter)
        if !word.lowercased().contains(lowercasedLetter){
            incorrectMovesRemaining -= 1
        }
    }
}
