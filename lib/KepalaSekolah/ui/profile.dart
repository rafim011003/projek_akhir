part of 'uis.dart';

class Profil extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profil> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var userLogin;

  void user() {
    UserViewModel().userGet().then((value) {
      setState(() {
        userLogin = value;
      });
    });
  }

  void initState() {
    super.initState();
    user();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfff438b73),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Color(0xfff009971),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: height * 0.4,
                    child: LayoutBuilder(builder: (context, constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidth = constraints.maxWidth;
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Center(
                            child: Container(
                              height: innerHeight * 1.20,
                              width: innerWidth * 0.40,
                              child: Image.asset(
                                'assets/img/muslim.png',
                                width: innerWidth * 0.45,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.0, right: 25.0),
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.all(35.0),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      userLogin == null
                                          ? ""
                                          : userLogin[0]['email'],
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Jabatan",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      userLogin == null
                                          ? ""
                                          : userLogin[0]['role'],
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: MediaQuery.of(context).size.width / 3.5,
                          child: Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Center(
                              child: Text(
                                'Detail',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//           Colors.teal[200],
//           Colors.teal
//           // Colors.blueAccent
//         ])),
//       ),
//     );
