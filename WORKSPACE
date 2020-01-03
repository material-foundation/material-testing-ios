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

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file", "http_archive")

# TODO(https://github.com/material-foundation/material-testing-ios/issues/8):
# google/xctestrunner 0.2.10 currently has a bug that makes it impossible to run tests on
# pre-iOS 12.2 devices with Bazel when using Xcode 11. This bug has been fixed in
# https://github.com/google/xctestrunner/pull/13.
http_file(
    name = "xctestrunner",
    executable = 1,
    urls = [
        "https://github.com/material-foundation/xctestrunner/releases/download/0.2.10-patch/ios_test_runner.par",
    ],
    sha256 = "a0a8be06b14f787f6017474b1ed33068c616b5b1154cf16e2e7ac3e7f047fd8c",
)

git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    commit = "19f031f09185e0fcd722c22e596d09bd6fff7944",  # 0.19.0
    shallow_since = "1570721035 -0700",  # 10-10-2019
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

git_repository(
    name = "bazel_ios_warnings",
    remote = "https://github.com/material-foundation/bazel_ios_warnings.git",
    commit = "c3f720c0838af1ee53299aa6efda87cf729146b4",  # v3.0.0
    shallow_since = "1545400728 -0500"  # 12-21-2018
)

# This override of the zlib package resolves the following error:
# "no such package '@zlib//': The repository '@zlib' could not be resolved"
# Additional context available at: https://github.com/bazelbuild/bazel/issues/10270
http_archive(
    name = "zlib",
    build_file = "@com_google_protobuf//:third_party/zlib.BUILD",
    sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
    strip_prefix = "zlib-1.2.11",
    urls = [
        "https://mirror.bazel.build/zlib.net/zlib-1.2.11.tar.gz",
        "https://zlib.net/zlib-1.2.11.tar.gz",
    ],
)
