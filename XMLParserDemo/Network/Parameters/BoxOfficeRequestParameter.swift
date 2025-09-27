//
//  BoxOfficeRequestParameter.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import Alamofire

struct BoxOfficeRequestParameter: ParameterConvertible {
    /// 발급받은 인증키
    let service: String
    /// 시작일자
    let stdate: Date
    /// 종료일자
    let eddate: Date
    /// 장르 구분 코드(예매상황판용)
    let catecode: String?
    /// 지역 코드(예매상황판용)
    let area: Constant.BoxOfficeArea?
    /// 좌석수
    let srchseatscale: Int?
    
    init(service: String, stdate: Date, eddate: Date, catecode: String? = nil, area: Constant.BoxOfficeArea? = nil, srchseatscale: Int? = nil) {
        self.service = service
        self.stdate = stdate
        self.eddate = eddate
        self.catecode = catecode
        self.area = area
        self.srchseatscale = srchseatscale
    }
}
