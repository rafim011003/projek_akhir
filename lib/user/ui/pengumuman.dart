part of 'uis.dart';

class Pengumuman extends StatefulWidget {
  @override
  _Pengumuman createState() => _Pengumuman();
}

class _Pengumuman extends State<Pengumuman> {
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
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.search, size: 30), onPressed: () {})
        ],
      ),
      drawer: Home(),
    );
  }
}
