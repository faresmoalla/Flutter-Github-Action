//import flutter
import 'package:flutter/material.dart';

class BlocResponse {
  int? idBloc;
  String? nomBloc;

  BlocResponse({this.idBloc, this.nomBloc});

  BlocResponse.fromJson(Map<String, dynamic> json) {
    idBloc = json['idBloc'];
    nomBloc = json['nomBloc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idBloc'] = this.idBloc;
    data['nomBloc'] = this.nomBloc;
    return data;
  }
}
