//
//  main.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

import XMLCoder


// XML 파싱 테스트

//guard let performanceListXMLData = performanceListMock.data(using: .utf8) else { fatalError() }
//guard let performanceDetailXMLData = performanceDetailMock.data(using: .utf8) else { fatalError() }
//guard let facilityListXMLData = facilityListMock.data(using: .utf8) else { fatalError() }
//guard let facilityDetailXMLData = facilityDetailMock.data(using: .utf8) else { fatalError() }
//guard let boxOfficeListXMLData = boxOfficeListMock.data(using: .utf8) else { fatalError() }
//
//do {
//    let performanceListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(PerformanceListResponse.self, from: performanceListXMLData)
//    let performanceDetailXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(PerformanceDetailResponse.self, from: performanceDetailXMLData)
//    let facilityListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(FacilityListResponse.self, from: facilityListXMLData)
//    let facilityDetailXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(FacilityDetailResponse.self, from: facilityDetailXMLData)
//    let boxOfficeListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(BoxOfficeListResponse.self, from: boxOfficeListXMLData)
//    
//    dump(performanceListXMLData)
//    dump(performanceDetailXMLData)
//    dump(facilityListXMLData)
//    dump(facilityDetailXMLData)
//    dump(boxOfficeListXMLData)
//} catch {
//    print(error.localizedDescription)
//}


let performanceListParam = PerformanceListRequestParameter(
    stdate: .now,
    eddate: .now.addingTimeInterval(3600 * 24 * 7),
    cpage: 1,
    rows: 101,
//    shprfnm: <#T##String?#>,
//    shprfnmfct: <#T##String?#>,
//    shcate: <#T##String?#>,
    prfplccd: "FC001247",
//    signgucode: <#T##String?#>,
//    signgucodesub: <#T##String?#>,
//    kidstate: <#T##String?#>,
//    prfstate: <#T##String?#>,
//    openrun: <#T##String?#>,
//    afterdate: <#T##String?#>
)

do {
    let performanceList = try await NetworkManager.requestValue(
        router: .getPerformanceList(param: performanceListParam),
        decodingType: PerformanceListResponse.self
    )
    dump(performanceList)
} catch {
    print(error.localizedDescription)
}

//let s = try await NetworkManager.requestString(router: .getPerformanceList(param: performanceListParam))
//dump(s)
