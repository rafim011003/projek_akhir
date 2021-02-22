// import 'dart:convert';

part of 'uis.dart';

// import 'package:project_coba/user/auth/login.dart';
// import 'package:project_coba/network_utils/api.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'splashscreen.dart';

class Home extends StatefulWidget {
  final String currentPage;

  Home({this.currentPage});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String name;
  @override
  // void initState() {
  //   _loadUserData();
  //   super.initState();
  // }

  // _loadUserData() async {
  //   SharedPreferences localStorage = await SharedPreferences.getInstance();
  //   var name = jsonDecode(localStorage.getString('name'));

  //   if (name != null) {
  //     setState(() {
  //       name = name['name'];
  //     });
  //   }
  // }

  // int _selectedTabIndex = 0;
  // void _onNavBarTapped(int index) {
  //   setState(() {
  //     _selectedTabIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Drawer(
        child: Container(
      color: Colors.teal[100],
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 25),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.kindpng.com/picc/m/80-807947_transparent-crazy-man-png-man-png-download.png"),
              radius: 40,
            ),
            title: Text("Loremipsumdolar",
                style: TextStyle(fontFamily: "Poppins", fontSize: 15)),
            subtitle: Text("Loremipsum@mq.com",
                style: TextStyle(fontFamily: "Poppins", fontSize: 15)),
          ),
        ),
        // Drawer(
        //   child:
        //   // accountName: new Text(
        //   //   "Byhuuuund",
        //   //   style: TextStyle(fontFamily: "Poppins", fontSize: 15),
        //   // ),
        //   // accountEmail: new Text(
        //   //   "Byhuuuund@gmail.com",
        //   //   style: TextStyle(fontFamily: "Poppins", fontSize: 13),
        //   // ),
        //   // currentAccountPicture: Positioned.fill(
        //   //     child: Center(
        //   //   child: Container(
        //   //     height: 100,
        //   //     width: 100,
        //   //     child: Image.asset(
        //   //       'assets/img/muslim.png',
        //   //       width: 100,
        //   //     ),
        //   //   ),
        //   // )),
        //   // // currentAccountPicture: new CircleAvatar(
        //   // //   backgroundImage: NetworkImage(""),
        //   // // ),
        //   // decoration: BoxDecoration(color: Colors.teal[300]),
        // ),
        Container(
          child: Expanded(
            flex: 2,
            child: ListView(
              padding: EdgeInsets.only(top: 10, left: 16, right: 16),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text('Home', style: TextStyle(fontFamily: "Poppins")),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainBoardings()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.book_outlined,
                  ),
                  title: Text('Absen Siswa',
                      style: TextStyle(fontFamily: "Poppins")),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbsenSiswa()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.pie_chart),
                  title:
                      Text('Materi', style: TextStyle(fontFamily: "Poppins")),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MateriSiswa()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications_active_rounded,
                  ),
                  title: Text('Pengumuman',
                      style: TextStyle(fontFamily: "Poppins")),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pengumuman()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.event_note_outlined,
                  ),
                  title: Text(
                    'Penilaian',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PenilaianSiswa()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.branding_watermark_outlined),
                  title: Text('Tugas', style: TextStyle(fontFamily: "Poppins")),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TugasSiswa()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title:
                      Text('Profile', style: TextStyle(fontFamily: "Poppins")),
                  // onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => Profil()));
                  // },
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontFamily: "Poppins",
                    fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Container(width: 2, height: 20, color: Colors.blueGrey[800]),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
    ));
  }

  // void logout() async {
  //   var res = await Network().getData('/logout');
  //   var body = json.decode(res.body);
  //   if (body['success']) {
  //     SharedPreferences localStorage = await SharedPreferences.getInstance();
  //     localStorage.remove('user');
  //     localStorage.remove('token');
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  //   }
  // }
}
