protocol StringComponentProvider{
    static var stringComponent: StringComponent { get }
    static func build() -> StringComponent
}

protocol NumberComponentProvider {
    static var numberComponent: NumberComponent { get }
    static func build() -> NumberComponent
}

protocol ConstantComponentProvider{
    static var constantComponent: ConstantComponent { get }
    static func build() -> ConstantComponent
}
