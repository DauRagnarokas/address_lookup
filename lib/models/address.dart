import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@Freezed()
class Address with _$Address {
  const Address._();

  const factory Address ({
    required String country,
    String? prefecture,
    required String municipality,
    required String streetAddress,
    String? apartment,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
