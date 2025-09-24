//
//  FacilityDetailDTO.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

struct FacilityDetailDTO {
    var fcltynm: String = ""
    var mt10id: String = ""
    var mt13cnt: String = ""
    var fcltychartr: String = ""
    var opende: String = ""
    var seatscale: String = ""
    var telno: String = ""
    var relateurl: String = ""
    var adres: String = ""
    var la: String = ""
    var lo: String = ""
    var restaurant: String = ""
    var cafe: String = ""
    var store: String = ""
    var nolibang: String = ""
    var suyu: String = ""
    var parkbarrier: String = ""
    var restbarrier: String = ""
    var runwbarrier: String = ""
    var elevbarrier: String = ""
    var parkinglot: String = ""
    var performancePlaces: [PerformancePlaceDTO] = []
}


struct PerformancePlaceDTO {
    var prfplcnm: String = ""
    var mt13id: String = ""
    var seatscale: String = ""
    var stageorchat: String = ""
    var stagepracat: String = ""
    var stagedresat: String = ""
    var stageoutdrat: String = ""
    var disabledseatscale: String = ""
    var stagearea: String = ""
}



extension FacilityDetailDTO: CustomStringConvertible {
    
    var description: String {
        "\n-----장소 상세 정보-----\n이름: \(fcltynm)\n공연장 목록: \(performancePlaces)\n"
    }
    
}


extension PerformancePlaceDTO: CustomStringConvertible {
    var description: String {
        "\n--------공연장--------\n이름: \(prfplcnm)\n좌석 규모: \(seatscale)\n---------------------\n"
    }
}
