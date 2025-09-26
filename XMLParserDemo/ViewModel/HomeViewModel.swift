//
//  HomeViewModel.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation

final class HomeViewModel {
    
    let fetchBoxOfficeUseCase: FetchBoxOfficeUseCase
    
    init(fetchBoxOffice: some FetchBoxOfficeUseCase) {
        self.fetchBoxOfficeUseCase = fetchBoxOffice
        
        // 박스오피스 호출해야 하는 시점이 되었다고 가정하자
        let boxOfficeRequestParam = BoxOfficeRequestParameter(
            service: InfoPlist.apiKey,
            stdate: .now.addingTimeInterval(-3600 * 24 * 2),
            eddate: .now.addingTimeInterval(-3600 * 24 * 1),
            catecode: nil,
            area: nil,
            srchseatscale: nil
        )
        Task.detached {
            let boxOfficeResponse = try await self.fetchBoxOfficeUseCase.execute(requestInfo: boxOfficeRequestParam)
            dump(boxOfficeResponse)
        }
    }
    
}
