class UserClass {
  final String name;
  final String email;
  final String hp;
  final String password;

  UserClass({
    required this.name,
    required this.email,
    required this.hp,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "email": this.email,
      "hp": this.hp,
      "password": this.password,
    };
  }
}
