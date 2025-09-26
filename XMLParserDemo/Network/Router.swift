//
//  Router.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import Alamofire


enum KOPISRouter {
    case getPerformanceList(param: PerformanceListRequestParameter)
    case getPerformanceDetail(apiKey: String, performanceID: String)
    case getFacilityList(param: FacilityListRequestParameter)
    case getFacilityDetail(apiKey: String, facilityID: String)
}

extension KOPISRouter {
    
    var baseURL: String { "https://www.kopis.or.kr/openApi/restful" }
    var path: String {
        switch self {
        case .getPerformanceList:
            return "/pblprfr"
        case .getPerformanceDetail(_, let performanceID):
            return "/pblprfr/\(performanceID)"
        case .getFacilityList:
            return "/prfplc"
        case .getFacilityDetail(_, let facilityID):
            return "/prfplc/\(facilityID)"
        }
    }
    var endPoint: String {
        return baseURL + path
    }
    
    var method: HTTPMethod {
        switch self {
        case .getPerformanceList, .getPerformanceDetail, .getFacilityList, .getFacilityDetail:
            return .get
        }
    }
    
    var queryParameters: Parameters? {
        switch self {
        case .getPerformanceList(let param):
            return param.toParameters()
        case .getPerformanceDetail(let apiKey, _):
            return ["service": apiKey]
        case .getFacilityList(let param):
            return param.toParameters()
        case .getFacilityDetail(let apiKey, _):
            return ["service": apiKey]
        }
    }
    
    var headers: HTTPHeaders? {
        switch self {
        case .getPerformanceList, .getPerformanceDetail, .getFacilityList, .getFacilityDetail:
            return nil
        }
    }
    
}
