import 'package:manzoma_front/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    super.id,
    required super.username,
    required super.email,
    required super.name,
    required super.password,
    required super.role, // 'user' or 'admin'
    required super.clientId,
    required super.branchIds,
    required super.status,
    required super.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      name: json['name'],
      password: json['password'],
      role: json['role'],
      clientId: json['client_id'],
      branchIds: json['branch_id'],
      status: json['status'],
      createdAt:
          json['created_at'] != null
              ? DateTime.parse(json['created_at'])
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    final map = {
      'username': username,
      'email': email,
      'name': name,
      'password': password,
      'role': role,
      'client_id': clientId != null ? int.tryParse(clientId!) : null,
      'branch_id': branchIds,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
    };

    if (id != null) {
      map['id'] = id;
    }

    return map;
  }
}
