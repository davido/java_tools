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

"""Validate the public artifact-catalog schema without downloading tools."""

load(":catalog.bzl", "CATALOG_SCHEMA_VERSION", "JAVA_TOOLS_CONFIG", "MINIMUM_COMPILER_JDK")

def validate_catalog():
    if CATALOG_SCHEMA_VERSION != 1 or MINIMUM_COMPILER_JDK < 25:
        fail("unsupported java_tools catalog schema or compiler runtime")
    expected = ["java_tools", "java_tools_linux", "java_tools_linux_aarch64", "java_tools_windows", "java_tools_darwin_x86_64", "java_tools_darwin_arm64"]
    if sorted(JAVA_TOOLS_CONFIG["artifacts"].keys()) != sorted(expected):
        fail("java_tools catalog has missing or unexpected artifacts")
    for name, artifact in JAVA_TOOLS_CONFIG["artifacts"].items():
        checksum = artifact["sha"]
        if len(checksum) != 64:
            fail("invalid SHA-256 for " + name)
        for character in checksum.elems():
            if character not in "0123456789abcdef":
                fail("invalid SHA-256 for " + name)
        for field in ["mirror_url", "github_url"]:
            if not artifact[field].startswith("https://"):
                fail("expected HTTPS URL for " + name)
