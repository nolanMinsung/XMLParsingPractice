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
//    let boxOfficeListXMLData = try XMLDecoder(trimValueWhitespaces: true, removeWhitespaceElements: true).decode(BoxOfficeResponse.self, from: boxOfficeListXMLData)
//    
//    dump(performanceListXMLData)
//    dump(performanceDetailXMLData)
//    dump(facilityListXMLData)
//    dump(facilityDetailXMLData)
//    dump(boxOfficeListXMLData)
//} catch {
//    print(error.localizedDescription)
//}


// MARK: - 공연 정보 목록
//let performanceListParam = PerformanceListRequestParameter(
//    stdate: .now,
//    eddate: .now.addingTimeInterval(3600 * 24 * 7),
//    cpage: 1,
//    rows: 101,
//    shprfnm: nil,
//    shprfnmfct: nil,
//    shcate: nil,
//    prfplccd: "FC001247",
//    signgucode: nil,
//    signgucodesub: nil,
//    kidstate: nil,
//    prfstate: nil,
//    openrun: nil,
//    afterdate: nil
//)

//do {
//    let performanceList = try await NetworkManager.requestValue(
//        router: .getPerformanceList(param: performanceListParam),
//        decodingType: PerformanceListResponse.self
//    )
//    dump(performanceList)
//} catch {
//    print(error.localizedDescription)
//}


// MARK: - 공연 상세 정보
//do {
//    let performanceDetail = try await NetworkManager.requestValue(
//        router: .getPerformanceDetail(apiKey: InfoPlist.apiKey, performanceID: "PF273149"),
//        decodingType: PerformanceDetailResponse.self
//    )
//    dump(performanceDetail)
//} catch {
//    print(error.localizedDescription)
//}


// MARK: - 공연시설 목록

//let facilityListRequestParam = FacilityListRequestParameter(
//    service: InfoPlist.apiKey,
//    cpage: 1,
//    rows: 100,
//    shprfnmfct: "예술",
//    fcltychartr: nil,
//    signgucode: nil,
//    signgucodesub: nil,
//    afterdate: nil
//)
//do {
//    let facilityList = try await NetworkManager.requestValue(
//        router: .getFacilityList(param: facilityListRequestParam),
//        decodingType: FacilityListResponse.self
//    )
//    dump(facilityList)
//} catch {
//    dump(error)
//}


// MARK: - 공연시설 상세
//do {
//    let facilityDetail = try await NetworkManager.requestValue(
//        router: .getFacilityDetail(apiKey: InfoPlist.apiKey, facilityID: "FC001247"),
//        decodingType: FacilityDetailResponse.self
//    )
//    dump(facilityDetail)
//} catch {
//    dump(error)
//}


// MARK: - 예매상황판
//let boxOfficeRequestParam = BoxOfficeRequestParameter(
//    service: InfoPlist.apiKey,
//    stdate: .now.addingTimeInterval(-3600 * 24 * 2),
//    eddate: .now.addingTimeInterval(-3600 * 24 * 1),
//    catecode: nil,
//    area: nil,
//    srchseatscale: nil
//)
//do {
//    let boxOffice = try await NetworkManager.requestValue(
//        router: .getBoxOffice(param: boxOfficeRequestParam),
//        decodingType: BoxOfficeResponse.self
//    )
//    dump(boxOffice)
//} catch {
//    dump(error)
//}

// 뷰컨트롤러 안에서..(아마 viewDidLoad?)
let fetchBoxOfficeUseCase = DefaultFetchBoxOfficeUseCase()
let homeViewModel = HomeViewModel(fetchBoxOffice: fetchBoxOfficeUseCase)
let boxOfficeRequestParam = BoxOfficeRequestParameter(
    service: InfoPlist.apiKey,
    stdate: .now.addingTimeInterval(-3600*24*3),
    eddate: .now.addingTimeInterval(-3600*24*3)
)
var taskIsFinished = false
Task {
    do {
        let boxOfficeResponse = try await homeViewModel.fetchBoxOfficeUseCase.execute(requestInfo: boxOfficeRequestParam)
        dump(boxOfficeResponse)
        taskIsFinished = true
    } catch {
        print(error.localizedDescription)
        taskIsFinished = true
    }
}

while !taskIsFinished && RunLoop.current.run(mode: .default, before: .distantFuture) {
    // RunLoop가 이벤트를 처리하며 대기
}


//let s = try await NetworkManager.requestString(router: .getPerformanceList(param: performanceListParam))
//let s = try await NetworkManager.requestString(router: .getPerformanceDetail(apiKey: InfoPlist.apiKey, performanceID: "PF275019"))
//print(s)
