import 'package:manzoma_front/domain/entities/client_entity.dart';

class ClientsModel extends ClientEntity {
  ClientsModel({
    super.id,
    required super.email,
    required super.name,
    required super.phone,
    required super.status,
    required super.createdAt,
  });

  factory ClientsModel.fromJson(Map<String, dynamic> json) {
    return ClientsModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
      status: json['status'],
      createdAt:
          json['created_at'] != null
              ? DateTime.parse(json['created_at'])
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    final map = {
      'email': email,
      'name': name,
      'phone': phone,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
    };

    if (id != null) {
      map['id'] = id as String?;
    }

    return map;
  }
}
