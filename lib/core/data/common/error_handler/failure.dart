class Failure {
  int code; // 200, 201, 400, 303..500 and so on
  String message; // error , success
  TypeMsg type;

  Failure(this.code, this.message,this.type);
}

enum TypeMsg { ok, error, warning }
