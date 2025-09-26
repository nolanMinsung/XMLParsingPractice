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


// MARK: - Error XML 예시

// APIKey 누락
/*
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<dbs>
    <db>
        <returncode>02</returncode>
        <errmsg>SERVICE KEY IS NOT REGISTERED ERROR</errmsg>
        <responsetime>2025-09-26 12:41:11</responsetime>
    </db>
</dbs>
*/


// row가 100 초과 시
/*
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
    <dbs>
        <db>
            <returncode>06</returncode>
            <errmsg>ìµë ì¡°íìë 100ê±´ê¹ì§ ê°ë¥í©ëë¤.</errmsg>
            <responsetime>2025-09-26 12:46:41</responsetime>
    </db>
 </dbs>
 */
