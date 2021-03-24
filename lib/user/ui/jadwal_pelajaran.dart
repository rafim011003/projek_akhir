part of 'uis.dart';

class JadwalPelajaran extends StatefulWidget {
  @override
  _JadwalPelajaran createState() => _JadwalPelajaran();
}

class _JadwalPelajaran extends State<JadwalPelajaran> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfff438b73),
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
              height: height + 220,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        TopRow(),
                        SizedBox(),
                      ],
                    ),
                  ),
                  Container(
                    height: height + 40,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(50),
                          topRight: const Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  7,
                                  (index) => DateWidget(
                                        index: index,
                                      ))),
                        ),
                        Row(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(left: 5, top: 10, bottom: 20),
                              child: Text("Time",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 20,
                                    color: Colors.grey[400],
                                  )),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 30, top: 10, bottom: 20),
                              child: Text("Mata Pelajaran",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 20,
                                    color: Colors.grey[400],
                                  )),
                            ),
                          ],
                        ),
                        Column(
                            children:
                                List.generate(4, (index) => CardWidget())),
                      ],
                    ),
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

class CardWidget extends StatelessWidget {
  const CardWidget({
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
          LineGen(
            lines: [20.0, 30.0, 40.0, 10.0, 60.0],
          ),
        ]),
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 180.0,
          width: 2.0,
          color: Colors.grey[400],
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 25),
            height: 145.0,
            padding: EdgeInsets.only(left: 16.0, top: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffBCC1CD),
            ),
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
                            color: Colors.white),
                      ),
                      VerticalDivider(color: Colors.white),
                      Text(
                        'Morning',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 120),
                        child: Icon(Icons.more_vert, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Text('Bahasa Indonesia',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          // ),
        ),
      ],
    );
  }
}

class LineGen extends StatelessWidget {
  final lines;
  const LineGen({Key key, this.lines}) : super(key: key);

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

class DateWidget extends StatefulWidget {
  final index;

  const DateWidget({Key key, this.index}) : super(key: key);
  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  bool _selectDate = true;
  var list = ["S", "M", "T", "W", "T", "F", "S"];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        padding: EdgeInsets.all(17.0),
        decoration: _selectDate
            ? null
            : BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.teal,
              ),
        child: Column(
          children: [
            Text(list[widget.index],
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight:
                        _selectDate ? FontWeight.normal : FontWeight.bold,
                    color: _selectDate ? Colors.blueGrey[800] : Colors.white)),
            Text("${10 + widget.index}",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight:
                        _selectDate ? FontWeight.normal : FontWeight.bold,
                    color: _selectDate ? Colors.blueGrey[800] : Colors.white)),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: _selectDate ? Colors.white : Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
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
                Text("24",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sunday",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white38,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                    Text("Mar 2021",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white38,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white38,
              ),
              child: Center(
                child: Text("Today",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.greenAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
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
//               LineGen(
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
