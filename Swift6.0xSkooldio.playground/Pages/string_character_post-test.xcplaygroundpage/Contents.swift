// preriquisit knowledge
// split, map
// decline and move to later
let fruitInput = "apple,banana,cherry,date,elderberry"



let fruits = fruitInput.split(separator: ",")
let fruitEmojis = fruits.map { fruit in "\(fruit)🍎" }
let story = """
Once upon a time, a \(fruitEmojis[0]) and a \(fruitEmojis[1]) went on a picnic.
They met a grumpy \(fruitEmojis[2]) who wanted to join them.
The \(fruitEmojis[3]) thought it was a bad idea, but the \(fruitEmojis[4]) disagreed.
In the end, they all became fruity friends and lived happily ever after!
"""
let loudStory = story.uppercased()
let fruitInitials = fruits.map { String($0.prefix(1)) }

print("🍓 Fruit Emoji Mixer 🍓")
print("\nYour Silly Fruit Story:")
print(loudStory)
print("\nFruit Initials:")
print(fruitInitials.joined(separator: ", "))



