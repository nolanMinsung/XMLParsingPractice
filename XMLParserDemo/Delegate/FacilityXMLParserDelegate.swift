//
//  FacilityXMLParserDelegate.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

class FacilityXMLParserDelegate: NSObject {
    
private(set) var facilities: [FacilityDTO] = []
    
    private var currentFacility: FacilityDTO?
    private var currentElementName: String?
    
}


extension FacilityXMLParserDelegate: XMLParserDelegate {
    
    // 파싱 시작 시 호출되는 메서드
    func parserDidStartDocument(_ parser: XMLParser) {
        facilities = []
    }
    
    // 여는 태그를 만났을 때 호출되는 메서드
    func parser(
        _ parser: XMLParser,
        didStartElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?,
        attributes attributeDict: [String : String] = [:]
    ) {
        currentElementName = elementName
        if elementName == "db" {
            currentFacility = FacilityDTO()
        }
    }
    
    // 태그 안의 실제 값을 만났을 때 호출되는 메서드
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let value = string.trimmingCharacters(in: .whitespacesAndNewlines)
        if !value.isEmpty {
            switch currentElementName {
            case "fcltynm":
                currentFacility?.fcltynm += value
//                print("fcltynm에 값 추가함: \(value)")
            case "mt10id":
                currentFacility?.mt10id += value
//                print("mt10id에 값 추가함: \(value)")
            case "mt13cnt":
                currentFacility?.mt13cnt += value
//                print("mt13cnt에 값 추가함: \(value)")
            case "fcltychartr":
                currentFacility?.fcltychartr += value
//                print("fcltychartr에 값 추가함: \(value)")
            case "sidonm":
                currentFacility?.sidonm += value
//                print("sidonm에 값 추가함: \(value)")
            case "gugunnm":
                currentFacility?.gugunnm += value
//                print("gugunnm에 값 추가함: \(value)")
            case "opende":
                currentFacility?.opende += value
//                print("opende에 값 추가함: \(value)")
            default:
                #if DEBUG
                print("unknown character found while parsing xml: \(value)")
                #endif
                break
            }
        }
    }
    
    // 닫는 태그를 만났을 때 호출되는 메서드
    func parser(
        _ parser: XMLParser,
        didEndElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?
    ) {
        if elementName == "db",
           let facility = currentFacility {
            facilities.append(facility)
            currentFacility = nil
        }
        currentElementName = nil
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("XML 파싱이 완료되었습니다. 총 \(facilities.count)개의 시설 정보를 찾았습니다.")
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: any Error) {
        print("XML 파싱 오류: \(parseError.localizedDescription)")
    }
    
}
