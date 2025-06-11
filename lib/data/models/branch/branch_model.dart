import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@freezed
abstract class BranchModel with _$BranchModel {
  const factory BranchModel({
    required String id,
    required String name,
    required String location,
    @JsonKey(name: 'client_id') required String clientId,
    @Default('') required String qrCode,
    required String phone,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}
