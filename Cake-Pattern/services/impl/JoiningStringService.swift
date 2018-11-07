struct JoiningStringService: StringService{
    let count: Int
    
    func bail() -> String{
        return repeatElement("Code-Troopers", count: count).joined(separator: ",")
    }
}
