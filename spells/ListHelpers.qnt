module ListHelpers {
    pure def listReverse(__input: List[anyType]): List[anyType] = {
        __input.foldl(List(), (acc, entry) => List(entry).concat(acc))
    }

    run listReverseTest = and {
        assert(listReverse(List()) == List()),
        assert(listReverse(List(0)) == List(0)),
        assert(listReverse(List(1, 2)) == List(2, 1)),
        assert(listReverse(List(-1, 0, 1)) == List(1, 0, -1)),
    }
}
