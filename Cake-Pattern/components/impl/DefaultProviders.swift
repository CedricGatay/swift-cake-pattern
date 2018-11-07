protocol CTConstantComponentProvider: ConstantComponentProvider{ }
extension CTConstantComponentProvider{
    static func build() -> ConstantComponent{
        return CTConstantComponent()
    }
}

protocol LocationConstantComponentProvider: CTConstantComponentProvider{ }
extension LocationConstantComponentProvider{
    static func build() -> ConstantComponent {
        return LocationConstantComponent()
    }
}

protocol FourtyTwoComponentProvider: NumberComponentProvider{ }

extension FourtyTwoComponentProvider{
    static func build() -> NumberComponent{
        return FourtyTwoComponent()
    }
}


protocol TwoComponentProvider: NumberComponentProvider{ }

extension TwoComponentProvider{
    static func build() -> NumberComponent{
        return TwoComponent()
    }
}


protocol JoiningStringComponentProvider: StringComponentProvider { }
extension JoiningStringComponentProvider where Self: NumberComponentProvider{
    static func build() -> StringComponent{
        return JoiningStringComponent(count: numberComponent.value)
    }
}


protocol RepeatingStringComponentProvider: StringComponentProvider{ }


typealias NumberAndConstantComponentProvider = NumberComponentProvider & ConstantComponentProvider
extension RepeatingStringComponentProvider where Self: NumberAndConstantComponentProvider{
    static func build() -> StringComponent{
        return RepeatingStringComponent(constant: constantComponent.default, count: numberComponent.value)
    }
}
