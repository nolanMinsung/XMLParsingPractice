//
//  main.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

print("XML 파싱을 시작합니다.")

func parseFacilities(_ source: String) throws -> [FacilityDTO] {
    guard let facilitiesXMLData = facilitiesXMLString.data(using: .utf8) else {
        throw XMLError.xmlDataNotCreated
    }
    
    let parser = XMLParser(data: facilitiesXMLData)
    let parserDelegate = FacilityXMLParserDelegate()
    parser.delegate = parserDelegate
    
    if parser.parse() {
        return parserDelegate.facilities
    } else {
        throw parser.parserError ?? XMLError.parsingFailedButErrorNotFound
    }
    
}


func parseFacilityDetails(_ source: String) throws -> [FacilityDetailDTO] {
    guard let facilityDetailsXMLData = facilityDetailMock.data(using: .utf8) else {
        throw XMLError.xmlDataNotCreated
    }
    
    let parser = XMLParser(data: facilityDetailsXMLData)
    let parserDelegate = FacilityDetailXMLParserDelegate()
    parser.delegate = parserDelegate
    
    if parser.parse() {
        return parserDelegate.facilityDetails
    } else {
        throw parser.parserError ?? XMLError.parsingFailedButErrorNotFound
    }
}

do {
//    let facilities = try parseFacilities(facilitiesXMLString)
//    facilities.enumerated().forEach { (index, facility) in
//        print("\(index). \(facility.fcltynm)")
//    }
    
    let facilities = try parseFacilityDetails(facilityDetailMock)
    facilities.enumerated().forEach { (index, facility) in
        print("\(index). \(facility.fcltynm)")
    }
} catch {
    print(error.localizedDescription)
}
