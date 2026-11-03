# Independently versioned java_tools catalog

This prototype branch packages the java_tools v22.0 URL/SHA catalog as a
`java_tools` Bazel module. The binaries remain the official Bazel-built release;
this repository does not rebuild or redistribute them.

`@java_tools//:catalog.bzl` exports `JAVA_TOOLS_CONFIG`, schema version 1, and
the JDK 25 minimum compiler-runtime requirement. The rules_java fork consumes
the catalog and retains all repository creation, mappings and toolchain logic.

Use the three-module consumer instructions in the catalog-split prototype.
The fork currently requires git overrides or a custom registry; these module
versions are not published to the BCR. Bzlmod/Bazel 9.3.0 only is tested.

To update a release, copy its official release manifest into the catalog,
preserving the required artifact keys and recording compiler-JDK requirements.
The historical release scripts and documentation remain in `scripts/` and
`docs/`; production catalog-release automation is not added by this prototype.
