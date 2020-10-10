//
//  SHMMScriptMessageHandler.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import WebKit

public class SHMMScriptMessageHandler: NSObject, WKScriptMessageHandler {
    
    weak public var delegate: WKScriptMessageHandler?
    
    public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        delegate?.userContentController(userContentController, didReceive: message)
    }
    
}
