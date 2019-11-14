//Serializing JSON
// - jsonDecode() - You do not know the types of the values until runtime.
// -- Model Class
// ---- Manual serialization
// ---- Automated serialization using code generation

class User {
  String login;
  int id;
  User({this.login, this.id});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      login: json['login'],
    );
  }
}
