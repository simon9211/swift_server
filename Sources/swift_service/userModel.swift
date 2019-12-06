////
////  File.swift
////
////
////  Created by xiwang wang on 2019/11/15.
////
//
//import MySQLStORM
//import StORM
//
//
//class User: MySQLStORM {
//    var id              : Int = 0
//    var firstname       : String = ""
//    var lastname        : String = ""
//    var email           : String = ""
//
//    override func table() -> String {
//        return usertable
//    }
//
//    override func to(_ this: StORMRow) {
//        id              = this.data["id"] as! Int
//        firstname       = this.data["firstname"] as! String
//        lastname        = this.data["lastname"] as! String
//        email           = this.data["email"] as! String
//    }
//
//    func rows() -> [User] {
//        var rows = [User]()
//        for i in 0..<self.results.rows.count {
//            let row = User()
//            row.to(self.results.rows[i])
//            rows.append(row)
//        }
//        return rows
//    }
//}
