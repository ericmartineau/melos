# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2022-12-05

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`dart_bom` - `v1.10.0`](#dart_bom---v1100)
 - [`melos` - `v2.8.0`](#melos---v280)

---

#### `dart_bom` - `v1.10.0`

 - **FIX**: Handle none. ([2b8146d6](https://github.com/invertase/melos/commit/2b8146d672a3e5e91da43dc4dd98eb4b4e5ef326))
 - **FIX**: Handle none. ([cbf90c4a](https://github.com/invertase/melos/commit/cbf90c4a9dadebc5a7152e63e269d7d413de55ad))
 - **FIX**: Handle none. ([8269d948](https://github.com/invertase/melos/commit/8269d9483884eb402b06f026c2c8d1b184f9f98f))
 - **FIX**: Handle none. ([ca03b056](https://github.com/invertase/melos/commit/ca03b056ce58fcc6d81101e5d441e220ce878320))
 - **FIX**: Fixing commands. ([10fd41fa](https://github.com/invertase/melos/commit/10fd41fa8f8660e280c279a571379c9523f39a13))
 - **FIX**: Null versions report as path. ([79cff910](https://github.com/invertase/melos/commit/79cff9105a50bb08a7f5f6a5a635274901557561))
 - **FIX**: dont print out version when publish_to=none. ([f131e833](https://github.com/invertase/melos/commit/f131e833b7163ca64ea6ee71b2a9c95f61ee5642))
 - **FIX**: Formatting. ([12e18a01](https://github.com/invertase/melos/commit/12e18a017dce6788693e22ae3c2e15c31e5ca84e))
 - **FIX**: Removing extra output. ([ad053e18](https://github.com/invertase/melos/commit/ad053e186f6f920e84c346bf6a7d1c3d7365334a))
 - **FIX**: Missing help flag. ([1657d78c](https://github.com/invertase/melos/commit/1657d78cb2636288460f70447213f444266a717f))
 - **FIX**: Forgot to add the executables section. ([2cd8f25f](https://github.com/invertase/melos/commit/2cd8f25f0b169baf50e5246521e2422459725b75))
 - **FEAT**: Adding some commands:. ([36412ce0](https://github.com/invertase/melos/commit/36412ce0cf63079d9d9c5dc623200e923a54ee63))
 - **FEAT**: :Adding pub lookups2. ([5d7ccf25](https://github.com/invertase/melos/commit/5d7ccf257737795545f63e43053fb8d095de9695))
 - **FEAT**: :Adding pub lookups. ([2343d4d7](https://github.com/invertase/melos/commit/2343d4d7bfbbe58f4abb6fb2ea14570c591f5478))

#### `melos` - `v2.8.0`

 - **REFACTOR**: use `homepage` and `repository` keys in `pubspec.yaml` ([#354](https://github.com/invertase/melos/issues/354)). ([c7a78e3a](https://github.com/invertase/melos/commit/c7a78e3af1ebc3d3a0d2973fdbe154813b8eb2e3))
 - **REFACTOR**: enable more lint rules ([#346](https://github.com/invertase/melos/issues/346)). ([70448bec](https://github.com/invertase/melos/commit/70448bec7d8cf5f8d0a8dc8c2660e70033936329))
 - **REFACTOR**: remove local fork of `yamlicious` ([#345](https://github.com/invertase/melos/issues/345)). ([64a15b83](https://github.com/invertase/melos/commit/64a15b83f87d9c21c0bcad10f4e6d4941f935091))
 - **REFACTOR**: remove local fork of `prompts` package ([#344](https://github.com/invertase/melos/issues/344)). ([200450c3](https://github.com/invertase/melos/commit/200450c3064ae461dafc1eebee285c762a28eba1))
 - **REFACTOR**: encapsulate log formatting in `MelosLogger` ([#314](https://github.com/invertase/melos/issues/314)). ([ec808b02](https://github.com/invertase/melos/commit/ec808b0205cb267f3c8bedd8dce98a02f9f6a086))
 - **FIX**: `scripts.*.exec.failFast` option in `melos.yaml` ([#359](https://github.com/invertase/melos/issues/359)). ([16fe6916](https://github.com/invertase/melos/commit/16fe691665466e81e34c87451e8b1ca32809bf95))
 - **FIX**: don't override Intellij module config files ([#351](https://github.com/invertase/melos/issues/351)). ([850e9f82](https://github.com/invertase/melos/commit/850e9f8227ff3233b3f348260ec16ff05b13991d))
 - **FIX**: false positive for non-unique packages ([#348](https://github.com/invertase/melos/issues/348)). ([9c136194](https://github.com/invertase/melos/commit/9c136194ac888be5f6b6ccc0543ea369507ba129))
 - **FIX**: follow up [#330](https://github.com/invertase/melos/issues/330) ([#331](https://github.com/invertase/melos/issues/331)). ([f6eec0a2](https://github.com/invertase/melos/commit/f6eec0a295c186715a68ee5b6ee96f32de2184e9))
 - **FIX**: find packages in matched directories ([#330](https://github.com/invertase/melos/issues/330)). ([c7be5235](https://github.com/invertase/melos/commit/c7be523517155ab0a4221e3bf95474cd2cea17a3))
 - **FIX**: make file IO more robust ([#329](https://github.com/invertase/melos/issues/329)). ([dfd877d6](https://github.com/invertase/melos/commit/dfd877d62b607cf5c2c482c5a9719e4d5523606a))
 - **FIX**: handle `UsageException` ([#328](https://github.com/invertase/melos/issues/328)). ([c187f9d9](https://github.com/invertase/melos/commit/c187f9d99197d3549b3da9b9612509317f03171a))
 - **FIX**: pass extra args to script when invoked without `run` ([#316](https://github.com/invertase/melos/issues/316)). ([f0a62a2d](https://github.com/invertase/melos/commit/f0a62a2d124b4b8e29534c16daaff88a49f69442))
 - **FIX**: report all dependencies in `list` command ([#313](https://github.com/invertase/melos/issues/313)). ([bb76d3a1](https://github.com/invertase/melos/commit/bb76d3a126794df05d0c823f6f8aae0311761ae1))
 - **FIX**: respect user `dependency_overrides` ([#312](https://github.com/invertase/melos/issues/312)). ([ff5bfbe6](https://github.com/invertase/melos/commit/ff5bfbe6a43f3a1a788832951c1873d150a28d7d))
 - **FIX**: Run Process.runSync in another shell to get Dart version ([#300](https://github.com/invertase/melos/issues/300)). ([0aa81a7b](https://github.com/invertase/melos/commit/0aa81a7bbad0d635981ffd52d323fe80dff97458))
 - **FEAT**: Adding some features:. ([ad04f451](https://github.com/invertase/melos/commit/ad04f451357e532b204846b6d2d2d3cfb0e3b0fc))
 - **FEAT**: Making run accept a List or String. ([c787fe62](https://github.com/invertase/melos/commit/c787fe623dd59f4445555140c1c6945fca550dae))
 - **FEAT**: write conventional commit scopes in changelog ([#341](https://github.com/invertase/melos/issues/341)). ([0c64d61e](https://github.com/invertase/melos/commit/0c64d61eb9fa0f65b85a21e0843e112d0b717733))
 - **FEAT**: add `runPubGetOffline` option ([#326](https://github.com/invertase/melos/issues/326)). ([8358a5a1](https://github.com/invertase/melos/commit/8358a5a11b55a81e1a01b31fe1931f7ba88c07e0))
 - **FEAT**: add includeCommitId option ([#325](https://github.com/invertase/melos/issues/325)). ([e981adf7](https://github.com/invertase/melos/commit/e981adf72f2a53181f184239f592781c728616cb))
 - **FEAT**: add --diff filter ([#323](https://github.com/invertase/melos/issues/323)). ([2f6545f6](https://github.com/invertase/melos/commit/2f6545f658a2eabc50ab7c68f47326588d6eeb2c))
 - **FEAT**: simplify writing scripts that use `melos exec` ([#315](https://github.com/invertase/melos/issues/315)). ([3e5807dd](https://github.com/invertase/melos/commit/3e5807ddde999479c6d9937a131dd0919ad7dae8))
 - **DOCS**: update link to the FlutterFire repository ([#338](https://github.com/invertase/melos/issues/338)). ([344df53c](https://github.com/invertase/melos/commit/344df53c2bd8bd8e331708013e336fed9e820b81))

## 2.8.0

 - **REFACTOR**: use `homepage` and `repository` keys in `pubspec.yaml` ([#354](https://github.com/invertase/melos/issues/354)). ([c7a78e3a](https://github.com/invertase/melos/commit/c7a78e3af1ebc3d3a0d2973fdbe154813b8eb2e3))
 - **REFACTOR**: enable more lint rules ([#346](https://github.com/invertase/melos/issues/346)). ([70448bec](https://github.com/invertase/melos/commit/70448bec7d8cf5f8d0a8dc8c2660e70033936329))
 - **REFACTOR**: remove local fork of `yamlicious` ([#345](https://github.com/invertase/melos/issues/345)). ([64a15b83](https://github.com/invertase/melos/commit/64a15b83f87d9c21c0bcad10f4e6d4941f935091))
 - **REFACTOR**: remove local fork of `prompts` package ([#344](https://github.com/invertase/melos/issues/344)). ([200450c3](https://github.com/invertase/melos/commit/200450c3064ae461dafc1eebee285c762a28eba1))
 - **REFACTOR**: encapsulate log formatting in `MelosLogger` ([#314](https://github.com/invertase/melos/issues/314)). ([ec808b02](https://github.com/invertase/melos/commit/ec808b0205cb267f3c8bedd8dce98a02f9f6a086))
 - **FIX**: `scripts.*.exec.failFast` option in `melos.yaml` ([#359](https://github.com/invertase/melos/issues/359)). ([16fe6916](https://github.com/invertase/melos/commit/16fe691665466e81e34c87451e8b1ca32809bf95))
 - **FIX**: don't override Intellij module config files ([#351](https://github.com/invertase/melos/issues/351)). ([850e9f82](https://github.com/invertase/melos/commit/850e9f8227ff3233b3f348260ec16ff05b13991d))
 - **FIX**: false positive for non-unique packages ([#348](https://github.com/invertase/melos/issues/348)). ([9c136194](https://github.com/invertase/melos/commit/9c136194ac888be5f6b6ccc0543ea369507ba129))
 - **FIX**: follow up [#330](https://github.com/invertase/melos/issues/330) ([#331](https://github.com/invertase/melos/issues/331)). ([f6eec0a2](https://github.com/invertase/melos/commit/f6eec0a295c186715a68ee5b6ee96f32de2184e9))
 - **FIX**: find packages in matched directories ([#330](https://github.com/invertase/melos/issues/330)). ([c7be5235](https://github.com/invertase/melos/commit/c7be523517155ab0a4221e3bf95474cd2cea17a3))
 - **FIX**: make file IO more robust ([#329](https://github.com/invertase/melos/issues/329)). ([dfd877d6](https://github.com/invertase/melos/commit/dfd877d62b607cf5c2c482c5a9719e4d5523606a))
 - **FIX**: handle `UsageException` ([#328](https://github.com/invertase/melos/issues/328)). ([c187f9d9](https://github.com/invertase/melos/commit/c187f9d99197d3549b3da9b9612509317f03171a))
 - **FIX**: pass extra args to script when invoked without `run` ([#316](https://github.com/invertase/melos/issues/316)). ([f0a62a2d](https://github.com/invertase/melos/commit/f0a62a2d124b4b8e29534c16daaff88a49f69442))
 - **FIX**: report all dependencies in `list` command ([#313](https://github.com/invertase/melos/issues/313)). ([bb76d3a1](https://github.com/invertase/melos/commit/bb76d3a126794df05d0c823f6f8aae0311761ae1))
 - **FIX**: respect user `dependency_overrides` ([#312](https://github.com/invertase/melos/issues/312)). ([ff5bfbe6](https://github.com/invertase/melos/commit/ff5bfbe6a43f3a1a788832951c1873d150a28d7d))
 - **FIX**: Run Process.runSync in another shell to get Dart version ([#300](https://github.com/invertase/melos/issues/300)). ([0aa81a7b](https://github.com/invertase/melos/commit/0aa81a7bbad0d635981ffd52d323fe80dff97458))
 - **FEAT**: Adding some features:. ([ad04f451](https://github.com/invertase/melos/commit/ad04f451357e532b204846b6d2d2d3cfb0e3b0fc))
 - **FEAT**: Making run accept a List or String. ([c787fe62](https://github.com/invertase/melos/commit/c787fe623dd59f4445555140c1c6945fca550dae))
 - **FEAT**: write conventional commit scopes in changelog ([#341](https://github.com/invertase/melos/issues/341)). ([0c64d61e](https://github.com/invertase/melos/commit/0c64d61eb9fa0f65b85a21e0843e112d0b717733))
 - **FEAT**: add `runPubGetOffline` option ([#326](https://github.com/invertase/melos/issues/326)). ([8358a5a1](https://github.com/invertase/melos/commit/8358a5a11b55a81e1a01b31fe1931f7ba88c07e0))
 - **FEAT**: add includeCommitId option ([#325](https://github.com/invertase/melos/issues/325)). ([e981adf7](https://github.com/invertase/melos/commit/e981adf72f2a53181f184239f592781c728616cb))
 - **FEAT**: add --diff filter ([#323](https://github.com/invertase/melos/issues/323)). ([2f6545f6](https://github.com/invertase/melos/commit/2f6545f658a2eabc50ab7c68f47326588d6eeb2c))
 - **FEAT**: simplify writing scripts that use `melos exec` ([#315](https://github.com/invertase/melos/issues/315)). ([3e5807dd](https://github.com/invertase/melos/commit/3e5807ddde999479c6d9937a131dd0919ad7dae8))
 - **DOCS**: update link to the FlutterFire repository ([#338](https://github.com/invertase/melos/issues/338)). ([344df53c](https://github.com/invertase/melos/commit/344df53c2bd8bd8e331708013e336fed9e820b81))

## 2.6.0

 - **REFACTOR**: use `homepage` and `repository` keys in `pubspec.yaml` ([#354](https://github.com/invertase/melos/issues/354)). ([c7a78e3a](https://github.com/invertase/melos/commit/c7a78e3af1ebc3d3a0d2973fdbe154813b8eb2e3))
 - **REFACTOR**: enable more lint rules ([#346](https://github.com/invertase/melos/issues/346)). ([70448bec](https://github.com/invertase/melos/commit/70448bec7d8cf5f8d0a8dc8c2660e70033936329))
 - **REFACTOR**: remove local fork of `yamlicious` ([#345](https://github.com/invertase/melos/issues/345)). ([64a15b83](https://github.com/invertase/melos/commit/64a15b83f87d9c21c0bcad10f4e6d4941f935091))
 - **REFACTOR**: remove local fork of `prompts` package ([#344](https://github.com/invertase/melos/issues/344)). ([200450c3](https://github.com/invertase/melos/commit/200450c3064ae461dafc1eebee285c762a28eba1))
 - **FIX**: don't override Intellij module config files ([#351](https://github.com/invertase/melos/issues/351)). ([850e9f82](https://github.com/invertase/melos/commit/850e9f8227ff3233b3f348260ec16ff05b13991d))
 - **FIX**: false positive for non-unique packages ([#348](https://github.com/invertase/melos/issues/348)). ([9c136194](https://github.com/invertase/melos/commit/9c136194ac888be5f6b6ccc0543ea369507ba129))
 - **FEAT**: write conventional commit scopes in changelog ([#341](https://github.com/invertase/melos/issues/341)). ([0c64d61e](https://github.com/invertase/melos/commit/0c64d61eb9fa0f65b85a21e0843e112d0b717733))
 - **DOCS**: update link to the FlutterFire repository ([#338](https://github.com/invertase/melos/issues/338)). ([344df53c](https://github.com/invertase/melos/commit/344df53c2bd8bd8e331708013e336fed9e820b81))

## 2.5.0

 - **FIX**: follow up [#330](https://github.com/invertase/melos/issues/330) ([#331](https://github.com/invertase/melos/issues/331)). ([f6eec0a2](https://github.com/invertase/melos/commit/f6eec0a295c186715a68ee5b6ee96f32de2184e9))
 - **FIX**: find packages in matched directories ([#330](https://github.com/invertase/melos/issues/330)). ([c7be5235](https://github.com/invertase/melos/commit/c7be523517155ab0a4221e3bf95474cd2cea17a3))
 - **FIX**: make file IO more robust ([#329](https://github.com/invertase/melos/issues/329)). ([dfd877d6](https://github.com/invertase/melos/commit/dfd877d62b607cf5c2c482c5a9719e4d5523606a))
 - **FIX**: handle `UsageException` ([#328](https://github.com/invertase/melos/issues/328)). ([c187f9d9](https://github.com/invertase/melos/commit/c187f9d99197d3549b3da9b9612509317f03171a))
 - **FEAT**: add `runPubGetOffline` option ([#326](https://github.com/invertase/melos/issues/326)). ([8358a5a1](https://github.com/invertase/melos/commit/8358a5a11b55a81e1a01b31fe1931f7ba88c07e0))
 - **FEAT**: add includeCommitId option ([#325](https://github.com/invertase/melos/issues/325)). ([e981adf7](https://github.com/invertase/melos/commit/e981adf72f2a53181f184239f592781c728616cb))
 - **FEAT**: add --diff filter ([#323](https://github.com/invertase/melos/issues/323)). ([2f6545f6](https://github.com/invertase/melos/commit/2f6545f658a2eabc50ab7c68f47326588d6eeb2c))

## 2.4.0

 - **REFACTOR**: encapsulate log formatting in `MelosLogger` ([#314](https://github.com/invertase/melos/issues/314)). ([ec808b02](https://github.com/invertase/melos/commit/ec808b0205cb267f3c8bedd8dce98a02f9f6a086))
 - **FIX**: pass extra args to script when invoked without `run` ([#316](https://github.com/invertase/melos/issues/316)). ([f0a62a2d](https://github.com/invertase/melos/commit/f0a62a2d124b4b8e29534c16daaff88a49f69442))
 - **FIX**: report all dependencies in `list` command ([#313](https://github.com/invertase/melos/issues/313)). ([bb76d3a1](https://github.com/invertase/melos/commit/bb76d3a126794df05d0c823f6f8aae0311761ae1))
 - **FIX**: respect user `dependency_overrides` ([#312](https://github.com/invertase/melos/issues/312)). ([ff5bfbe6](https://github.com/invertase/melos/commit/ff5bfbe6a43f3a1a788832951c1873d150a28d7d))
 - **FIX**: Run Process.runSync in another shell to get Dart version ([#300](https://github.com/invertase/melos/issues/300)). ([0aa81a7b](https://github.com/invertase/melos/commit/0aa81a7bbad0d635981ffd52d323fe80dff97458))
 - **FEAT**: simplify writing scripts that use `melos exec` ([#315](https://github.com/invertase/melos/issues/315)). ([3e5807dd](https://github.com/invertase/melos/commit/3e5807ddde999479c6d9937a131dd0919ad7dae8))

## 2.3.1

 - **FIX**: use global options when running scripts ([#296](https://github.com/invertase/melos/issues/296)). ([115d0471](https://github.com/invertase/melos/commit/115d04710028612686eba3cb669f93704cac5893))

## 2.3.0

 - **FIX**: respect filter flags in `melos bootstrap` ([#294](https://github.com/invertase/melos/issues/294)). ([c87287e0](https://github.com/invertase/melos/commit/c87287e00d27036b9860a33e26f06c0b3bfef76f))
 - **FEAT**: link to referenced issues/PRs in changelog ([#292](https://github.com/invertase/melos/issues/292)). ([1883020b](https://github.com/invertase/melos/commit/1883020b77829122ed368998752f0196d328c60d))
 - **FEAT**: remove dependency overrides from `pubspec_overrides.yaml` in `melos clean` ([#290](https://github.com/invertase/melos/issues/290)). ([869b2d69](https://github.com/invertase/melos/commit/869b2d695b0c00061b2de2c2c325acd48bdf5208))
 - **DOCS**: use `dart pub` instead of `pub` in `README.md` ([#293](https://github.com/invertase/melos/issues/293)). ([d6beb1c3](https://github.com/invertase/melos/commit/d6beb1c33a7b4512bfcbaeaa1b0b9985e2ac3fb5))

## 2.2.0

 - **FEAT**: add support for Dart/Flutter SDK at custom `sdkPath` (#288). ([740050c4](https://github.com/invertase/melos/commit/740050c4dd67938d0674ddd37f0291d52f331bd4))

## 2.1.0

 - **FEAT**: start to log `pub get` output if it runs for more than 10s (#286). ([fca44a48](https://github.com/invertase/melos/commit/fca44a480a3de9b888bde52abf184307f99b7476))
 - **FEAT**: add `command/bootstrap/runPubGetInParallel` `melos.yaml` option (#285). ([f48e8f14](https://github.com/invertase/melos/commit/f48e8f14f781b2fbc5663854808dd0f86a291f03))

## 2.0.0

 - **PERF**: run `pub get` in parallel during bootstrapping (#279). ([9870270d](https://github.com/invertase/melos/commit/9870270dbe7a6b5834110aeae0e49d79ca3b8c42))
 - **FIX**: handle unresolvable symbolic links (#280). ([70094363](https://github.com/invertase/melos/commit/700943631a84a88270a99f3baf6dcb2843c584d1))
 - **DOCS**: added WiFiFlutter as proj using melos (#281). ([2c900ee8](https://github.com/invertase/melos/commit/2c900ee853ec865529950f4eaa3b5ef606b684cf))
 - **FIX**: `melos bootstrap` now correctly handles path dependencies (#268). ([96457b59](https://github.com/invertase/melos/commit/96457b59c00feed97e4204fcea24706c1510a8fb))
 - **FEAT**: allow checking melos version (`melos --version`) outside of workspaces & set up autoupdater (#276). ([c3dc28f7](https://github.com/invertase/melos/commit/c3dc28f7832561e175ff0097c21bacef9501a4d3))
 - **BREAKING** **REFACTOR**: remove `--all` flag from list command & show private packages by default (you can use the `--no-private` filter flag instead to hide private packages) (#275). ([921ec4e4](https://github.com/invertase/melos/commit/921ec4e4de7e87a19a6017f87d4691f99f8c7f32))
 - **FEAT**: add support for bootstrapping with pubspec overrides (#273). ([236e24f4](https://github.com/invertase/melos/commit/236e24f4ef36d088b18f716ae4b030d9c514ca25))

## 1.6.0-dev.2

 - **PERF**: run `pub get` in parallel during bootstrapping (#279). ([9870270d](https://github.com/invertase/melos/commit/9870270dbe7a6b5834110aeae0e49d79ca3b8c42))
 - **FIX**: handle unresolvable symbolic links (#280). ([70094363](https://github.com/invertase/melos/commit/700943631a84a88270a99f3baf6dcb2843c584d1))
 - **DOCS**: added WiFiFlutter as proj using melos (#281). ([2c900ee8](https://github.com/invertase/melos/commit/2c900ee853ec865529950f4eaa3b5ef606b684cf))

## 1.6.0-dev.1

> Note: This release has breaking changes.

 - **FIX**: `melos bootstrap` now correctly handles path dependencies (#268). ([96457b59](https://github.com/invertase/melos/commit/96457b59c00feed97e4204fcea24706c1510a8fb))
 - **FEAT**: allow checking melos version (`melos --version`) outside of workspaces & set up autoupdater (#276). ([c3dc28f7](https://github.com/invertase/melos/commit/c3dc28f7832561e175ff0097c21bacef9501a4d3))
 - **BREAKING** **REFACTOR**: remove `--all` flag from list command & show private packages by default (you can use the `--no-private` filter flag instead to hide private packages) (#275). ([921ec4e4](https://github.com/invertase/melos/commit/921ec4e4de7e87a19a6017f87d4691f99f8c7f32))

## 1.6.0-dev.0

 - **FEAT**: add support for bootstrapping with pubspec overrides (#273). ([236e24f4](https://github.com/invertase/melos/commit/236e24f4ef36d088b18f716ae4b030d9c514ca25))

## 1.5.2

 - **FIX**: hosted dependency version regex (#262). ([b6e1bf4e](https://github.com/invertase/melos/commit/b6e1bf4e5c07ff78bb572bf864edd3023d6e4249))

## 1.5.1

 - **FIX**: support external hosted dependencies (#254). ([0f904f36](https://github.com/invertase/melos/commit/0f904f3630342188162714ac06b6cac99e925552))

## 1.5.0

 - **FIX**: export `MelosConfigException` for programatic usage. ([8b7fbfb5](https://github.com/invertase/melos/commit/8b7fbfb55ea223c11da370e4b2b3feb57c347f20))
 - **FEAT**: support git hosted package dependencies when versioning (#256). ([c76c08f3](https://github.com/invertase/melos/commit/c76c08f3660ae7679a4ab7631d633ba05e36e608))
 - **FEAT**: get published package versions from `pubspec.yaml` -> `publish_to` if set, instead of pub.dev (#253). ([9a5cb26e](https://github.com/invertase/melos/commit/9a5cb26e19a8de3d2a13ea460ba5864005e4e9b4))

## 1.4.0

 - **FIX**: don't use `Enum.name` (#251). ([27dcc7ad](https://github.com/invertase/melos/commit/27dcc7ad9f40876b682cbb783717bd08a4b485d4))
 - **FEAT**: add flag to show relative paths when using `list` (FR #246) (#257). ([06be8a14](https://github.com/invertase/melos/commit/06be8a1435abd7860b24b3be34706a83bd9d1ae5))

## 1.3.0

 - **FEAT**: add `--manual-version` option to `version` command (#242). ([279c53e4](https://github.com/invertase/melos/commit/279c53e44c735c1ef2339d1c73f097e820a72251))

## 1.2.2

- **FIX**: fully consume `pub get` output when bootstrapping (#240). ([09e98a5e](https://github.com/invertase/melos/commit/09e98a5e6197db661cdf4f89deeff5020aa3b417))

## 1.2.1

 - **FIX**: bump `platform` dependency to to 3.1.0 to support latest Flutter/Dart versions (#237). ([2b74f6eb](https://github.com/invertase/melos/commit/2b74f6ebe1852d36b65cfe0e4a8e8d6cd78fe939))

## 1.2.0

 - **FIX**: Issue where symlinks are followed too deeply causing a "File name too long" exception (#227). ([80332f32](https://github.com/invertase/melos/commit/80332f322421e586c66badda5b2b5aaf5006dc0a))
 - **FEAT**: allow passing additional arguments to run commands (#231). ([cbae75c7](https://github.com/invertase/melos/commit/cbae75c762b4cff55f47c002800119218d827f76))
 - **DOCS**: add groveman as a project using melos (#225). ([4bff84ff](https://github.com/invertase/melos/commit/4bff84ffc83387ba9ed43ce786af179e234c7188))

## 1.1.2

 - Update a dependency to the latest release.

## 1.1.1

 - **FIX**: ensure `.fvm` directories are excluded when resolving packages. ([06bad5bf](https://github.com/invertase/melos/commit/06bad5bf764f6904ff24f3b51b23a9c5961de6dd))
 - **DOCS**: add Flame to projects using Melos (#221). ([abc6b4d6](https://github.com/invertase/melos/commit/abc6b4d6adb114023e9c8415e8acb91fc82efd25))

## 1.1.0

 - **FEAT**: follow symlinks when resolving packages (#211). ([f8551924](https://github.com/invertase/melos/commit/f8551924b78d5c1f5ff9cd49cdc1c8ef1e78757f))
 - **FEAT**: specifying a `Logger` is now optional when using Melos programmatically (#219). ([67dbfc5b](https://github.com/invertase/melos/commit/67dbfc5bbf6ffdc9bf230a7733b3389082f65091))
 - **FEAT**: add repository host support for `GitLab` (#220). ([096d1713](https://github.com/invertase/melos/commit/096d1713ac964e5e8685bc9f115e174f4a57e7c5))

## 1.0.0

- **FIX**: a dependent packages `dependentsInWorkspace` dependents should also be added to `dependentPackagesToVersion`. ([5e7e8c75](https://github.com/invertase/melos/commit/5e7e8c756d4d0bebf403056aa863b88c502b69c2))
- **FIX**: ensure local versions of transitive dependencies are bootstrapped (#185).
- **FIX**: don't remove pubspec.lock when `clean` is ran (fixes #129).
- **FIX**: melos_tools path incorrect on certain platforms (fixes #144).
- **FEAT**: Match unknown commands with scripts (#167).
- **FEAT**: Added an error message when multiple packages in the workspace have the same name (#178).
- **FEAT**: verbose logging now logs package commit messages when versioning (#203). ([b87fb8dc](https://github.com/invertase/melos/commit/b87fb8dcf21d0aeb8524cd9212e21115829d5c0d))
- **FEAT**: optionally allow generating workspace root change logs (#161). ([56fcdff6](https://github.com/invertase/melos/commit/56fcdff6640f73a01c6d7e5f7fb453bf8ef5666e))
- **FEAT**: Add topological sort to publish command (#199).
- **FEAT**: use `dart` tool to run `pub get` in pure Dart package (#201).
- **FEAT**: respect exact version constraints when updating dependents (#194).
- **FEAT**: add support for linking to commits in changelog (#186).
- **FEAT**: add support for printing current Melos version via `-v` or `--version` (#155).
- **FEAT**: added config validation and type-safe Dart API (#139) (#140).
- **FEAT**: migrate Melos to null-safety (#115).
- **FEAT**: added "preversion" script hook, to perform actions when using `melos version` _before_ pubspec files are modified.
- **FEAT**: added `melos.yaml` validation
- **FEAT**: it is now possible to programmatically use Melos commands by importing `package:melos/melos.dart`:

```dart
final melos = Melos(workingDirectory: Directory.current);

await melos.bootstrap();
await melos.publish(dryRun: false);
```

## 1.0.0-dev.14

- **FIX**: a dependent packages `dependentsInWorkspace` dependents should also be added to `dependentPackagesToVersion`. ([5e7e8c75](https://github.com/invertase/melos/commit/5e7e8c756d4d0bebf403056aa863b88c502b69c2))

## 1.0.0-dev.13

- **FEAT**: verbose logging now logs package commit messages when versioning (#203). ([b87fb8dc](https://github.com/invertase/melos/commit/b87fb8dcf21d0aeb8524cd9212e21115829d5c0d))

## 1.0.0-dev.12

- **FEAT**: optionally allow generating workspace root change logs (#161). ([56fcdff6](https://github.com/invertase/melos/commit/56fcdff6640f73a01c6d7e5f7fb453bf8ef5666e))

## 1.0.0-dev.11

- **FEAT**: Add topological sort to publish command (#199).
- **FEAT**: use `dart` tool to run `pub get` in pure Dart package (#201).
- **DOCS**: fix a few things and expand page for `melos.yaml` (#200).

## 1.0.0-dev.10

- **FIX**: run version cmd with `--dependent-versions` value from cli (#193).
- **FEAT**: respect exact version constraints when updating dependents (#194).

## 1.0.0-dev.9

- **FIX**: melos.yaml ignores should apply also to `run` commands `MELOS_PACKAGES` env variable (#192).

## 1.0.0-dev.8

- **FIX**: version `--graduate` should graduate prerelease packages (not the other way around).

## 1.0.0-dev.7

- **FIX**: ignore package filter should merge with `config.ignore` globs.

## 1.0.0-dev.6

- **FEAT**: add support for linking to commits in changelog (#186).

## 1.0.0-dev.5

- **FIX**: prevent stack overflow when resolving transitively related packages (#187).

## 1.0.0-dev.4

- **REFACTOR**: Pass workspace config from the top (#176).
- **REFACTOR**: fix analysis & formatting issues (#177).
- **REFACTOR**: Instantiate workspace from configs (#169).
- **FIX**: ensure local versions of transitive dependencies are bootstrapped (#185).
- **FEAT**: Match unknown commands with scripts (#167).
- **FEAT**: Added an error message when multiple packages in the workspace have the same name (#178).

## 1.0.0-dev.3

- **FIX**: Allow add-to-app packages to bootstrap (#162).

## 1.0.0-dev.2

- **FIX**: fix cast error (#151).
- **FEAT**: add support for printing current melos version via `-v` or `--version` (#155).
- **CHORE**: fix lints on master channel (#147).

## 1.0.0-dev.1

- **REFACTOR**: misc cleanup of todos.
- **FIX**: issue where all environment variables are injected into exec scripts instead of just `MELOS_*` ones (fixes #146).
- **FIX**: manual versioning should run lifecycle scripts.
- **FIX**: don't remove pubspec.lock when `clean` is ran (fixes #129).
- **CHORE**: bump "melos" to `1.0.0-dev.0`.

## 1.0.0-dev.0

- Bump "melos" to `1.0.0-dev.0`.

## 0.5.0-dev.2

- **FIX**: unable to publish packages (always dry-run).

## 0.5.0-dev.1

- **REFACTOR**: use currentPlatform instead of Platform.
- **FIX**: melos_tools path incorrect on certain platforms (fixes #144).

## 0.5.0-dev.0

> Note: This release has potentially breaking changes.

- **TEST**: add git tests.
- **REFACTOR**: cleanup git utilities and add new utils for upstream checks.
- **REFACTOR**: set Melos as the generator for generated pub files (#120).
- **FIX**: issue where dependent packages were not versioned (#131).
- **FIX**: enable Dart SDK for root IntelliJ project (#127).
- **FIX**: exec hang, exec trailing options (#123).
- **FEAT**: added config validation and type-safe Dart API (#139) (#140).
- **FEAT**: migrate Melos to null-safety (#115).
- **BREAKING** **FEAT**: migrate conventional_commit to null-safety (#114).
- added "preversion" script hook, to perform actions when using `melos version` _before_ pubspec files are modified.
- added `melos.yaml` validation
- it is now possible to programatically use melos commands by importing `package:melos/melos.dart`:

```dart
final melos = Melos(workingDirectory: Directory.current);

await melos.bootstrap();
await melos.publish(dryRun: false);
```

## 0.4.11+2

- **FIX**: pubspecs incorrectly being overwritten (fixes #60) (#110).

## 0.4.11+1

- **REFACTOR**: remove MelosCommandRunner.instance (#107).
- **FIX**: when executing a command inside a package, melos now properly executes it on all packages of the workspace. (#108).

## 0.4.11

- **REFACTOR**: Move to a stubbable Platform abstraction (#86).
- **FIX**: The default workspace no-longer searches for projects inside the .dart_tool folder of packages (#104).
- **FIX**: incorrect intellij project clean glob pattern in windows (#97).
- **FEAT**: Added support for calling melos commands from anywhere inside a melos workspace (#103).
- **FEAT**: `melos bootstrap` now executes generates its temporary project inside the .dart_tool folder (#106).
- **FEAT**: add --yes flag to `melos publish` (#105).
- **FEAT**: make intellij project clean only delete melos run configurations (#96).
- **DOCS**: Add cofu-app/cbl-dart to users of Melos (#95).
- **DOCS**: add gql-dart/ferry as melos user.

## 0.4.10+1

- **REFACTOR**: add missing license headers.
- **FIX**: use original pubspec.lock files when running pub get inside mirrored workspace (fixes #68).

## 0.4.10

- Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 0.4.10-dev.1

> Note: This release has breaking changes.

- **FIX**: Fix --published/--no-published filters.
- **FIX**: Find templates using a resolved package URI.
- **BREAKING** **FEAT**: Use PUB_HOSTED_URL as pub.dev alternative if defined.

## 0.4.10-dev.0

- **TEST**: Add a couple of useful matchers.
- **TEST**: Add mock filesystem facilities to aid in testing.
- **STYLE**: Rearrange some methods in MelosPackage.
- **STYLE**: Wrap option description strings.
- **REFACTOR**: Clean up the MelosWorkspace, and ensure a package catch-all.
- **FEAT**: Add filtering flags for including dependendies and dependents.
- **DOCS**: Rewrapped melos README to avoid an unfortunate space.
- **CHORE**: Add missing copyright.
- **BUILD**: Upgrade package dependencies.

## 0.4.9

- **REFACTOR**: Clean up workspace code in preparation for command config implementation (#77).
- **FEAT**: Add melos.yaml support for the version command's message default.
- **FEAT**: Add melos.yaml command configuration.

## 0.4.8+1

- **FIX**: Newline handling for version's message option (#73).

## 0.4.8

- **REFACTOR**: Improve styling of command usage (#71).
- **FEAT**: Support configurable commit messages in version command (#72).

## 0.4.7

- **FEAT**: allow private packages to be versioned (#67).

## 0.4.6

- **FEAT**: allow --yes to also skip prompts when manually versioning (closes #66).

## 0.4.5+3

- Update a dependency to the latest release.

## 0.4.5+2

- **FIX**: certain generated yaml file keys can be null.
- **FIX**: some dependent packages were not visible when graduating with a filter.
- **DOCS**: Add GetStream/stream-chat-flutter as a user of melos (#63).

## 0.4.5+1

- **FIX**: script select-package ignore filter was not including ignores also defined in melos.yaml.

## 0.4.5

- **FEAT**: allow listing packages in Graphviz DOT language (#58).

## 0.4.4+2

- **FIX**: hook scripts not working.
- **FIX**: non-nullsafety pre-major prerelease should also bump it's minor version (#55).

## 0.4.4+1

- **DOCS**: add monorepo to pub description.

## 0.4.4

- **FEAT**: show latest registry prerelease version of the same preid in `publish` command if the local version is also a prerelease.
- **CHORE**: format changelog.

## 0.4.3

- **FEAT**: add new `--[no-]nullsafety` package filtering option
- **FEAT**: introduce `dependent-versions` & `dependent-constraints` versioning flags

## 0.4.2

- **FEAT**: allow manually versioning a specific package via `melos version` (#53).

## 0.4.1

- **FEAT**: rework versioning with tests to support nullsafety prerelease versioning (#52).
- **CHORE**: improve local development setup + add small guide to readme.
- **CHORE**: use latest conventional_commit package.

## 0.4.0+1

- Update a dependency to the latest release.

## 0.4.0

> Note: This release has breaking changes.

- **BREAKING** **REFACTOR**: rework bootstrap behaviour (see #51 for more info).

## 0.3.13

- **FEAT**: add `flutter` package filter (#45).

## 0.3.12+1

- **FIX**: don't recreate currentWorkspace if already created (fixes #39) (#40).
- **CHORE**: correctly git add version.g.dart.

## 0.3.12

- **FIX**: only generate Flutter plugins files if workspace one exists.
- **FIX**: add default sdk constrain when no melos.yaml detected (fixes #32).
- **FIX**: trailing spaces in generated pubspec.lock file (fixes #36) (#38).
- **FIX**: re-word the help message of the --yes args in version command. (#33).
- **FEAT**: add "ignore" support on "melos.yaml" configuration (#37).
- **FEAT**: advanced custom script definitions (with package selection prompting) (#34).
- **FEAT**: version `--preid` support (#30).

## 0.3.11

- **FEAT**: Add `--yes` flag to `melos version` for ci support. (#27).
- **CHORE**: make `--yes` on `version` command non negatable.

## 0.3.10

- Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 0.3.10-dev.9

- **FIX**: use dummy yaml file.

## 0.3.10-dev.8

- **FIX**: correctly assign YamlList.

## 0.3.10-dev.7

- **FIX**: add default packages path.

## 0.3.10-dev.6

- **FIX**: melos.yaml check.

## 0.3.10-dev.5

- **FEAT**: allow melos to function without a yaml file if packages dir exists.

## 0.3.10-dev.4

- **FEAT**: support adding git tags for missing versions on publish command.

## 0.3.10-dev.3

- **REFACTOR**: break out conventional_commit package.
- **FEAT**: re-add bootstrap `bs` alias.
- **BUILD**: fix version.dart not being automatically added.

## 0.3.10-dev.2

- **REFACTOR**: remove logger, woops.
- **REFACTOR**: remove dep override.
- **FIX**: don't filter packages using 'since' on version command.
- **FEAT**: add support for version/postversion lifecycle scripts.
- **BUILD**: temporary git add workaround for additional changed files in melos.
- **BUILD**: add version lifecycle script to generate version.dart file.

## 0.3.10-dev.1

- **REFACTOR**: code cleanup.
- **REFACTOR**: remove committed .iml files.
- **FEAT**: semver & conventional commits (#10).
- **CHORE**: bump dep version.

## 0.3.9

- Fix version.dart versioning

## 0.3.8

- Move all generated pub files into a `.melos_tool` sub directory in workspace root to prevent conflicts.
- Clean up IntelliJ `runConfigurations` as part of the `clean` command.
- Prefix all IntelliJ generated project files with `melos_`.

## 0.3.7

- IntelliJ support for automatically generating Flutter Test & Run configurations.

## 0.3.6

- Fixed an issue on Windows where Pub Cache can also being the 'Roaming' AppData directory.

## 0.3.5

- Use `exitCode` setter instead of `exit()`.

## 0.3.0

- Added support for Windows.
- Added workspace support for IntelliJ IDEs (Android Studio).

## 0.2.0

- Added a new filter for filtering published or unpublished packages: `--[no-]published`.
  - Unpublished in this case means the package either does not exist on the Pub registry or the current local version
    of the package is not yet published to the Pub registry.
- Added a new command to pretty print currently unpublished packages: `melos unpublished`.
