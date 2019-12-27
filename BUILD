# Copyright 2019-present The Material Foundation Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test_suite")
load("@bazel_ios_warnings//:strict_warnings_objc_library.bzl", "strict_warnings_objc_library")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple/testing/default_runner:ios_test_runner.bzl", "ios_test_runner")

licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE"])

strict_warnings_objc_library(
    name = "MDFTesting",
    srcs = glob([
        "src/*.m",
    ]),
    hdrs = glob([
        "src/*.h",
    ]),
    enable_modules = 1,
    includes = ["src"],
    sdk_frameworks = ["XCTest"],
    visibility = ["//visibility:public"],
)

swift_library(
    name = "MDFTestingSwift",
    srcs = glob([
        "src/*.swift",
    ]),
    module_name = "MDFTesting",
    visibility = ["//visibility:public"],
)

objc_library(
    name = "UnitTestsLib",
    srcs = glob([
        "examples/MDFTestingExample/MDFTestingExampleTests/*.m",
    ]),
    deps = [
        ":MDFTesting",
    ],
    testonly = 1,
)

swift_library(
    name = "SwiftUnitTestsLib",
    srcs = glob([
        "examples/MDFTestingExample/MDFTestingExampleTests/*.swift",
    ]),
    deps = [
        ":MDFTestingSwift",
    ],
    testonly = 1,
)

ios_test_runner(
    name = "IPAD_PRO_12_9_IN_9_3",
    device_type = "iPad Pro (12.9-inch)",
    os_version = "9.3",
)

ios_test_runner(
    name = "IPHONE_7_PLUS_IN_10_3",
    device_type = "iPhone 7 Plus",
    os_version = "10.3",
)

ios_test_runner(
    name = "IPHONE_X_IN_11_4",
    device_type = "iPhone X",
    os_version = "11.4",
)

ios_test_runner(
    name = "IPHONE_XS_MAX_IN_12_2",
    device_type = "iPhone Xs Max",
    os_version = "12.2",
)

ios_unit_test_suite(
    name = "UnitTests",
    deps = [
      ":UnitTestsLib",
      ":SwiftUnitTestsLib",
    ],
    minimum_os_version = "9.0",
    timeout = "short",
    runners = [
        ":IPAD_PRO_12_9_IN_9_3",
        ":IPHONE_7_PLUS_IN_10_3",
        ":IPHONE_X_IN_11_4",
        ":IPHONE_XS_MAX_IN_12_2",
    ],
)
