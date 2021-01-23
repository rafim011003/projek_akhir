import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:projek_akhir/user/ui/home.dart';
import 'login.dart';
// import 'package:project_coba/network_utils/api.dart';
import 'package:project_coba/user/ui/uis.dart';
import 'package:project_coba/user/viewModels/view_models.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'loginAdmin.dart';

class OnBoarding extends StatefulWidget {
  @override
  onBoardingState createState() => onBoardingState();
}

class onBoardingState extends State<OnBoarding> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isLoading = false;
  String msg;

  // final _formKey = GlobalKey<FormState>();
  // void login() {
  //   loginUser(email.text, password.text).then((value) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     setState(() {
  //       if (value == true) {
  //         // msg = "Success";
  //         AlertDialog alertDialog = AlertDialog(
  //           content: Container(
  //             height: 100.0,
  //             child: Column(
  //               children: [
  //                 Text("Login Berhasil"),
  //                 RaisedButton(
  //                   child: Text("OK"),
  //                   onPressed: () => Navigator.pushAndRemoveUntil(
  //                     context,
  //                     MaterialPageRoute(builder: (context) => Home()),
  //                     (Route<dynamic> route) => false,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //         showDialog(context: context, child: alertDialog);
  //       } else {
  //         AlertDialog alertDialog = AlertDialog(
  //           content: Container(
  //             height: 100.0,
  //             child: Column(
  //               children: [
  //                 Text("Login gagal"),
  //                 RaisedButton(
  //                   child: Text("OK"),
  //                   onPressed: () => Navigator.pop(context),
  //                 )
  //               ],
  //             ),
  //           ),
  //         );
  //         showDialog(context: context, child: alertDialog);
  //       }
  //     });
  //   });
  //   setState(() {
  //     _isLoading = false;
  //   });
  // }

  // var emailvalid;
  // var passwordvalid;
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  // _showMsg(msg) {
  //   final snackBar = SnackBar(
  //     content: Text(msg),
  //     action: SnackBarAction(
  //       label: 'Close',
  //       onPressed: () {
  //         // Some code to undo the change!
  //       },
  //     ),
  //   );
  //   _scaffoldKey.currentState.showSnackBar(snackBar);
  // }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/bckgrn1.png"), fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/Group.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 24.0),
              Text(
                "WELCOME",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 24.0),
              Text(
                "The biggest e-learning in Jonggol",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Alegreya',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.all(50),
                child: RaisedButton(
                  hoverColor: Colors.teal,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 100, right: 100, top: 15, bottom: 15),
                    child: Text(
                      'Login with email',
                      // _isLoading ? 'Proccessing...' : 'LOGIN',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Alegreya"),
                    ),
                  ),
                  color: Colors.teal[300],
                  disabledColor: Colors.grey,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                    // if (_formKey.currentState.validate()) {
                    //   login();
                    //   print('login dipencet');
                    // }
                  },
                ),
              ),
              // Container(
              //   child: RaisedButton(
              //     child: Padding(
              //       padding:
              //           EdgeInsets.only(left: 125, right: 125, top: 15, bottom: 15),
              //       child: Text(
              //         'Login with email',
              //         // _isLoading ? 'Proccessing...' : 'LOGIN',
              //         textDirection: TextDirection.ltr,
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //             decoration: TextDecoration.none,
              //             fontWeight: FontWeight.normal,
              //             fontFamily: "Alegreya"),
              //       ),
              //     ),
              //     color: Colors.teal[300],
              //     disabledColor: Colors.grey,
              //     shape: new RoundedRectangleBorder(
              //         borderRadius: new BorderRadius.circular(10)),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => Login()),
              //       );
              //       // if (_formKey.currentState.validate()) {
              //       //   login();
              //       //   print('login dipencet');
              //       // }
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: ListView(
              //     children: <Widget>[
              //       Container(
              //         height: displayHeight(context) * 0.503,
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.only(
              //               topLeft: Radius.circular(displayWidth(context) * 0.10),
              //               topRight:
              //                   Radius.circular(displayWidth(context) * 0.10)),
              //         ),
              //         child: Column(
              //           children: <Widget>[
              //             Container(
              //               child: Column(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     height: displayHeight(context) * 0.05,
              //                   ),
              //                   InkWell(
              //                     onTap: () {
              //                       // _getCurrentLocation();
              //                       print("dipencet");
              //                     },
              //                     child: Container(
              //                         // padding: EdgeInsets.all(
              //                         //     displayWidth(context) * 0.30),
              //                         decoration: BoxDecoration(
              //                           boxShadow: [
              //                             BoxShadow(
              //                               color: Colors.grey.withOpacity(0.5),
              //                               spreadRadius: 5,
              //                               blurRadius: 7,
              //                               offset: Offset(
              //                                   0, 3), // changes position of shadow
              //                             ),
              //                           ],
              //                           borderRadius: BorderRadius.all(
              //                               Radius.circular(
              //                                   displayWidth(context) * 0.29)),
              //                           gradient: LinearGradient(
              //                               begin: Alignment.topRight,
              //                               end: Alignment.bottomLeft,
              //                               colors: [
              //                                 Colors.teal[200],
              //                                 Colors.teal
              //                               ]),
              //                         ),
              //                         child: Padding(
              //                           padding: EdgeInsets.all(
              //                               displayWidth(context) * 0.25),
              //                           child: Text(
              //                             "Tap Here",
              //                             style: TextStyle(
              //                                 fontSize:
              //                                     displayWidth(context) * 0.05,
              //                                 color: Colors.white),
              //                           ),
              //                         )),
              //                   ),
              //                   // if (_currentPosition != null)
              //                   //   Padding(
              //                   //     padding: EdgeInsets.all(
              //                   //       displayWidth(context) * 0.09,
              //                   //     ),
              //                   //     child: Column(
              //                   //       children: <Widget>[
              //                   //         Text(
              //                   //           "Lokasi Anda : " + _currentAddress,
              //                   //           style: TextStyle(
              //                   //               fontSize:
              //                   //                   displayWidth(context) * 0.05,
              //                   //               color: Colors.teal),
              //                   //         ),
              //                   //         Text(
              //                   //           "Anda Telah Absen! Terima Kasih",
              //                   //           style: TextStyle(color: Colors.teal),
              //                   //         )
              //                   //       ],
              //                   //     ),
              //                   //   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ]),
      ),
    );
  }

  // void _login() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   var data = {'email': email, 'password': password};

  //   var res = await Network().authData(data, '/login');
  //   var body = json.decode(res.body);

  //   if (body['success']) {
  // SharedPreferences localStorage = await SharedPreferences.getInstance();
  // localStorage.setString('token', json.encode(body['token']));
  // localStorage.setString('user', json.encode(body['user']));
  //     Navigator.push(
  //       context,
  //       new MaterialPageRoute(builder: (context) => Home()),
  //     );
  //   } else {
  //     _showMsg(body['message']);
  //   }

  //   setState(() {
  //     _isLoading = false;
  //   });
  // }
}
