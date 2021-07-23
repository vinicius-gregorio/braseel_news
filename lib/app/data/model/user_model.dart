import 'dart:convert';

class User {
  String cpf;
  int id;
  bool authorized;
  User({
    required this.cpf,
    required this.id,
    required this.authorized,
  });

  User copyWith({
    String? cpf,
    int? id,
    bool? authorized,
  }) {
    return User(
      cpf: cpf ?? this.cpf,
      id: id ?? this.id,
      authorized: authorized ?? this.authorized,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cpf': cpf,
      'id': id,
      'authorized': authorized,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      cpf: map['cpf'],
      id: map['_id'],
      authorized: map['authorized'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(cpf: $cpf, id: $id, authorized: $authorized)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.cpf == cpf &&
        other.id == id &&
        other.authorized == authorized;
  }

  @override
  int get hashCode => cpf.hashCode ^ id.hashCode ^ authorized.hashCode;
}
