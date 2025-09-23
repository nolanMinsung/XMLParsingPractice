//
//  XMLError.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

enum XMLError: LocalizedError {
    case xmlDataNotCreated
    case parsingFailedButErrorNotFound
    
    var errorDescription: String? {
        switch self {
        case .xmlDataNotCreated:
            "xml data가 생성되지 않았습니다. 문자열이 Data로 잘 변환되었는지 확인해 보세요."
        case .parsingFailedButErrorNotFound:
            "xml parser의 parse() 메서드 반환값이 false인데, parserError가 nil인 상황."
        }
    }
}
