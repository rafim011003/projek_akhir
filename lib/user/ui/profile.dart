part of 'uis.dart';

class Profil extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          "App",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      drawer: Home(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.teal[300],
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: height * 0.4,
                    child: LayoutBuilder(builder: (context, constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidth = constraints.maxWidth;
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                              right: 0,
                              left: 0,
                              bottom: 0,
                              child: Center(
                                child: Container(
                                  height: innerHeight * 1.20,
                                  width: innerWidth * 0.40,
                                  child: Image.asset(
                                    'assets/img/muslim.png',
                                    width: innerWidth * 0.45,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              )),
                        ],
                      );
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0.1),
                    child: Text("Bintang Fabian",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 0,
                      child: Center(
                        child: Container(
                          height: height * 0.5,
                          width: width * 0.95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white38,
                          ),
                        ),
                      )),
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
