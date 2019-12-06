//
//  File.swift
//  
//
//  Created by xiwang wang on 2019/11/15.
//

import PerfectHTTP

struct Filter404: HTTPResponseFilter {
    func filterBody(response: HTTPResponse, callback: (HTTPResponseFilterResult) -> ()) {
        callback(.continue)
    }
    
    func filterHeaders(response: HTTPResponse, callback: (HTTPResponseFilterResult) -> ()) {
        if case .notFound = response.status {
            response.setBody(string: "file \(response.request.path) not exist")
            response.setHeader(.contentLength, value: "\(response.bodyBytes.count)")
        } else {
            callback(.continue)
        }
    }
}
