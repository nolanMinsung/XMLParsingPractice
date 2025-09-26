//
//  PerformanceListRequestParameter.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import Alamofire

struct PerformanceListRequestParameter {
    let service = InfoPlist.apiKey
    let stdate: Date
    let eddate: Date
    let cpage: Int
//    @Clipped(lowerBound: 0, upperBound: 100)
    var rows: Int
    
    let shprfnm: String?
    let shprfnmfct: String?
    let shcate: String?
    let prfplccd: String?
    let signgucode: String?
    let signgucodesub: String?
    let kidstate: String?
    let prfstate: String?
    let openrun: String?
    let afterdate: String?
    
    init(
        stdate: Date,
        eddate: Date,
        cpage: Int,
        rows: Int,
        shprfnm: String? = nil,
        shprfnmfct: String? = nil,
        shcate: String? = nil,
        prfplccd: String? = nil,
        signgucode: String? = nil,
        signgucodesub: String? = nil,
        kidstate: String? = nil,
        prfstate: String? = nil,
        openrun: String? = nil,
        afterdate: String? = nil,
    ) {
        self.stdate = stdate
        self.eddate = eddate
        self.cpage = cpage
        self.rows = rows.clipped(lowerBound: 0, upperBound: 100)
        self.shprfnm = shprfnm
        self.shprfnmfct = shprfnmfct
        self.shcate = shcate
        self.prfplccd = prfplccd
        self.signgucode = signgucode
        self.signgucodesub = signgucodesub
        self.kidstate = kidstate
        self.prfstate = prfstate
        self.openrun = openrun
        self.afterdate = afterdate
    }
}


extension PerformanceListRequestParameter {
    
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
