import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_coba/auth/model_post.dart';
import 'package:project_coba/KepalaSekolah/ui/uis.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

var dd = "http://10.0.2.198:8000/api";

// _save(String token) async {
//   final prefs = await SharedPreferences.getInstance();
//   final key = 'token';
//   final value = token;
//   prefs.setString(key, value);
// }

read() async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'token';
  final value = prefs.get(key) ?? 0;
  print('read : $value');
}

var base = "https://api-super1.herokuapp.com/api";

Future loginUser(
    String email, String password, BuildContext context, var styleAlert) async {
  try {
    String token;
    int id;
    String role;
    String name;
    String emaill;
    var data = {"email": email, "password": password};
    print(data);
    var url = "$base/login";
    var hasil = await http.post(url, body: (data));
    if (hasil.statusCode == 200) {
      if (token != null) {
        print("Token Boss");
      }
      token = (loginFromJson(hasil.body)).userData.token;
      id = (loginFromJson(hasil.body)).userData.id;
      role = (loginFromJson(hasil.body)).userData.role;
      name = (loginFromJson(hasil.body)).userData.name;
      emaill = (loginFromJson(hasil.body)).userData.email;
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('tokenauto', token);
      prefs.setInt('idauto', id);
      prefs.setString('roleauto', role);
      prefs.setString('nameauto', name);
      prefs.setString('emailauto', emaill);
      print(role);
      // final String userToken = prefs.getString(
      //   'tokenauto',
      // );
      // final int userId = prefs.getInt(
      //   'idauto',
      // );
      // final String userRole = prefs.getString(
      //   'roleauto',
      // );
      // final String userName = prefs.getString(
      //   'nameauto',
      // );
      // final String userEmail = prefs.getString(
      //   'emailauto',
      // );
      if (role == 'admin') {
        print('Admin');
      } else if (role == 'Wali Siswa') {
        Alert(
          style: styleAlert,
          context: context,
          type: AlertType.success,
          title: "Login Berhasil",
          desc: "Gunakan akses ini untuk yang bermanfaat",
          buttons: [
            DialogButton(
              color: Colors.greenAccent[400],
              child: Text(
                "Masuk",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => BottomBar())),
              width: 120,
            )
          ],
        ).show();
      }
      if (role == 'Kepala Sekolah') {
        Alert(
          style: styleAlert,
          context: context,
          type: AlertType.success,
          title: "Login Berhasil",
          desc: "Gunakan akses ini untuk yang bermanfaat",
          buttons: [
            DialogButton(
              color: Colors.greenAccent[400],
              child: Text(
                "Masuk",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => BottomBar())),
              width: 120,
            )
          ],
        ).show();
      }
      return true;
    } else if (hasil.statusCode == 403) {
      print('Verifikasi');
      return false;
    } else {
      print("Gagal login");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

// Future registerUser(String role, String name, String email, String password,
//     BuildContext context) async {
//   try {
//     String token;
//     var data = {
//       "role": role,
//       "name": name,
//       "email": email,
//       "password": password
//     };
//     print(data);
//     var url = "$base/register";
//     http.Response hasil = await http.post(Uri.encodeFull(url),
//         body: (data),
//         headers: {
//           "Accept": "application/json",
//         },
//         encoding: Encoding.getByName("utf-8"));
//     if (hasil.statusCode == 200) {
//       token = (loginFromJson(hasil.body)).userData.token;
//       final SharedPreferences prefs = await SharedPreferences.getInstance();
//       prefs.setString('tokenauto', token);
//       final String userToken = prefs.getString('tokenauto');
//       print(userToken);
//       print("Berhasil register");
//       return true;
//     } else if (hasil.statusCode == 500) {
//       return false;
//     } else {
//       print("Gagal register");
//       return null;
//     }
//   } catch (e) {
//     print("Error pada catch $e");
//   }
// }
