protocol StringServiceProvider{
    static var stringService: StringService { get }
    static func build() -> StringService
}

protocol NumberServiceProvider {
    static var numberService: NumberService { get }
    static func build() -> NumberService
}

protocol ConstantServiceProvider{
    static var constantService: ConstantService { get }
    static func build() -> ConstantService
}
