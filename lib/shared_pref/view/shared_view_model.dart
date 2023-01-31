import 'package:flutter/material.dart';
import 'package:flutter_helper/shared_pref/data/shared_generator.dart';
import 'package:flutter_helper/shared_pref/data/shared_types.dart';
import 'package:flutter_helper/shared_pref/view/shared_view.dart';

class SharedViewModel {
  final Function _refresh;

  SharedViewModel(this._refresh);

  final List<SharedRowData> _listVars = [SharedRowData("", SharedType.string)];

  List<SharedRowData> get listVars => _listVars;

  void addVar() {
    _listVars.add(SharedRowData("", SharedType.string));
    _refresh();
  }

  void removeAt(int index) {
    _listVars.removeAt(index);
    _refresh();
  }

  void editTextAt(int index, String varName) {
    _listVars[index].name = varName;
  }

  void editTypeAt(int index, SharedType type) {
    _listVars[index].type = type;
  }

  void generate(context) {
    String msg = SharedGeneratorManager().getAllData(
        _listVars.where((e) => e.name.isNotEmpty).map((e) => e.toModel()).toList());
    print(msg);

    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('res'),
          content: DialogSharedResWidget(msg: msg),
        )
    );
  }
}

class SharedRowData {
  String name;
  SharedType type;

  SharedRowData(this.name, this.type);

  SharedVariableData toModel() {
    return SharedVariableData(name, type);
  }
}
