import 'dart:convert';

import 'package:rev/domain/models/bloc.dart';
import 'package:rev/domain/repositories/IblocRepository.dart';
import 'package:http/http.dart' as http;

class BlocRepository implements IBlocRepository {
  final host = "https://10.0.2.2:5001/";
  final Map<String, String> _headers = {
    "Content-type": "application/json",
    "Accept": "application/json"
  };
  @override
  Future<Bloc> getBlocs() async {
    var getUrl = host + "get";
    var results = await http.get(Uri.parse(getUrl), headers: _headers);
    final jsonObject = json.decode(results.body);

    var response = Bloc.fromJson(jsonObject);
    return response;
  }
}
