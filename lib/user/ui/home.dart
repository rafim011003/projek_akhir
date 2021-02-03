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
      color: Colors.white,
      child: Column(children: [
        UserAccountsDrawerHeader(
          accountName: new Text(
            "Byhuuuund",
            style: TextStyle(fontFamily: "Poppins", fontSize: 15),
          ),
          accountEmail: new Text(
            "Byhuuuund@gmail.com",
            style: TextStyle(fontFamily: "Poppins", fontSize: 13),
          ),
          currentAccountPicture: new CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.elfitrafarm.com/wp-content/uploads/2020/01/id-cs4.png"),
          ),
          decoration: BoxDecoration(color: Colors.teal[300]),
        ),
        Container(
          child: Expanded(
            flex: 2,
            child: ListView(
              padding: EdgeInsets.only(top: 24, left: 16, right: 16),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainBoarding()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.pie_chart,
                  ),
                  title: Text('Jadwal Pelajaran'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JadwalPelajaran()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.edit_road),
                  title: Text('Tugas'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tugas()));
                  },
                ),

                ListTile(
                  leading: Icon(
                    Icons.notifications_active_rounded,
                  ),
                  title: Text('Pengumuman'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pengumuman()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profil()));
                  },
                ),

                // DrawerTile(
                //   title: "Home",
                //   icon: Icons.home,
                //   // onTap: () {
                //   //   if (currentPage != "Home")
                //   //     Navigator.pushReplacementNamed(context, '/home');
                //   // },
                //   iconprimary,

                //   // isSelected: currentPage == "Home" ? true : false),
                // ),
                // DrawerTile(
                //   icon: Icons.pie_chart,

                //   iconColor: EzeeyColors.warning,
                //   title: "Pelajaran",
                //   // isSelected: currentPage == "Profile" ? true : false),
                // ),
                // DrawerTile(
                //   icon: Icons.edit_road,
                //   // onTap: () {
                //   //   if (currentPage != "Account")
                //   //     Navigator.pushReplacementNamed(context, '/account');
                //   // },
                //   iconColor: EzeeyColors.info,
                //   title: "Tugas",
                //   // isSelected: currentPage == "Account" ? true : false)
                // ),
                // DrawerTile(
                //   icon: Icons.book_rounded,
                //   // onTap: () {
                //   //   if (currentPage != "Elements")
                //   //     Navigator.pushReplacementNamed(context, '/elements');
                //   // },
                //   iconColor: EzeeyColors.error,
                //   title: "Halaqoh",
                //   //
                // ),
                // DrawerTile(
                //   icon: Icons.notifications_rounded,

                //   iconColor: EzeeyColors.primary,
                //   title: "Pengumuman",
                //   // isSelected: currentPage == "Articles" ? true : false),
                // ),
                // DrawerTile(
                //   icon: Icons.account_circle,
                //   // onTap: () {
                //   //   if (currentPage != "Articles")
                //   //     Navigator.pushReplacementNamed(context, '/articles');
                //   // },
                //   iconColor: EzeeyColors.primary,
                //   title: "Profil",
                //   // isSelected: currentPage == "Articles" ? true : false),
                // ),
              ],
            ),
          ),
        ),
        // Row(
        //   mainAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Icon(
        //       Icons.settings,
        //       color: Colors.white,
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Text(
        //       'Settings',
        //       style: TextStyle(
        //           color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Container(width: 2, height: 20, color: Colors.blueGrey[800]),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Text(
        //       'Log out',
        //       style: TextStyle(
        //           color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
        //     )
        //   ],
        // )
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
