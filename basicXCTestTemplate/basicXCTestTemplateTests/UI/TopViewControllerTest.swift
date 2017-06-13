//
//  TopViewControllerTest.swift
//  basicXCTestTemplate
//
//  Created by menomoto on 2017/06/13.
//  Copyright © 2017年 menomoto. All rights reserved.
//

import XCTest

@testable import basicXCTestTemplate

class TopViewControllerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_topViewController() {
        let topViewController = TopViewController(labelText: "UILabel text matcher")
        
        
        let expectedText = "UILabel text matcher"
        XCTAssertTrue(isContainUILabelWithText(topViewController.view, text: expectedText))
    }
}

private func isContainUILabelWithText(_ view: UIView, text: String) -> Bool {
    
    for subview in view.subviews {
        if let label = subview as? UILabel, label.text == text {
            return true
        }
        if isContainUILabelWithText(subview, text: text) {
            return true
        }
    }
    return false
}

