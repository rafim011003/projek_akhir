part of 'view_models.dart';

var base = "https://api-super1.herokuapp.com/api";

Future listUser({page = 1}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String userToken = prefs.getString('tokenauto');
  var url = "$base/recap-user?page=$page";
  try {
    var hasil = await http.get(
      url,
      headers: {"Authorization": "Bearer $userToken"},
    );
    if (hasil.statusCode == 200) {
      final data = userModelFromJson(hasil.body);
      return data;
    } else {
      print("gagal");
      return false;
    }
  } catch (e) {
    print("hi from vm; catch");

    print("error $e");
    return false;
  }
}

class UserViewModel {
  Future userGet() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // final String userToken = prefs.getString('tokenauto');
    final int id = prefs.getInt('idauto');
    final String role = prefs.getString('roleauto');
    final String name = prefs.getString('nameauto');
    final String emaile = prefs.getString('emailauto');
    var data = [
      {
        'id': id,
        'name': name,
        'email': emaile,
        'role': role,
      }
    ];
    return data;
  }
}
