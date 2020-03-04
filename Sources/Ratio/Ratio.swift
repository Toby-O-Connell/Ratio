//
//  Ratio.swift
//  
//
//  Created by Toby O'Connell on 27/02/2020.
//

struct Ratio<T: BinaryInteger>: Equatable {
    var numerator: T
    var denominator: T

    init(_ numerator: T, _ denominator: T) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    private var gcd: T {
        return numerator.gcd(with: denominator)
    }
    
    mutating func simplify() {
        numerator /= gcd
        denominator /= gcd
    }
    
    func simplified() -> Ratio {
        Ratio(numerator / gcd, denominator / gcd)
    }
}
