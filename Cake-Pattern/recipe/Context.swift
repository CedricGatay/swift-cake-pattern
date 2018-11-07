private struct Context: FourtyTwoServiceProvider,
    CTConstantServiceProvider,
    RepeatingStringServiceProvider{
    static var numberService: NumberService = build()
    static var constantService: ConstantService = build()
    static var stringService: StringService = build()
}

typealias ContextType = NumberServiceProvider
    & ConstantServiceProvider
    & StringServiceProvider

struct AppContext{
    private let type: ContextType.Type = Context.self
    var numberService : NumberService { return type.numberService }
    var constantService: ConstantService { return type.constantService }
    var stringService: StringService { return type.stringService }
}
