struct RepeatingStringService: StringService{
    let constant: String
    let count: Int
    
    func bail() -> String{
        return String(repeating: constant, count: count)
    }
}
