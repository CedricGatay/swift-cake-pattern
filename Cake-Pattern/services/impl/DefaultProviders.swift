protocol CTConstantServiceProvider: ConstantServiceProvider{ }
extension CTConstantServiceProvider{
    static func build() -> ConstantService{
        return CTConstantService()
    }
}

protocol LocationConstantServiceProvider: ConstantServiceProvider{ }
extension LocationConstantServiceProvider{
    static func build() -> ConstantService {
        return LocationConstantService()
    }
}

protocol FourtyTwoServiceProvider: NumberServiceProvider{ }

extension FourtyTwoServiceProvider{
    static func build() -> NumberService{
        return FourtyTwoService()
    }
}


protocol TwoServiceProvider: NumberServiceProvider{ }

extension TwoServiceProvider{
    static func build() -> NumberService{
        return TwoService()
    }
}


protocol JoiningStringServiceProvider: StringServiceProvider { }
extension JoiningStringServiceProvider where Self: NumberServiceProvider{
    static func build() -> StringService{
        return JoiningStringService(count: numberService.value)
    }
}


protocol RepeatingStringServiceProvider: StringServiceProvider{ }


typealias NumberAndConstantServiceProvider = NumberServiceProvider & ConstantServiceProvider
extension RepeatingStringServiceProvider where Self: NumberAndConstantServiceProvider{
    static func build() -> StringService{
        return RepeatingStringService(constant: constantService.default, count: numberService.value)
    }
}
