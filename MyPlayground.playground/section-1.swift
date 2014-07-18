// Playground - noun: a place where people can play
import Foundation

@infix func < (left:Suit, right:Suit) -> Bool {
    return (left.toRaw() < right.toRaw())
}

enum Suit:Int, Comparable {
    case Clubs = 1, Diamonds, Hearts, Spades, NoTrump
    
    static func All() -> [Suit] {
        return [.Clubs,.Diamonds,.Hearts,.Spades]
    }
    static func Bids() -> [Suit] {
        return [.Clubs,.Diamonds,.Hearts,.Spades,.NoTrump]
    }
}

for a in Suit.All() {
    print(a.toRaw())
}

[1,2,3] + [4]


struct Bid: Equatable, Comparable, Printable {
    let tricks:Int;
    let suit:Suit;
    
    init(tricks:Int, suit:Suit) {
        assert(0 < tricks, "A bid must have at least 1 trick");
        assert(tricks <= 7, "A bid cannot have more than 7 tricks");
        self.tricks = tricks;
        self.suit = suit;
    }
    
    var description: String {
        return "bid";
    }
}

@infix func == (left:Bid, right:Bid) -> Bool {
    return (left.tricks == right.tricks)  && (left.suit == right.suit)
}

@infix func < (left:Bid, right:Bid) -> Bool {
    if left.tricks == right.tricks {
        return left.suit < right.suit;
    } else {
        return left.tricks < right.tricks;
    }
}

let b1 = Bid(tricks: 2, suit:.Hearts);
let b2 = Bid(tricks: 2, suit:.Spades)


//b2.suit.hashValue


let a = Suit.Spades
let b = Suit.Hearts

b1 < b2

print(b1);

String(format:"%@%.2f", "sqrt(2) = ", sqrt(2.0))


