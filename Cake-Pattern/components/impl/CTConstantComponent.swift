class CTConstantComponent: ConstantComponent{
    var `default`: String{
        return ["BC", "JP", "CG", "VM", "TM", "PR", "MB", "RL", "FC"].randomElement() ?? "JD"
    }
}
