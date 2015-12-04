infix operator ?= {
associativity right
precedence 90
assignment
}

infix operator ??= {
associativity right
precedence 90
assignment
}

public func ?=<T:Any>(inout lhs:T,rhs:Any?) {
    if let rhs = rhs as? T {
        lhs = rhs
    }
}

public func ?=<T:Any>(inout lhs:T?,rhs:Any?) {
    if let rhs = rhs as? T {
        lhs = rhs
    }
}

public func ??=<T:Any>(inout lhs:T,rhs:(optionalValue:Any?, defaultValue:T)) {
    if let optionalValue = rhs.optionalValue as? T {
        lhs = optionalValue
    }
    else {
        lhs = rhs.defaultValue
    }
}