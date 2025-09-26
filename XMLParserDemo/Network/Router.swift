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
    
    var baseURL: String { "http://www.kopis.or.kr/openApi/restful" }
    var path: String {
        switch self {
        case .getPerformanceList:
            "/pblprfr"
        }
    }
    var endPoint: String {
        baseURL + path
    }
    
    var method: HTTPMethod {
        switch self {
        case .getPerformanceList:
            return .get
        }
    }
    
    var queryParameters: Parameters? {
        switch self {
        case .getPerformanceList(let param):
            param.toParameters()
        }
    }
    
    var headers: HTTPHeaders? {
        switch self {
        case .getPerformanceList:
            return nil
        }
    }
    
}
