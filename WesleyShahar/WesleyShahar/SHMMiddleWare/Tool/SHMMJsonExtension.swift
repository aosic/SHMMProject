//
//  SHMMJsonExtension.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation

extension String {
    
    public func getObjcet() -> Any? {
        if self.count < 1 {
            return nil
        }
        if let data = self.data(using: .utf8) {
            if data.count < 1 {
                return nil
            }
        
            let value = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
            return value
        } else {
            return nil
        }
    }
}

extension NSString {
    
}

extension Array {
    public func converToJson() -> String {
        let data = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted)
        if let rData = data {
            if let strJson = NSString(data: rData, encoding: String.Encoding.utf8.rawValue) {
                var v = strJson as String
                v = v.replacingOccurrences(of: " ", with: "")
                v = v.replacingOccurrences(of: "\n", with: "")
                return v
            }
        }
        return ""
    }
}

extension NSArray {
    public func converToJson() -> String {
        let data = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted)
        if let rData = data {
            if let strJson = NSString(data: rData, encoding: String.Encoding.utf8.rawValue) {
                var v = strJson as String
                v = v.replacingOccurrences(of: " ", with: "")
                v = v.replacingOccurrences(of: "\n", with: "")
                return v
            }
        }
        return ""
    }
}

extension Dictionary {
    public func converToJson() -> String {
        let data = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted)
        if let rData = data {
            if let strJson = NSString(data: rData, encoding: String.Encoding.utf8.rawValue) {
                var v = strJson as String
                v = v.replacingOccurrences(of: " ", with: "")
                v = v.replacingOccurrences(of: "\n", with: "")
                return v
            }
        }
        return ""
    }
}

extension NSDictionary {
    public func converToJson() -> String {
        let data = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted)
        if let rData = data {
            if let strJson = NSString(data: rData, encoding: String.Encoding.utf8.rawValue) {
                var v = strJson as String
                v = v.replacingOccurrences(of: " ", with: "")
                v = v.replacingOccurrences(of: "\n", with: "")
                return v
            }
        }
        return ""
    }
}
