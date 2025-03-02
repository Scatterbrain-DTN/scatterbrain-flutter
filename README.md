# Scatterbrain flutter api

This is a flutter FFI plugin for accessing a Scatterbrain router over the experimental Scatterbrain desktop api. The backend implementation of this repository is generated using [flutter_rust_bridge](https://github.com/fzyzcjy/flutter_rust_bridge)

## Setup instructions
 Due to limitations in the flutter_rust_bridge code generator, applications requiring additional rust code should fork this repository and include it as a local subdirectory of your flutter project to allow `flutter_rust_bridge_codegen` to pickup changes from your own rust codebase and this library.  
This is not required if all business logic is in dart or if this library is imported as a FFI plugin and does not interact with types from the parent project.

### Add repository as submodule
```sh
cargo install flutter_rust_bridge_codegen
git submodule add https://github.com/Scatterbrain-DTN/scatterbrain-flutter.git scatterbrain
git submodule update --init -recursive
# if modifications were made
cd scatterbrain && flutter_rust_bridge_codegen generate  --enable-lifetime
```

### Add repository to pubspec.yaml
```yaml
dependencies:
  flutter:
    sdk: flutter
  scatterbrain_flutter:
    path: ./scatterbrain
```





