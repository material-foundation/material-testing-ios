# material-testing-ios

This repository extends XCTest framework with testing helper additions.

## Testing Extension

A category on XCTestCase provides various methods for test assertions:

```objective-c
- (void)testUIColorMDFTestingEqualityAssertion {
  // When
  UIColor *whiteColor1 = UIColor.whiteColor;
  UIColor *whiteColor2 = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];

  // Then
  XCTAssertEqualColors(whiteColor1, whiteColor2);
}
```

## Usage

See examples/ for a detailed example of how to use the functionality provided by this library.

## License

MDFTesting is licensed under the [Apache License Version 2.0](LICENSE).
