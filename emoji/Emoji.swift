//
//  Emoji.swift
//  emoji
//
//  Created by Enrick on 01/12/20.
//

import Foundation

struct Emoji {
    var item = ""
    var description = ""
    var year = 0
    var rating = 0.0
    var category = ""
}

let emojis = ["🏎", "⛪️", "🙃", "🦖"]

func getEmojis() -> [Emoji] {
    let emoji1 = Emoji(item: "🏎", description: "Race car", year: 2018, rating: 9, category: "Vehicles")
    let emoji2 = Emoji(item: "⛪️", description: "Church", year: 2018, rating: 10, category: "Places")

    return [emoji1, emoji2]
}
