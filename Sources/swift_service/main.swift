import PerfectHTTP
import PerfectHTTPServer
import Foundation
import PerfectRequestLogger
//import PerfectMySQL



RequestLogFile.location = "./log.log"

let server = HTTPServer()
server.serverPort = 8888
server.documentRoot = "/Users/xiwangwang/Documents/aws-ubuntu/swift_service/webroot"

server.addRoutes(makeRoutes())
server.setResponseFilters([(Filter404(), .high)])

// MySQL

let testHost = "0.0.0.0"
let testUser = "root"
let testPassword = "simon123"
let testDB = "mydatabase"
let usertable = "users"


func fetchData() {
//    let mysql = MySQL()
//    let connected = mysql.connect(host: testHost, user: testUser, password: testPassword, db: testDB)
//    guard connected else {
//        print(mysql.errorMessage())
//        return
//    }
//    
//    defer {
//        mysql.close()
//    }
//    
//    let querySuccess = mysql.query(statement: "SELECT * FROM \(usertable)")
//    // 确保查询完成
//    guard querySuccess else {
//        return
//    }
// 
//    // 在当前会话过程中保存查询结果
//    let results = mysql.storeResults()! //因为上一步已经验证查询是成功的，因此这里我们认为结果记录集可以强制转换为期望的数据结果。当然您如果需要也可以用if-let来调整这一段代码。
// 
//    var ary = [[String:Any]]() //创建一个字典数组用于存储结果
 
//    results.forEachRow { row in
//        let optionName = getRowString(forRow: row[0]) //保存选项表的Name名称字段，应该是所在行的第一列，所以是row[0].
//        let optionValue = getRowString(forRow: row[1]) //保存选项表Value字段
//        ary.append("\(optionName)":optionValue]) //保存到字典内
//    }
}

//func setupMySQLDB() {
//    let mysql = MySQL()
//    let connected = mysql.connect(host: testHost, user: testUser, password: testPassword, db: testDB)
//    guard connected else {
//        print(mysql.errorMessage())
//        return
//    }
//
//    defer {
//        mysql.close()
//    }
//
//    let sql = """
//    CREATE TABLE IF NOT EXISTS \(usertable) (id VARCHAR(64) PRIMARY KEY NOT NULL, firstname VARCHAR(64), lastname VARCHAR(64), email VARCHAR(64))
//    """
//
//    guard mysql.query(statement: sql) else {
//        print(mysql.errorMessage())
//        return
//    }
//
//    fetchData()
//}


//do {
//    // 启动HTTP服务器
//    try HTTPServer.launch(
//        .server(name:"localhost", port:8181, routes:routes),
//        .server(name:"localhost", port:8888, documentRoot:"/Users/xiwangwang/Documents/aws-ubuntu/swift_service/webroot")
//    )
//} catch {
//    fatalError("\(error)") // fatal error launching one of the servers
//}

do {
//    setupMySQLDB()
//    print(Bundle.main.executablePath!)
//    let mysql = MySQL()
//    let connected = mysql.connect(host: testHost, user: testUser, password: testPassword, db: testDB)
//    let obj = User(connected)
//    obj.firstname = "simon"
//    obj.lastname    = "Smith"
//
//    try obj.save {
//        id in obj.id = id as! Int
//    }
//
//    email = "joe.smith@example.com"
//    try obj.save()

    try server.start()
} catch {
    print("抛出网络错误\(error)")
}



/*
 "routes":[
     [
         "method":"get",
         "uri":"/**",
         "handler":"PerfectHTTPServer.HTTPHandler.staticFiles",
         "documentRoot":"/path/to/webroot"
     ],
     [
         "methods":["get", "post"],
         "uri":"/api/**",
         "handler":"PerfectHTTPServer.HTTPHandler.redirect",
         "base":"http://other.server.ca"
     ]
 ] */*/*/
