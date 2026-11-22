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

"""Experimental java_tools snapshot catalog, independent of the Java rules.

The generic, Linux x86-64 and macOS x86-64 archives are personal snapshot
builds. Other native archives retain their official v22.0 pins; their
per-artifact metadata records that distinction. No official v23.0 is implied.
"""

CATALOG_SCHEMA_VERSION = 1
MINIMUM_COMPILER_JDK = 25

JAVA_TOOLS_CONFIG = {
    "version": "v23.0-davido.2",
    "source_revision": "227605fd2aecce4770c2f36053130aefb101406b",
    "release": "false",
    "artifacts": {
        "java_tools_linux": {
            "mirror_url": "https://github.com/davido/java_tools/releases/download/java_v23.0-davido.2/java_tools_linux-v23.0-davido.2.zip",
            "github_url": "https://github.com/davido/java_tools/releases/download/java_v23.0-davido.2/java_tools_linux-v23.0-davido.2.zip",
            "sha": "d51fe945a3429f4c8e3044d42c373ada7148dfb381e49df086fcec97c8ed718a",
            "source_revision": "227605fd2aecce4770c2f36053130aefb101406b",
            "version": "v23.0-davido.2",
        },
        "java_tools_linux_aarch64": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_linux_aarch64-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_linux_aarch64-v22.0.zip",
            "sha": "f0899527a8784ea0510801a3ee27b3276e2bb78e599473999fe88585a505ddd3",
            "version": "v22.0",
            "source_revision": "c9b10ec53b5fa49a1bb9c593f08f73ff52f60d95",
        },
        "java_tools_windows": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_windows-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_windows-v22.0.zip",
            "sha": "1b302daf293b9ec15eaa2705581976e8c5fd91153fabc6a939a043e6c3d9cf90",
            "version": "v22.0",
            "source_revision": "c9b10ec53b5fa49a1bb9c593f08f73ff52f60d95",
        },
        "java_tools_darwin_x86_64": {
            "mirror_url": "https://github.com/davido/java_tools/releases/download/java_v23.0-davido.2/java_tools_darwin_x86_64-v23.0-davido.2.zip",
            "github_url": "https://github.com/davido/java_tools/releases/download/java_v23.0-davido.2/java_tools_darwin_x86_64-v23.0-davido.2.zip",
            "sha": "4660dca61c14bef2b7f06c3b3d762aecb9004b77249fe754a746e57ea27e084d",
            "source_revision": "227605fd2aecce4770c2f36053130aefb101406b",
            "version": "v23.0-davido.2",
        },
        "java_tools_darwin_arm64": {
            "mirror_url": "https://mirror.bazel.build/bazel_java_tools/releases/java/v22.0/java_tools_darwin_arm64-v22.0.zip",
            "github_url": "https://github.com/bazelbuild/java_tools/releases/download/java_v22.0/java_tools_darwin_arm64-v22.0.zip",
            "sha": "0c78a0d00f09867d56a5064857c936370dab257e5d29dc8d875825509460a456",
            "version": "v22.0",
            "source_revision": "c9b10ec53b5fa49a1bb9c593f08f73ff52f60d95",
        },
        "java_tools": {
            "mirror_url": "https://github.com/davido/java_tools/releases/download/java_v23.0-davido.2/java_tools-v23.0-davido.2.zip",
            "github_url": "https://github.com/davido/java_tools/releases/download/java_v23.0-davido.2/java_tools-v23.0-davido.2.zip",
            "sha": "8302375bdf2c4ad5a9e15c03a4708d0d2e1b62a018b8b5842f185fc367b13a13",
            "source_revision": "227605fd2aecce4770c2f36053130aefb101406b",
            "version": "v23.0-davido.2",
        },
    },
    "prebuilt_proguard_allowlister_platforms": [
        "darwin_x86_64",
        "linux",
    ],
}
