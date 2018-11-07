private struct Context: FourtyTwoComponentProvider,
    CTConstantComponentProvider,
    RepeatingStringComponentProvider{
    static var numberComponent: NumberComponent = build()
    static var constantComponent: ConstantComponent = build()
    static var stringComponent: StringComponent = build()
}

typealias ContextType = NumberComponentProvider
    & ConstantComponentProvider
    & StringComponentProvider

struct AppContext{
    private let type: ContextType.Type = Context.self
    var numberService : NumberComponent { return type.numberComponent }
    var constantService: ConstantComponent { return type.constantComponent }
    var stringService: StringComponent { return type.stringComponent }
    
}
