# Independently versioned java_tools snapshot catalog

This experimental Bzlmod catalog selects personal `23.0-davido.1` builds
from Bazel commit `5c425b8d04a68bde4a3a3032715d350fd81c5660` (generic
and macOS) and `1c06f0ced09a14c3f7bcd95351b9b527a5658e96` (Linux).
The only intervening commit changes Bazel tar extraction, not Java tools
sources. This is not an official v23 release and is not published to the BCR.

The snapshot includes the prebuilt ProGuard allowlister added by
[bazel#32318](https://github.com/bazelbuild/bazel/pull/32318).
The generic Java archive and native Linux x86-64/macOS x86-64 archives
are rebuilt. Linux arm64, macOS arm64 and Windows retain the official
v22.0 archives. Each artifact records its own source revision/version;
`snapshot-manifest.json` records the new archives and their checksums.

`@java_tools//:catalog.bzl` exports `JAVA_TOOLS_CONFIG`, schema version 1,
and a minimum compiler runtime of JDK 25. The catalog-split rules_java
fork retains repository creation, mappings and toolchain logic.

The optional `prebuilt_proguard_allowlister_platforms` catalog field
advertises only native archives containing `:prebuilt_proguard_allowlister`.
The updated fork selects those binaries by execution platform, uses the
snapshot's source fallback elsewhere, and preserves Bazel's existing
allowlister when an older catalog omits this field. The source fallback
requires a C++ toolchain. Only the advertised x86-64 platforms avoid
that requirement through the prebuilt allowlister.

The snapshot has no mirror.bazel.build copies. Its `mirror_url` and
`github_url` intentionally point to the same personal GitHub release to
retain the prototype's existing repository-creation interface.

The Linux archive was built in Debian Bookworm (GCC 12.2, glibc 2.36),
not the official release image. This is an experimental build, with no
claim of compatibility with every Linux worker. Test on the intended
worker before adoption. Arbitrary Bazel/tools/JDK combinations and the
three retained v22 native platforms are outside this snapshot's validation.

See the prepared Gerrit consumer for commit-pinned `git_override` entries.
It also needs the updated rules_java allowlister wiring; replacing the
catalog alone in the original split fork does not select the new tool.
The historical release scripts and documentation remain in `scripts/`
and `docs/`; do not use their official publishing pipeline for this fork.
