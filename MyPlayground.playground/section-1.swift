extension Array {
    func contains<ItemType: Equatable>(needle: ItemType) -> Bool {
        for element in self {
            if element == needle {return true}
        }
        return false
    }
}

//func contains<T : Equatable>(haystack:[T],needle:T) -> Bool {
//    for element in haystack {
//        if element == needle {return true}
//    }
//    return false
//}

//contains([1,4,8,23,65,2,5], 8)

[1,4,8,23,65,2,5].contains(3)

