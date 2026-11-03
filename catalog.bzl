# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Bazel java_tools artifact catalog, independent of the rules implementation.

Version 22.0 is copied without pin changes from rules_java commit 575fa89.
Turbine in this release requires a compiler runtime of JDK 25 or later.
"""

CATALOG_SCHEMA_VERSION = 1
MINIMUM_COMPILER_JDK = 25

JAVA_TOOLS_CONFIG = {
    "version": "v22.0",
    "source_revision": "c9b10ec53b5fa49a1bb9c593f08f73ff52f60d95",
    "release": "true",
    "artifacts": {
        "java_tools_linux": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_linux-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_linux-v22.0.zip",
            "sha": "b0b3c2873f30c1123cdd77a74f89fcc4d4debc09a70c8619a4fe8e322f7fda96",
        },
        "java_tools_linux_aarch64": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_linux_aarch64-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_linux_aarch64-v22.0.zip",
            "sha": "f0899527a8784ea0510801a3ee27b3276e2bb78e599473999fe88585a505ddd3",
        },
        "java_tools_windows": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_windows-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_windows-v22.0.zip",
            "sha": "1b302daf293b9ec15eaa2705581976e8c5fd91153fabc6a939a043e6c3d9cf90",
        },
        "java_tools_darwin_x86_64": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_darwin_x86_64-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_darwin_x86_64-v22.0.zip",
            "sha": "fd5d51572f9e2911ae1564849e011805b328f982587e3aaed034f363d646452f",
        },
        "java_tools_darwin_arm64": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_darwin_arm64-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_darwin_arm64-v22.0.zip",
            "sha": "0c78a0d00f09867d56a5064857c936370dab257e5d29dc8d875825509460a456",
        },
        "java_tools": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools-v22.0.zip",
            "sha": "b13ee1eaa8681d3ec4faffab4251902a0c1b5135b1f5c718831fc5798db82f9b",
        },
    },
}
