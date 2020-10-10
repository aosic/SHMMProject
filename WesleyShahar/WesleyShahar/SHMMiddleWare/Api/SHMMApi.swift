//
//  SHMMApi.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation

public class SHMMApi {
    
    weak public var delegate: SHMMApiProtocol?

}

extension SHMMApi {
    
    public func callApi(command: String, param: String, callBack: @escaping ([String: Any]) -> Void) {
        let request = SHMMApiRequest()
        request.command = command
        request.callBack = callBack
        
        delegate?.didReceiveHybridApi(request: request)
    }
}
