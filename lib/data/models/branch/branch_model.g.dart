// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => _BranchModel(
  id: json['id'] as String,
  name: json['name'] as String,
  location: json['location'] as String,
  clientId: json['client_id'] as String,
  qrCode: json['qrCode'] as String? ?? '',
  phone: json['phone'] as String,
  status: json['status'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$BranchModelToJson(_BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'client_id': instance.clientId,
      'qrCode': instance.qrCode,
      'phone': instance.phone,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
    };
