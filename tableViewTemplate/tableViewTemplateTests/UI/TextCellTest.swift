//
//  TextCellTest.swift
//  tableViewTemplate
//
//  Created by menomoto on 2017/06/14.
//  Copyright © 2017年 menomoto. All rights reserved.
//

import XCTest

@testable import tableViewTemplate

class TextCellTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testConvert() {
        let dateString = "Tue, 21 Feb 2017 09:53:23 +0900"
        guard let date = TextCell.convert(dateString) else {
            return
        }
        
        let dateDayString = TextCell.convertDay(date)
        
        XCTAssertEqual(dateDayString, "2/21")
    }
    
}
