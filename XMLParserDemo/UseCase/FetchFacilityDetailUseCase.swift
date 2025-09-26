//
//  FetchFacilityDetailUseCase.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation

protocol FetchFacilityDetailUseCase {
    func execute(facilityID: String) async throws -> FacilityDetailResponse
}


final class DefaultFetchFacilityDetailUseCase: FetchFacilityDetailUseCase {
    func execute(facilityID: String) async throws -> FacilityDetailResponse {
        try await NetworkManager.requestValue(
            router: .getFacilityDetail(apiKey: InfoPlist.apiKey, facilityID: facilityID),
            decodingType: FacilityDetailResponse.self
        )
    }
}
