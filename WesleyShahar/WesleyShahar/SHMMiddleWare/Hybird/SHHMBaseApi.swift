//
//  SHHMBaseApi.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation

public class SHHMBaseApi {
    
    public var command: String?
    
    public var param: [String: Any]?
    
    public func setupApi(success: @escaping ([String: Any]) -> Void, failure: @escaping (Any?) -> Void, cancel: @escaping () -> Void) {
        cancel()
        
        success([:])
        
        failure(nil)
    }
    
}
