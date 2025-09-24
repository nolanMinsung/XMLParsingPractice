//
//  FacilityDetailXMLParserDelegate.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

final class FacilityDetailXMLParserDelegate: NSObject {
    
    var facilityDetails: [FacilityDetailDTO] = []
    
    // 임시로 할당할 값들.
    private var currentFacilityDetail: FacilityDetailDTO?
    private var currentPerformancePlace: PerformancePlaceDTO?
    
    // 현재 파싱중인 Element 이름
    private var currentElementName: String?
    
//    private var currentPerformancePlaces: [PerformancePlaceDTO] = []
    
    
}


extension FacilityDetailXMLParserDelegate: XMLParserDelegate {
    
    func parserDidStartDocument(_ parser: XMLParser) {
        facilityDetails = []
    }
    
    func parser(
        _ parser: XMLParser,
        didStartElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?,
        attributes attributeDict: [String : String] = [:]
    ) {
        currentElementName = elementName
        if elementName == "db" {
            currentFacilityDetail = FacilityDetailDTO()
        } else if elementName == "mt13" {
            currentPerformancePlace = PerformancePlaceDTO()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let data = string.trimmingCharacters(in: .whitespacesAndNewlines)
        if data.isEmpty { return }
        if currentPerformancePlace != nil {
            switch currentElementName {
            case "prfplcnm":
                currentPerformancePlace?.prfplcnm += data
            case "mt13id":
                currentPerformancePlace?.mt13id += data
            case "seatscale":
                currentPerformancePlace?.seatscale += data
            case "stageorchat":
                currentPerformancePlace?.stageorchat += data
            case "stagepracat":
                currentPerformancePlace?.stagepracat += data
            case "stagedresat":
                currentPerformancePlace?.stagedresat += data
            case "stageoutdrat":
                currentPerformancePlace?.stageoutdrat += data
            case "disabledseatscale":
                currentPerformancePlace?.disabledseatscale += data
            case "stagearea":
                currentPerformancePlace?.stagearea += data
            default:
                break
            }
        } else if currentFacilityDetail != nil {
            switch currentElementName {
            case "fcltynm":
                currentFacilityDetail?.fcltynm += data
            case "mt10id":
                currentFacilityDetail?.mt10id += data
            case "mt13cnt":
                currentFacilityDetail?.mt13cnt += data
            case "fcltychartr":
                currentFacilityDetail?.fcltychartr += data
            case "opende":
                currentFacilityDetail?.opende += data
            case "seatscale":
                currentFacilityDetail?.seatscale += data
            case "telno":
                currentFacilityDetail?.telno += data
            case "relateurl":
                currentFacilityDetail?.relateurl += data
            case "adres":
                currentFacilityDetail?.adres += data
            case "la":
                currentFacilityDetail?.la += data
            case "lo":
                currentFacilityDetail?.lo += data
            case "restaurant":
                currentFacilityDetail?.restaurant += data
            case "cafe":
                currentFacilityDetail?.cafe += data
            case "store":
                currentFacilityDetail?.store += data
            case "nolibang":
                currentFacilityDetail?.nolibang += data
            case "suyu":
                currentFacilityDetail?.suyu += data
            case "parkbarrier":
                currentFacilityDetail?.parkbarrier += data
            case "restbarrier":
                currentFacilityDetail?.restbarrier += data
            case "runwbarrier":
                currentFacilityDetail?.runwbarrier += data
            case "elevbarrier":
                currentFacilityDetail?.elevbarrier += data
            case "parkinglot":
                currentFacilityDetail?.parkinglot += data
//            case "performancePlaces":
//                currentFacility?.performancePlaces += data
            default:
                break
            }
        }
    }
    
    func parser(
        _ parser: XMLParser,
        didEndElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?
    ) {
        if elementName == "mt13" {
            if let currentPerformancePlace {
                currentFacilityDetail?.performancePlaces.append(currentPerformancePlace)
            }
            // 임시 객체 초기화
            currentPerformancePlace = nil
        }
        
        if elementName == "db" {
            if let currentFacilityDetail {
                facilityDetails.append(currentFacilityDetail)
            }
            // 임시 객체 초기화
            currentFacilityDetail = nil
        }
        
        currentElementName = nil
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("XML 파싱 완료.")
        print("장소 상세정보 총 \(facilityDetails.count)개를 찾았습니다. 찾은 장소들: \(facilityDetails)")
    }
    
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: any Error) {
        print("XML 파싱 오류: \(parseError.localizedDescription)")
    }
    
}
