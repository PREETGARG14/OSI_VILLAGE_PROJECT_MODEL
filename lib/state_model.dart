import 'package:flutter/foundation.dart';

class StateModel {

  String state;

  String alias;

  List<dynamic> lgas;

  List<String> village;
  String name;

  StateModel({this.state, this.alias, this.lgas, this.village, this.name});


  StateModel.fromJson(Map<String, dynamic> json) {
    state = json['state'];

    alias = json['alias'];

    lgas = json['lgas'].cast<dynamic>();
    //json['lgas'][0]['village'].cast<String>();
  }

  StateModel.fromJson1(Map<String, dynamic> json)
  {
    name = json["name"];
    village = json["villages"].cast<String>();
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['state'] = this.state;

    data['alias'] = this.alias;

    data['lgas'] = this.lgas;

    data['village'] = this.village;


    return data;
  }

}