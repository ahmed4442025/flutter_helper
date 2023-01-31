import 'package:flutter_helper/shared_pref/data/shared_types.dart';

class SharedGeneratorManager {
  void test() {
    List<SharedVariableData> keys = [
      SharedVariableData("name1", SharedType.string),
      SharedVariableData("name2", SharedType.string),
      SharedVariableData("name3", SharedType.double),
      SharedVariableData("name4", SharedType.int),
      SharedVariableData("name5", SharedType.bool),
    ];

    print(getAllData(keys));
  }

  String getAllData(List<SharedVariableData> vars) {
    String msgImport =
        "import 'package:shared_preferences/shared_preferences.dart';\n\n";
    String msgKeys = _SharedVarsGenerator(vars).buildFile();
    String msgRepo = _SharedRepoGenerator(vars).buildFile();
    String msgImp = _SharedImpGenerator(vars).buildFile();

    String msg = msgImport + msgKeys + msgRepo + msgImp;
    return msg;
  }
}

abstract class _SharedBuilder {
  String buildOneVar(SharedVariableData oneVar);

  String buildTitle();

  String buildEnd();

  String buildFile();
}

class _SharedRepoGenerator implements _SharedBuilder {
  final List<SharedVariableData> _vars;

  _SharedRepoGenerator(this._vars);

  @override
  String buildOneVar(SharedVariableData oneVar) {
    String varName = oneVar.name;
    String varType = oneVar.type.toType;
    return """//   -------------------  $varName  -------------------\n
  Future<bool> set${varName.capitalize()}($varType $varName);

  $varType? get${varName.capitalize()}();

  Future<bool> remove${varName.capitalize()}();\n""";
  }

  @override
  String buildTitle() {
    String msg = """
    // abstract class handel all project shared pref values
// have 3 main method for every KEY
// 1 - set value      ->    return bool [true] if success or [false] if fail
// 2 - get value      ->    return dynamic value
// 3 - remove value   ->    return Future<bool> [true] if success or [false] if fail
abstract class SharedPrefRepo {\n""";
    return msg;
  }

  @override
  String buildEnd() {
    return "\n}\n";
  }

  @override
  String buildFile() {
    String msg = buildTitle();
    for (var element in _vars) {
      msg += buildOneVar(element);
    }
    msg += buildEnd();
    return msg;
  }
}

class _SharedVarsGenerator implements _SharedBuilder {
  final List<SharedVariableData> _vars;

  _SharedVarsGenerator(this._vars);

  @override
  String buildEnd() {
    return "\n}\n";
  }

  @override
  String buildFile() {
    String msg = buildTitle();
    for (var element in _vars) {
      msg += buildOneVar(element);
    }
    msg += buildEnd();
    return msg;
  }

  @override
  String buildOneVar(SharedVariableData oneVar) {
    String varName = oneVar.name;
    String varType = oneVar.type.toType;
    return '  static const String $varName = "$varName";                    // $varType\n';
  }

  @override
  String buildTitle() {
    return "// all shared_pref keys\nclass SharedPrefKeys {\n";
  }
}

class _SharedImpGenerator implements _SharedBuilder {
  final List<SharedVariableData> _vars;

  _SharedImpGenerator(this._vars);

  @override
  String buildEnd() {
    return "\n}";
  }

  @override
  String buildOneVar(SharedVariableData oneVar) {
    String varName = oneVar.name;
    String varType = oneVar.type.toType;
    String msg = """//   -------------------  $varName  -------------------\n
  @override
  $varType? get${varName.capitalize()}() => _shared.get${varType.capitalize()}(SharedPrefKeys.$varName);

  @override
  Future<bool> remove${varName.capitalize()}() async => _shared.remove(SharedPrefKeys.$varName);

  @override
  Future<bool> set${varName.capitalize()}($varType $varName) async =>
      await _shared.set${varType.capitalize()}(SharedPrefKeys.$varName, $varName);\n""";
    return msg;
  }

  @override
  String buildTitle() {
    return """
class SharedPrefImpl implements SharedPrefRepo {
  final SharedPreferences _shared;

  SharedPrefImpl(this._shared);\n\n""";
  }

  @override
  String buildFile() {
    String msg = buildTitle();
    for (var element in _vars) {
      msg += buildOneVar(element);
    }
    msg += buildEnd();
    return msg;
  }
}
