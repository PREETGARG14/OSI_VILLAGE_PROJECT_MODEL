import 'package:flutter/material.dart';
import'package:flutter789app/repository.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation Basics',
      home: FirstRoute(),
    ),
  );
}
class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var h = data.size.height;
    var b =  data.size.width;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: h,
          width: b,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/final.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: b/15,
              ),
              CircleAvatar(
                radius: h/8,
                child: ClipOval(
                  child: Image.asset('Images/clipimage.png'),
                ),
              ),
              SizedBox(
                height: h/30,
              ),
              Container(
                width: b/14,
                child: Text(
                  "LOGIN ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontSize: b/10,
                    color:Colors.white,
                  ),
                ),
              ),


              SizedBox(
                height: h/40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60,0,60,0),
                child: Container(
                  height: b/8,
                  width: b/14,
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/15,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      prefixIcon: Icon(IconData(0xe853, fontFamily: 'MaterialIcons'),),
                      hintStyle: TextStyle(
                        fontSize: b/17,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              SizedBox(
                height: h/45,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Container(
                  height: b/8,
                  width: b/14,
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/17,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      prefixIcon: Icon(
                        IconData(0xe897, fontFamily: 'MaterialIcons'),
                      ),
                      hintStyle: TextStyle(
                        fontSize: b/17,
                      ),
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),
                    ), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              SizedBox(
                height: h/26,
              ),
              FlatButton(
                child: Container(
                  height: h/10,
                  width: b/1.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text('Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: b/20,
                      ),
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute( builder: (context) => FifthRoute()),
                  );
                },
              ),
              SizedBox(
                height: h/50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                child: Container(
                  height: h/17,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 3, 0, 4),
                    child: FlatButton(
                      color: Colors.blue.shade900,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Arial",
                          fontSize: b/15,
                          color:Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute( builder: (context) => Home(),
                          ),
                        );
                      },
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    border: Border.all(width: 1.00, color: Color(0xff707070),
                    ),
                    borderRadius: BorderRadius.circular(11.00),
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: h/60,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: b/12,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                    child: Container(
                      width: b/2,
                      height: h/20,
                      child: RaisedButton(
                        color: Colors.lightBlue,
                        child: Text('Create an account',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: b/23,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute( builder: (context) => ThirdRoute()),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                    child: Container(
                      width: b/3,
                      height: h/20,
                      child: RaisedButton(
                        color: Colors.lightBlue,
                        child: Text('Contact Us',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: b/23,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute( builder: (context) => SixthRoute()),
                          );
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Repository repo = Repository();

  String value = "";

  List<String> _states = ["Enter State"];

  List<dynamic> _lgas = [
    {"name": "Enter District", "villages": []}
  ];
  List<Object> _lgas1 = [
    {"name": "Enter District", "villages": []}
  ];

  String _selectedState = "Enter State";

  String _selectedLGA = "Enter District";

  List<String> _locations = ['2000', '1990','2001','2002','2003','2004','2005','2006','2007','2008', '2010', '2011','2012','2013','2014','2015','2016','2017','2018','2019','2020']; // Option 2
  String _selectedLocation;
  List<String> _locations2 = ['Gram Panchayat', '2'];
  String _selectedLocation2;
  List<dynamic> _village = ["Enter Village"];

  String _selectedVillage = "Enter Village";

  // Option 2

  @override
  void initState() {
    _states = List.from(_states)..addAll(repo.getStates());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("PANCHAYAT PLANS", style: TextStyle(fontSize: 30))),
        elevation: 0.1,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Column(
            children: <Widget>[
              Container(
                  height: 60,
                  width: 389,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text("Activity Report",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 30)),
                  )),
              Transform.translate(
                  offset: Offset(3.0, 10.0),
                  child: SizedBox(
                    height: 50,
                    width: 389,
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text('Enter Year',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17)), // Not necessary for Option 1
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  )),
              Transform.translate(
                offset: Offset(3.0, 25.0),
                child: SizedBox(
                  width: 389,
                  height: 50,
                  child: DropdownButton<String>(
                    isExpanded: true,
                    items: _states.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem),
                      );
                    }).toList(),
                    onChanged: (value) => _onSelectedState(value),
                    value: _selectedState,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(3.0, 40.0),
                child: SizedBox(
                  width: 389,
                  height: 50,
                  child: DropdownButton<String>(
                    isExpanded: true,

                    items: _lgas.map((dynamic dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem["name"],
                        child: Text(dropDownStringItem["name"]),
                      );
                    }).toList(),

                    // onChanged: (value) => print(value),

                    onChanged: (value) => _onSelectedLGA(value),

                    value: _selectedLGA,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(3.0, 55.0),
                child: SizedBox(
                  height: 50,
                  width: 389,
                  child: DropdownButton<String>(
                    isExpanded: true,

                    items: _village.map((dynamic dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem),
                      );
                    }).toList(),

                    // onChanged: (value) => print(value),

                    onChanged: (value) => _onSelectedVillage(value),

                    value: _selectedVillage,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(3.0, 90.0),
                child: Container(
                    child: RaisedButton(
                        color: Colors.blue.shade900,
                        textColor: Colors.white,
                        child: Center(
                          child: Text(
                            ' GET REPORT',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute( builder: (context) => FourthRoute()),
                        );})),
              ),
              Transform.translate(
                offset: Offset(3.0, 105.0),
                child: Container(

                  child: Center(
                    child: Text(
                      ' OR',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(3.0,120.0),
                child: Container(
                    child: RaisedButton(
                        color: Colors.blue.shade900,
                        textColor: Colors.white,
                        child: Center(
                          child: Text(
                            ' GET REPORT BY LOCATION',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        onPressed: () {})),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSelectedState(String value) {
    setState(() {
      _selectedLGA = "Enter District";
      _selectedVillage ="Enter Village";
      _lgas = [
        {"name": "Enter District", "villages": []}
      ];

      _selectedState = value;
      //  _lgas=repo.getDist(value)
      //    ..addAll(repo.getLocalByState(value));
      _lgas = List.from(_lgas)..addAll(repo.getLocalByState(value));
      this.repo.currentdist=_lgas;
    });
  }

  void _onSelectedLGA(String value) {
    setState(() {
      _selectedVillage = "Enter Village";
      _village = ["Enter Village"];

      _selectedLGA = value;
      //_village = List.from(_village)..addAll(repo.getLocalByLGAS(value,this.repo.currentdist));
      _village = List.from(_village)..addAll(repo.getLocalByLGAS(value,this.repo.currentdist));
    });
  }

  void _onSelectedVillage(String value) {
    setState(() => _selectedVillage = value);
  }
}

class ThirdRoute extends StatelessWidget {
  bool isChecked = false;

  void onChanged(bool value){
    isChecked = value;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var h = data.size.height;
    var b =  data.size.width;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: h,
          width: b,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/final.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: h/10,
              ),
              SizedBox(
                child: Container(
                  child: Text(
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: b/10,
                      color:Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h/20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60,0,60,0),
                child: Container(
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/17,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        fontSize:b/17,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60,20,60,0),
                child: Container(
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/17,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        fontSize: b/17,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
                child: Container(
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/17,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        fontSize: b/17,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
                child: Container(
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/17,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Create Password',
                      hintStyle: TextStyle(
                        fontSize: b/17,
                      ),
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: new Checkbox(value: isChecked, onChanged: (bool value){
                      onChanged(value);
                    }),
                  ),
                  SizedBox(
                    height: h/8,
                  ),

                  Container(
                    width: b/1.5,
                    child: Text(
                      "I accept the Terms of use and privacy services",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: b/22,
                        color:Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h/25,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                child: Container(
                  height: h/15,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 3, 5, 0),
                    child: FlatButton(
                      color: Colors.blue.shade900,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "Arial",
                          fontSize: b/15,
                          color:Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute( builder: (context) => FirstRoute(),
                          ),
                        );
                      },
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    border: Border.all(width: 1.00, color: Color(0xff707070),),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.00,3.00),
                        color: Color(0xff000000).withOpacity(0.76),
                        blurRadius: 6,
                      ),
                    ], borderRadius: BorderRadius.circular(11.00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FourthRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var h = data.size.height;
    var b =  data.size.width;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: h,
          width: b,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: b/18,
              ),
              Container(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: b/7,
                    ),
                    CircleAvatar(
                      radius: b/20,
                      backgroundImage: AssetImage('Images/clipimage.png'),
                    ),
                    SizedBox(
                      width: b/18,
                    ),

                    Text('OSI VILLAGE PROJECT TRACK',
                      style: TextStyle(
                        fontSize: b/25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h/23,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: b/4.5,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute( builder: (context) => SeventhRoute()),
                            );
                          },
                        ),
                        Text("Report 1",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                        ),
                        Text("Report 2",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h/20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: b/4.5,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute( builder: (context) => SeventhRoute()),
                            );
                          },
                        ),
                        Text("Report 3",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                        ),
                        Text("Report 4",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h/20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: b/4.5,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute( builder: (context) => SeventhRoute()),
                            );
                          },
                        ),
                        Text("Report 5",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                        ),
                        Text("Report 6",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h/20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: b/4.5,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute( builder: (context) => SeventhRoute()),
                            );
                          },
                        ),
                        Text("Report 7",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          child: Image(image: AssetImage('Images/icons.png'),),
                        ),
                        Text("Report 8",
                          style: TextStyle(
                            fontSize: b/23,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FifthRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var h = data.size.height;
    var b =  data.size.width;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: h,
          width: b,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/final.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 150, 50, 20),
                child: Container(
                  height: 60,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 60, 50, 20),
                child: Container(
                  height: 60,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RaisedButton(
                  color: Colors.blue.shade900,
                  child: Text("Get OTP",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SixthRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var h = data.size.height;
    var b =  data.size.width;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: h,
          width: b,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/final.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: h/5,
              ),
              Text("Your Username or Phone No.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: b/20,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
                child: Container(
                  height: h/17,
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/18,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: b/10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              SizedBox(
                  height: h/20
              ),
              Text("Any help or Query",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: b/19,
                ),),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
                child: Container(
                  height: h/5,
                  child: TextField(
                    style: TextStyle(
                      fontSize: b/20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: h/8,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              SizedBox(
                height: h/20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                child: Container(
                  height: h/18,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FlatButton(
                      color: Colors.blue.shade900,
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Arial",
                          fontSize: b/18 ,
                          color:Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute( builder: (context) => FirstRoute(),
                          ),
                        );
                      },
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    border: Border.all(width: 1.00, color: Color(0xff707070),
                    ),
                    borderRadius: BorderRadius.circular(15.00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SeventhRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var h = data.size.height;
    var b = data.size.width;
    return MaterialApp(

      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: h,
          width: b,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/final.png'),
              fit: BoxFit.cover,
            ),

          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: h / 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("Report Or Description", style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              SizedBox(
                height: h / 18,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: Container(
                  height: 270,
                  child: TextField(
                    style: TextStyle(
                      fontSize: b / 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: b / 10,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(width: 1.00, color: Color(0xff707070),),
                    borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
              ),
              Container(
                child: Text("Upload your survey here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: b / 12,
                  ),),
              ),
              SizedBox(
                height: h / 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                child: Container(
                  height: h / 15,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FlatButton(
                      color: Colors.blue.shade900,
                      child: Text(
                        "Take Image",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Arial",
                          fontSize: h / 40,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FourthRoute(),
                          ),
                        );
                      },
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    border: Border.all(width: 1.00, color: Color(0xff707070),
                    ),
                    borderRadius: BorderRadius.circular(15.00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}