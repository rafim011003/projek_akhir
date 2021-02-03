import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:projek_akhir/user/ui/home.dart';
import 'package:project_coba/admin/ui/uis.dart';
import 'package:project_coba/user/ui/uis.dart';
import 'loginAdmin.dart';
// import 'package:project_coba/network_utils/api.dart';
import 'package:project_coba/user/ui/uis.dart';
import 'package:project_coba/user/viewModels/view_models.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'loginAdmin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: Colors.white,
      // key: _scaffoldKey,
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/img/bckgrn1.png"), fit: BoxFit.cover),
        // ),
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 44, right: 20),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 44, right: 20),
                      child: Text(
                        "Learn with your friend around the world in your hands",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Form(
                          // key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                controller: email,
                                style: TextStyle(color: Colors.grey[600]),
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Email Address",
                                  hintStyle: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                // validator: (emailValue) {
                                //   if (emailValue.isEmpty) {
                                //     return 'Please enter email';
                                //   }
                                //   emailvalid = emailValue;
                                //   return null;
                                // },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                controller: password,
                                style: TextStyle(color: Colors.grey[600]),
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                // validator: (passwordValue) {
                                //   if (passwordValue.isEmpty) {
                                //     return 'Please enter some text';
                                //   }
                                //   passwordvalid = passwordValue;
                                //   return null;
                                // },
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: RaisedButton(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 132,
                                        right: 132,
                                        top: 15,
                                        bottom: 15),
                                    child: Text(
                                      'Sign In',
                                      // _isLoading ? 'Proccessing...' : 'LOGIN',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Poppins"),
                                    ),
                                  ),
                                  color: Colors.teal[300],
                                  splashColor: Colors.teal[100],
                                  disabledColor: Colors.grey,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainBoarding()),
                                    );
                                    // if (_formKey.currentState.validate()) {
                                    //   login();
                                    //   print('login dipencet');
                                    // }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Container(
                    //           child: InkWell(
                    //             onTap: () {
                    //               Navigator.push(
                    //                   context,
                    //                   new MaterialPageRoute(
                    //                       builder: (context) => SignUp()));
                    //             },
                    //             child: Text(
                    //               'Sign up',
                    //               style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 15.0,
                    //                 decoration: TextDecoration.none,
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => LoginAdmin()));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.grey[850],
                                fontSize: 15.0,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
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
