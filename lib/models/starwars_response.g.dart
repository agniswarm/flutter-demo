// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SWResponse _$SWResponseFromJson(Map<String, dynamic> json) {
  return SWResponse(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'] as String,
    results: json['results'] as List,
  );
}

Map<String, dynamic> _$SWResponseToJson(SWResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
