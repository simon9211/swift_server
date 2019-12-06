//
//  File.swift
//  
//
//  Created by xiwang wang on 2019/11/15.
//

import PerfectLib
import PerfectHTTP

public func makeRoutes() -> Routes {
    var routes = Routes()
    
    routes.add(method: .get, uri: "/", handler: Handlers.indexHandlerGet)

    routes.add(method: .get, uri: "/hello", handler: Handlers.helloGet)

    routes.add(method: .get, uri: "/hello/there", handler: Handlers.helloThereGet)

    routes.add(method: .get, uri: "beers/{num_beers}", handler: Handlers.beersGet)

    routes.add(method: .get, uri: "/hello", handler: Handlers.helloGet1)

    routes.add(method: .post, uri: "/post", handler: Handlers.post)
    
    routes.add(method: .post, uri: "/home", handler: Handlers.homeContent)
    
    routes.add(method: .post, uri: "/home/below", handler: Handlers.homeBelowContent)
    
    routes.add(method: .post, uri: "/category", handler: Handlers.category)
    
    routes.add(method: .post, uri: "/category/detailList", handler: Handlers.categoryDetail)
    
    routes.add(method: .post, uri: "/goodsdetail", handler: Handlers.goodsDetail)
    
    
    return routes
}
