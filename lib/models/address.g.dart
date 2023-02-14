// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      country: json['country'] as String,
      prefecture: json['prefecture'] as String?,
      municipality: json['municipality'] as String,
      streetAddress: json['street_address'] as String,
      apartment: json['apartment'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'country': instance.country,
      'prefecture': instance.prefecture,
      'municipality': instance.municipality,
      'street_address': instance.streetAddress,
      'apartment': instance.apartment,
    };
