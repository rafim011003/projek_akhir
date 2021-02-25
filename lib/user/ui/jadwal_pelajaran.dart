part of 'uis.dart';

class JadwalPelajaran extends StatefulWidget {
  @override
  _JadwalPelajaran createState() => _JadwalPelajaran();
}

class _JadwalPelajaran extends State<JadwalPelajaran> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
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
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.menu, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
              ),
              Container(
                margin: new EdgeInsets.symmetric(
                    horizontal: EzeeyColors.mainPadding,
                    vertical: EzeeyColors.mainPadding),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.search, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    debugPrint("Menu Pressed");
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
              padding: EdgeInsets.only(top: 70),
              height: height + 200,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        topRow(),
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  7,
                                  (index) => dateWidget(
                                        index: index,
                                      ))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height - 120,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(30),
                          topRight: const Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Column(
                        children: List.generate(4, (index) => cardWidget())),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  const cardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: [
          Text("7:00",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey[600],
              )),
          lineGen(
            lines: [20.0, 30.0, 40.0, 10.0, 60.0],
          ),
        ]),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 40),
            height: 145.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 5),
              height: 145.0,
              padding: EdgeInsets.only(left: 16.0, top: 8.0),
              color: Colors.white70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 21.0,
                    child: Row(
                      children: [
                        Text(
                          '07:00 - 08:30',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.blueGrey[800]),
                        ),
                        VerticalDivider(
                          color: Colors.black,
                        ),
                        Text(
                          'Morning',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.blueGrey[800]),
                        ),
                      ],
                    ),
                  ),
                  Text('Bahasa Indonesia',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[800],
                      )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class lineGen extends StatelessWidget {
  final lines;
  const lineGen({Key key, this.lines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            5,
            (index) => Container(
                  height: 2.0,
                  width: lines[index],
                  color: Colors.teal[100],
                  margin: EdgeInsets.symmetric(vertical: 14.0),
                )));
  }
}

class dateWidget extends StatefulWidget {
  final index;

  const dateWidget({Key key, this.index}) : super(key: key);
  @override
  _dateWidgetState createState() => _dateWidgetState();
}

class _dateWidgetState extends State<dateWidget> {
  bool _selectDate = true;
  var list = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: _selectDate
            ? null
            : BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.greenAccent,
              ),
        child: Column(
          children: [
            Text(list[widget.index],
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight:
                        _selectDate ? FontWeight.normal : FontWeight.bold,
                    color: _selectDate ? Colors.white : Colors.white)),
            Text("${10 + widget.index}",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight:
                        _selectDate ? FontWeight.normal : FontWeight.bold,
                    color: _selectDate ? Colors.white : Colors.white)),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectDate ? Colors.white : Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: <Widget>[
                Text("Daily",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 8.0,
                ),
                Text("meetings",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white38,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Text("Mar",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          children: [
            Text("24",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 8.0,
            ),
            Text("Sunday",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white38,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold)),

            // Text("Sunday",
            //     style: TextStyle(
            //         fontFamily: "Poppins",
            //         color: Colors.white38,
            //         fontSize: 15.0,
            //         fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
// Container(
//   height: height - 325,
//   margin: EdgeInsets.only(top: 20),
//   padding: EdgeInsets.all(20),
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color: Colors.white,
//   ),
//   child: SingleChildScrollView(
//     child: Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(children: [
//               Text("7:00",
//                   style: TextStyle(
//                     fontFamily: "Poppins",
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Colors.grey[600],
//                   )),
//               lineGen(
//                 lines: [20.0, 30.0, 40.0, 10.0],
//               ),
//             ]),
//             Expanded(
//               child: Container(
//                 margin: EdgeInsets.only(left: 25),
//                 height: 100.0,
//                 width: 100.0,
//                 color: Colors.red,
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// ),
