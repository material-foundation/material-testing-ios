//
//  MDFTestingSwiftExampleTests.swift
//  MDFTestingExampleTests
//
//  Created by Wenyu Zhang on 9/27/19.
//  Copyright © 2019 Google. All rights reserved.
//

import XCTest
import MDFTesting

class MDFTestingSwiftExampleTests: XCTestCase {
    func testUIColorMDFTestingEqualityAssertion() {
      let color1 = UIColor.white
      let color2 = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1);
      assertEqualFirstColor(color1, secondColor: color2)
    }
}
