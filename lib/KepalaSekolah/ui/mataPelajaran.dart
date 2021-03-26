part of 'uis.dart';

class MataPelajaran extends StatefulWidget {
  @override
  _MataPelajaran createState() => _MataPelajaran();
}

class _MataPelajaran extends State<MataPelajaran> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                height: 44,
                width: 44,
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white.withOpacity(0.3),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Icon(Icons.navigate_before, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Home(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 35, top: 55),
              child: Text("Mata Pelajaran",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 35),
              child: Text("Do your job for better results",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      color: Colors.white)),
            ),
            Column(
              children: List.generate(4, (index) => CardMata()),
            )
          ],
        ),
      ),
    );
  }
}

class CardMata extends StatelessWidget {
  const CardMata({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Tugas()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 120,
            width: 180,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/papan1.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.verified_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: <Widget>[
            //     Container(
            //       width: 140,
            //       height: 100,
            //       child: Center(
            //         child: Text(
            //           "Matematika",
            //           textAlign: TextAlign.left,
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontFamily: "Poppins"),
            //         ),
            //       ),
            //     ),

            //   ],
            // ),
          ),
          Container(
            height: 120,
            width: 180,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/papan1.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.verified_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: <Widget>[
            //     Container(
            //       width: 140,
            //       height: 100,
            //       child: Center(
            //         child: Text(
            //           "Matematika",
            //           textAlign: TextAlign.left,
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontFamily: "Poppins"),
            //         ),
            //       ),
            //     ),

            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
