//
//  testAppTests.swift
//  testAppTests
//
//  Created by Include tech. on 05/07/17.
//  Copyright © 2017 Include tech. All rights reserved.
//

import XCTest

class testAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation1 = expectation(description: "Creating User")
        expectation1.fulfill()

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
