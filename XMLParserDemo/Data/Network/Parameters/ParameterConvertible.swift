//
//  ParameterConvertible.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import Alamofire

protocol ParameterConvertible: Encodable {
    func toParameters() -> Parameters
    func asParameters(dateEncodingStrategy: DateEncodingStrategy) throws -> [String: Any]
}

enum DateEncodingStrategy {
    case formatted(DateFormatter)
    case iso8601
    case custom((Date) -> String)
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
                } else if let boxOfficeAreaCode = finalValue as? Constant.BoxOfficeArea {
                    parameters[key] = boxOfficeAreaCode.rawValue
                } else {
                    parameters[key] = finalValue
                }
            }
        }
        return parameters
    }
    
}

extension ParameterConvertible {
    func asParameters(dateEncodingStrategy: DateEncodingStrategy = .iso8601) throws -> [String: Any] {
        let encoder = JSONEncoder()
        
        switch dateEncodingStrategy {
        case .formatted(let formatter):
            encoder.dateEncodingStrategy = .formatted(formatter)
        case .iso8601:
            encoder.dateEncodingStrategy = .iso8601
        case .custom(let transform):
            encoder.dateEncodingStrategy = .custom { date, encoder in
                var container = encoder.singleValueContainer()
                try container.encode(transform(date))
            }
        }

        let data = try encoder.encode(self)
        let object = try JSONSerialization.jsonObject(with: data, options: .allowFragments)

        guard var dict = object as? [String: Any] else {
            throw NSError(domain: "ParameterEncodingError", code: -1, userInfo: nil)
        }

        // nil 제거 (Encodable에서는 nil이 빠지긴 하지만 안전하게 처리)
        dict = dict.filter { !($0.value is NSNull) }
        print(dict)
        return dict
    }
}
