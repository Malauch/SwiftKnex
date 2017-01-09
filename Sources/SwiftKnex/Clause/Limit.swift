//
//  Limit.swift
//  SwiftKnex
//
//  Created by Yuki Takei on 2017/01/13.
//
//

struct Limit {
    let limit: Int
    let offset: Int?
    
    init(limit: Int, offset: Int? = nil){
        self.limit = limit
        self.offset = offset
    }
}

extension Limit {
    func build() -> String {
        if let offset = self.offset {
            return "LIMIT \(offset), \(limit)"
        } else  {
            return "LIMIT \(limit)"
        }
    }
}
