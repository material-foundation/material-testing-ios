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

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")
load("@bazel_ios_warnings//:strict_warnings_objc_library.bzl", "strict_warnings_objc_library")

licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE"])

strict_warnings_objc_library(
    name = "MDFTesting",
    srcs = glob([
        "Sources/*.m",
    ]),
    hdrs = glob([
        "Sources/*.h",
    ]),
    enable_modules = 1,
    includes = ["Sources"],
    visibility = ["//visibility:public"],
)

objc_library(
    name = "UnitTestsLib",
    srcs = glob([
        "Examples/MDFTestingExample/MDFTestingExampleTests/*.m",
    ]),
    deps = [
        ":MDFTesting",
    ],
    visibility = ["//visibility:private"],
)

ios_unit_test(
    name = "UnitTests",
    deps = [
      ":UnitTestsLib"
    ],
    minimum_os_version = "9.0",
    timeout = "short",
    visibility = ["//visibility:private"],
)
