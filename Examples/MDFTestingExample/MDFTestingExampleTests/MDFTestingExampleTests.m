//
//  MDFTestingExampleTests.m
//  MDFTestingExampleTests
//
//  Created by Wenyu Zhang on 9/24/19.
//  Copyright © 2019 Wenyu Zhang. All rights reserved.
//

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
  XCTAssertEqualColors(whiteColor1, whiteColor2);
}

@end
