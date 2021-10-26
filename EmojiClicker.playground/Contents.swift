class EmojiChooser{
    
    
    //instace variables
    var emojiArr = ["😀", "📷", "💽", "🎛", "⛓" ]
    var emojiList : [Int: String] = [1:"😀"]
    
    //initialization with a default
    init(_ emojiArr : [String] = ["😀", "📷", "💽", "🎛", "⛓", "⛹️‍♀️", "🥉" , "🥈", "🥇" ]){
        self.emojiArr = emojiArr
        
        //sets values to the dictionary
        for i in 0...emojiArr.count-1{
            emojiList[i] = emojiArr[i]
        }
    }
    
    
    //gets the random list of emojis
    func getRandomEmojis() -> [String]{
       
        //uses numbers instead of emojis because its generally easier to work with numbers
        var numEList = [Int.random(in: 0...emojiArr.count-1)]
        
        
        for _ in 1...5{
            var randomEnough = true
            
            //repeats until it gets a non-repeat emoji. happens 4 time.
            while randomEnough{
                let rEmoji = Int.random(in: 0...emojiArr.count-1)
                if !numEList.contains(rEmoji){
                    numEList.append(rEmoji)
                    randomEnough = false
                    
                }
            }
            
            
        }
        //makes one of the random spaces a repeat of the first emoji
        numEList[Int.random(in: 1...4)] = numEList[0]
        
        //makes xcode happy
        var finalArr : [String] = []
        
        //goes from number list to emoji list.
        for i in 0...4{
            if let numToEmoji = emojiList[numEList[i]]{
                finalArr.append(numToEmoji)
            }
        }
        return finalArr
    }
}

//creates the emojichooser object
let r = EmojiChooser(["😀", "📷", "💽", "🎛", "⛓", "⚽️", "🛹", "⛸", "🥉" , "🥈", "🥇"])

//time to see the fruits of my labor
print(r.getRandomEmojis())



