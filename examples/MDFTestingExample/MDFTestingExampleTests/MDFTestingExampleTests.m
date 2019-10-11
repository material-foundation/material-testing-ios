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

#import <XCTest/XCTest.h>

#import "MDFTesting.h"

@interface MDFTestingExampleTests : XCTestCase

@end

@implementation MDFTestingExampleTests

- (void)testUIColorDefaultEqualityAssertion {
  // When
  UIColor *whiteColor1 = UIColor.whiteColor;
  UIColor *whiteColor2 = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];

  // Then
  XCTAssertNotEqualObjects(whiteColor1, whiteColor2);
}

- (void)testUIColorMDFTestingEqualityAssertion {
  // When
  UIColor *whiteColor1 = UIColor.whiteColor;
  UIColor *whiteColor2 = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];

  // Then
<<<<<<< Updated upstream
  MDFAssertEqualColors(whiteColor1, whiteColor2);
=======
  XCTAssertColors(whiteColor1, whiteColor2);
>>>>>>> Stashed changes
}

@end
