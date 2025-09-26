//
//  ParameterConvertible.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import Alamofire

protocol ParameterConvertible {
    func toParameters() -> Parameters
}


extension ParameterConvertible {
    
    func toParameters() -> Parameters {
        let mirror = Mirror(reflecting: self)
        var parameters: Parameters = [:]
        
        for child in mirror.children {
            
            guard let key = child.label else { continue }
            let value = child.value
            
            let unwrappedValue: Any?
            
            if case Optional<Any>.some(let realValue) = value {
                unwrappedValue = realValue
            } else if case Optional<Any>.none = value {
                unwrappedValue = nil
            } else {
                unwrappedValue = value
            }
            
            if let finalValue = unwrappedValue {
                if let date = finalValue as? Date {
                    let formatter = DateFormatter()
                    formatter.dateFormat = "yyyyMMdd"
                    parameters[key] = formatter.string(from: date)
                } else {
                    parameters[key] = finalValue
                }
            }
        }
        return parameters
    }
    
}
