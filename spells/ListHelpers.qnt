module ListHelpers {

    pure def listRemoveAt(__input: List[anyType], __index: int): List[anyType] = {
        if (__index < 0 or __index >= __input.length()) {
            __input
        } else {
            val left = __input.slice(0, __index)
            val right = __input.slice(__index+1, __input.length())
            left.concat(right)
        }
    }

    pure def listReverse(__input: List[anyType]): List[anyType] = {
        __input.foldl(List(), (acc, entry) => List(entry).concat(acc))
    }

    /* Tests */

    run listRemoveAtTest = and {
        assert(listRemoveAt(List(), 0) == List()),
        assert(listRemoveAt(List(), 1) == List()),
        assert(listRemoveAt(List(42), 0) == List()),
        assert(listRemoveAt(List(42), 1) == List(42)),
        assert(listRemoveAt(List(42), -1) == List(42)),
        assert(listRemoveAt(List(10, 20, 30), 1) == List(10, 30)),
    }

    run listReverseTest = and {
        assert(listReverse(List()) == List()),
        assert(listReverse(List(0)) == List(0)),
        assert(listReverse(List(1, 2)) == List(2, 1)),
        assert(listReverse(List(-1, 0, 1)) == List(1, 0, -1)),
    }
}
