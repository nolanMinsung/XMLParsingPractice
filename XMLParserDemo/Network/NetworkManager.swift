//
//  NetworkManager.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/26/25.
//

import Foundation
import Alamofire
import XMLCoder


struct XMLResponseSerializer<T: Decodable>: DataResponseSerializerProtocol {
    
    typealias SerializedObject = T
    
    func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: (any Error)?) throws -> T {
        guard let data, !data.isEmpty else {
            throw AFError.responseSerializationFailed(reason: .inputDataNilOrZeroLength)
        }
        
        do {
            let xmlDeCoder = XMLDecoder()
            let model = try xmlDeCoder.decode(T.self, from: data)
            return model
        } catch {
            throw AFError.responseSerializationFailed(reason: .decodingFailed(error: error))
        }
    }
    
}


final class NetworkManager {
    
    static func requestValue<T: Decodable>(router: KOPISRouter, decodingType: T.Type) async throws -> T {
        let serializer = XMLResponseSerializer<T>()
        let request = AF.request(
            router.endPoint,
            method: router.method,
            parameters: router.queryParameters,
            headers: router.headers,
        )
        
        do {
            let value = try await request.serializingResponse(using: serializer).value
            return value
        } catch {
            throw error
        }
    }
    
    static func requestString(router: KOPISRouter) async throws -> String {
        dump(router.queryParameters)
        let request = AF.request(
            router.endPoint,
            method: router.method,
            parameters: router.queryParameters,
            headers: router.headers,
        )
        
        do {
            let value = try await request.serializingString().value
            print(value)
            return value
        } catch {
            throw error
        }
    }
    
}
