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

/*!
 * @define MDFAssertEqualColors(color1, color2)
 * Generates a failure when Generates a failure when two UIColor instances are not equal in RGB color space.
 * @param color1 The first color of UIColor type.
 * @param color2 The second color of UIColor type.
*/
#define MDFAssertEqualColors(color1, color2) [self mdf_assertEqualFirstColor:color1 secondColor:color2];

@interface XCTestCase (MDFTesting)

/// Generates a failure when two UIColor instances are not equal in RGB color space.
/// @param firstColor The first color of UIColor type.
/// @param secondColor The second color of UIColor type.
- (void)mdf_assertEqualFirstColor:(UIColor *)firstColor secondColor:(UIColor *)secondColor;

@end
