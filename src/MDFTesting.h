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
#define MDFAssertEqualColors(color1, color2) \
  CGFloat fRed = 0.0f, fGreen = 0.0f, fBlue = 0.0f, fAlpha = 0.0f; \
  [color1 getRed:&fRed green:&fGreen blue:&fBlue alpha:&fAlpha]; \
  CGFloat sRed = 0.0f, sGreen = 0.0f, sBlue = 0.0f, sAlpha = 0.0f; \
  [color2 getRed:&sRed green:&sGreen blue:&sBlue alpha:&sAlpha]; \
  XCTAssertEqualWithAccuracy(fRed, sRed, FLT_EPSILON); \
  XCTAssertEqualWithAccuracy(fGreen, sGreen, FLT_EPSILON); \
  XCTAssertEqualWithAccuracy(fBlue, sBlue, FLT_EPSILON); \
  XCTAssertEqualWithAccuracy(fAlpha, sAlpha, FLT_EPSILON);
