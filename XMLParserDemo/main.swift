//
//  main.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

import XMLCoder


guard let performanceListXMLData = performanceListMock.data(using: .utf8) else { fatalError() }
guard let performanceDetailXMLData = performanceDetailMock.data(using: .utf8) else { fatalError() }
guard let facilityListXMLData = facilityListMock.data(using: .utf8) else { fatalError() }
guard let facilityDetailXMLData = facilityDetailMock.data(using: .utf8) else { fatalError() }
guard let boxOfficeListXMLData = boxOfficeListMock.data(using: .utf8) else { fatalError() }


do {
    let performanceListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(PerformanceListResponse.self, from: performanceListXMLData)
    let performanceDetailXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(PerformanceDetailResponse.self, from: performanceDetailXMLData)
    let facilityListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(FacilityListResponse.self, from: facilityListXMLData)
    let facilityDetailXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(FacilityDetailResponse.self, from: facilityDetailXMLData)
    let boxOfficeListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(BoxOfficeListResponse.self, from: boxOfficeListXMLData)
    
    dump(performanceListXMLData)
    dump(performanceDetailXMLData)
    dump(facilityListXMLData)
    dump(facilityDetailXMLData)
    dump(boxOfficeListXMLData)
} catch {
    print(error.localizedDescription)
}
