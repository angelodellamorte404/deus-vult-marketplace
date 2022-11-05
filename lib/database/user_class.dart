class UserClass {
  final int id;
  final String username;
  final String name;
  final String email;
  final String hp;
  final String password;

  UserClass({
    required this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.hp,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "username": this.username,
      "name": this.name,
      "email": this.email,
      "hp": this.hp,
      "password": this.password,
    };
  }

  String toString() =>
      "id: ${this.id},username: ${this.username}, name: ${this.name},email: ${this.email},hp: ${this.hp},password: ${this.password},";
}
