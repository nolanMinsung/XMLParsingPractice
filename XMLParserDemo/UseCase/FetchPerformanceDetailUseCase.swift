//
//  FetchPerformanceDetailUseCase.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation

protocol FetchPerformanceDetailUseCase {
    func execute(performanceID: String) async throws -> PerformanceDetailResponse
}


final class DefaultFetchPerformanceDetailUseCase: FetchPerformanceDetailUseCase {
    func execute(performanceID: String) async throws -> PerformanceDetailResponse {
        return try await NetworkManager.requestValue(
            router: .getPerformanceDetail(apiKey: InfoPlist.apiKey, performanceID: performanceID),
            decodingType: PerformanceDetailResponse.self
        )
    }
}
