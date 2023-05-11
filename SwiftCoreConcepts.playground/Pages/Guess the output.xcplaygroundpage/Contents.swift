// Q1

class Calculator {
    static func gamePlayed() -> [Int] {
        var games: [Int] = []
        for i in 0..<1000 { games.append(i) }
        return games
    }
}

class NoLazy {
    var gamesPlayed: [Int] {  Calculator.gamePlayed() }
}

var objNoLazy = NoLazy()
objNoLazy.gamesPlayed
objNoLazy.gamesPlayed
objNoLazy.gamesPlayed



