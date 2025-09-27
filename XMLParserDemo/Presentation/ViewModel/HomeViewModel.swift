//
//  HomeViewModel.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import RxSwift
import RxCocoa

final class HomeViewModel {
    
    let fetchBoxOfficeUseCase: FetchBoxOfficeUseCase
    let fetchPerformanceListUseCase: FetchPerformanceListUseCase
    
    init(fetchBoxOffice: some FetchBoxOfficeUseCase,
         fetchPerformanceList: some FetchPerformanceListUseCase) {
        self.fetchBoxOfficeUseCase = fetchBoxOffice
        self.fetchPerformanceListUseCase = fetchPerformanceList
    }
    
}
