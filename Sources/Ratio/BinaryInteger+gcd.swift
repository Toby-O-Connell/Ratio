//
//  BinaryInteger+gcd.swift
//  
//
//  Created by Toby O'Connell on 04/03/2020.
//

extension BinaryInteger {
    static func gcd(_ values: Self...) -> Self {
        return values.reduce(0) { (m, n) in
            var a: Self = 0
            var b: Self = max(m, n)
            var r: Self = min(m, n)

            while r != 0 {
                a = b
                b = r
                r = a % b
            }
            return b
        }
    }
    
    func gcd(with value: Self) -> Self {
        return Self.gcd(self, value)
    }
}
