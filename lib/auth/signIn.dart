// import 'dart:convert';
import 'package:project_coba/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:project_coba/KepalaSekolah/showroom.dart';
import 'package:project_coba/auth/post.dart';
import 'package:project_coba/user/ui/uis.dart';
// import 'package:project_coba/KepalaSekolah/showroom.dart';
// import 'package:project_coba/user/ui/uis.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  var emailvalid;
  var passwordvalid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img/bglogin.png'),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 20,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: FadeAnimation(
                              1.5,
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/img/clock.png'))),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 280.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0)),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: FadeAnimation(
                      1.8,
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 23),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[850],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 23),
                            child: Text(
                              "Learn with your friends around the \nworld in your hand",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[850],
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Form(
                                key: _formKey,
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
                                      validator: (emailValue) {
                                        if (emailValue.isEmpty) {
                                          return 'Please enter email';
                                        }
                                        emailvalid = emailValue;
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
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
                                      validator: (passwordValue) {
                                        if (passwordValue.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        passwordvalid = passwordValue;
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    FadeAnimation(
                                      2,
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MainBoarding()));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: 50.0),
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xfff438b73),
                                          ),
                                          child: Center(
                                            child: RaisedButton(
                                              onPressed: () {
                                                if (_formKey.currentState
                                                    .validate()) {
                                                  setState(() {
                                                    _isLoading = true;
                                                  });
                                                  loginUser(
                                                          email.text,
                                                          password.text,
                                                          context)
                                                      .then((value) {
                                                    setState(() {
                                                      _isLoading = true;
                                                    });
                                                    setState(() {
                                                      if (value == true) {
                                                        setState(() {
                                                          _isLoading = true;
                                                        });
                                                        print('berhasil login');
                                                      } else if (value ==
                                                          false) {
                                                        setState(() {
                                                          _isLoading = true;
                                                        });
                                                        print("email udah ada");
                                                      } else {
                                                        setState(() {
                                                          _isLoading = true;
                                                        });
                                                        print('Gagal login');
                                                      }
                                                    });
                                                    setState(() {
                                                      _isLoading = false;
                                                    });
                                                  });
                                                  setState(() {
                                                    _isLoading = true;
                                                  });
                                                }
                                              },
                                              child: Text(
                                                _isLoading ? "Tunggu" : "Login",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Poppins"),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   padding: EdgeInsets.all(8.0),
                          //   decoration: BoxDecoration(
                          //       border: Border(
                          //           bottom:
                          //               BorderSide(color: Colors.grey[100]))),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //         border: InputBorder.none,
                          //         hintText: "Email or Phone number",
                          //         hintStyle: TextStyle(
                          //             color: Colors.grey[600],
                          //             fontFamily: "Poppins")),
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //         border: InputBorder.none,
                          //         hintText: "Password",
                          //         hintStyle: TextStyle(
                          //             color: Colors.grey[600],
                          //             fontFamily: "Poppins")),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
