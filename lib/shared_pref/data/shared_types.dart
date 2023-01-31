enum SharedType { string, bool, int, double }

class SharedVariableData {
  String name;
  SharedType type;

  SharedVariableData(this.name, this.type);
}

extension SharedTypeEx on SharedType {
  String get toType {
    switch (this) {
      case SharedType.string:
        return "String";
      case SharedType.bool:
        return "bool";
      case SharedType.int:
        return "int";
      case SharedType.double:
        return "double";
    }
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return "";
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
