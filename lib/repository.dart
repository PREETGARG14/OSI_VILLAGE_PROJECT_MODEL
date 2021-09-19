import 'package:flutter789app/state_model.dart';

class Repository {
  // http://locationsng-api.herokuapp.com/api/v1/lgas

  // test() => _nigeria.map((map) => StateModel.fromJson(map));
  List<dynamic> currentdist;
  List<Map> getAll() => _nigeria;
  getLocalByState(dynamic state) => _nigeria
      .map((map) => StateModel.fromJson(map))
      .where((item) => item.state == state)
      .map((item) => item.lgas)
      .expand((i) => i)
      .toList();


  getLocalByLGAS(String lgas,List<dynamic> json) => json
      .map((map) => StateModel.fromJson1(map))
      .where((item) => item.name == lgas)
      .map((item) =>item.village)
      .expand((i) => i)
      .toList();
// getLocalByLGAS1(String lgas,List<dynamic> json)
// {
//   List<dynamic> list=[];
// for(int i=0;i<json.length)
// }
  // _nigeria.where((list) => list['state'] == state);

  // .map((item) => item['lgas'])

  // .expand((i) => i)

  // .toList();

  List<String> getStates() => _nigeria
      .map((map) => StateModel.fromJson(map))
      .map((item) => item.state)
      .toList();

  // _nigeria.map((item) => item['state'].toString()).toList();

  List _nigeria = [
    {
      "state": "Uttar Pradesh",
      "alias": "Uttar Pradesh",
      "lgas": [
        {
          "name": "Aligarh",
          "villages": ["Atrauli", "Baharabad"]
        },
        {
          "name": "Ghaziabad",
          "villages": ["Muradnagar", "Modinagar"]
        },
        {
          "name": "Gonda",
          "villages": ["Achlapur", "Balpur"]
        },
        {
          "name": "Meerut",
          "villages": ["Ahara", "Aad"]
        }
      ]
    },
    {
      "state": "Madhya Pradesh",
      "alias": "Madhya Pradesh",
      "lgas": [
        {
          "name": "Bhopal",
          "villages": ["Barkheli", "Bhatni"]
        },
        {
          "name": "Indore",
          "villages": ["Ankya", "Arandia"]
        },
        {
          "name": "Jabalpur",
          "villages": ["Amahinota", "Badhaiya Kheda"]
        },
        {
          "name": "Rewa",
          "villages": ["Gurh", "Huzur"]
        }
      ]
    },
    {
      "state": "Rajhasthan",
      "alias": "Rajhasthan",
      "lgas": [
        {
          "name": "Jaipur",
          "villages": ["Baori", "Balloopura"]
        },
        {
          "name": "Udaipur",
          "villages": ["Girwa", "Jhadol"]
        },
        {
          "name": "Jodhpur",
          "villages": ["Akthali", "Asanda"]
        },
        {
          "name": "Bikaner",
          "villages": ["Ambasar", "Anandpura"]
        }
      ]
    },
    {
      "state": "West Bengal",
      "alias": "West Bengal",
      "lgas": [
        {
          "name": "Kolkata",
          "villages": ["Kalikata", "Sutanuti"]
        },
        {
          "name": "Siliguri",
          "villages": ["Kuseong", "Pedong"]
        },
        {
          "name": "Kalimpong",
          "villages": ["Birik", "Bong Khasmahal"]
        },
        {
          "name": "Darjeeling",
          "villages": ["Alubari", "Arya"]
        }
      ]
    }
  ];
}
