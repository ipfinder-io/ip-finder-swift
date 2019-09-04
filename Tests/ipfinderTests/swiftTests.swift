import XCTest
@testable import ipfinder

final class swiftTests: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
       // XCTAssertEqual(swift().text, "Hello, World!")
       let ipfinder = Ipfinder()
       //  dump(ipfinder);
      // print (ipfinder.call("1.0.0.0",format:"jsop"))

       //let data = ipfinder.getStatus()

       //print(data)

     //  print(data["type"].stringValue)

    	XCTAssertEqual(ipfinder.DEFAULT_BASE_URL, "https://api.ipfinder.io/v1/")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
