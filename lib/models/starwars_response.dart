import 'package:json_annotation/json_annotation.dart';

part 'starwars_response.g.dart';

@JsonSerializable()
class SWResponse {
  int count;
  String next;
  String previous;
  List<dynamic> results;

  SWResponse({
    this.count,
    this.next,
    this.previous,
    this.results,
  });
  factory SWResponse.fromJson(Map<String, dynamic> json) =>
      _$SWResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SWResponseToJson(this);
}
