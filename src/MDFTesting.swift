/*
Copyright 2019-present Google Inc.. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import XCTest

extension XCTestCase {

    public func MDFAssertEqualColors(_ color1: UIColor,
                                     _ color2: UIColor,
                                     file: StaticString = #file,
                                     line: UInt = #line) {
      var red1, green1, blue1, alpha1 : CGFloat
      (red1, green1, blue1, alpha1) = (0.0, 0.0, 0.0, 0.0)
      color1.getRed(&red1, green: &green1, blue: &blue1, alpha: &alpha1)

      var red2, green2, blue2, alpha2 : CGFloat
      (red2, green2, blue2, alpha2) = (0.0, 0.0, 0.0, 0.0)
      color2.getRed(&red2, green: &green2, blue: &blue2, alpha: &alpha2)

      XCTAssertEqual(red1, red2, accuracy: CGFloat.ulpOfOne, file: file, line: line)
      XCTAssertEqual(green1, green2, accuracy: CGFloat.ulpOfOne, file: file, line: line)
      XCTAssertEqual(blue1, blue2, accuracy: CGFloat.ulpOfOne, file: file, line: line)
      XCTAssertEqual(alpha1, alpha2, accuracy: CGFloat.ulpOfOne, file: file, line: line)
  }

}
