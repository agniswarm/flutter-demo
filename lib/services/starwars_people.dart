import 'dart:convert';

import 'package:demo_integration/models/starwars_people.dart';
import 'package:demo_integration/models/starwars_response.dart';
import 'package:http/http.dart' as http;

Future<List<People>> getAllPeople() async {
  var response = await http.get('https://swapi.dev/api/people/');
  var res = SWResponse.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    return res.results.map((item) => People.fromJson(item)).toList();
  }
  throw Exception('THIS IS AN ERROR');
}

Future sendPostRequest() async {
  var response = await http.put(
    'https://en3t3wh0l55vs.x.pipedream.net/people',
    body: jsonEncode(
      People(
        name: 'Shubahm Patel',
        gender: 'male',
        birthYear: '1999',
      ).toJson(),
    ),
  );
  print(response);
}
