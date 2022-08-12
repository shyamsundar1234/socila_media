import 'package:nb_utils/nb_utils.dart';

const String loginStatus = 'login';
const String agentIdKey = "user_id";
const String userNameKey = "user_name";

const String userEmailKey = 'user_email';
const String userPhone = "user_phone";
const String userProfilePicKey = "profile_image";
const String userOrderIdKey = "user_order_id";
const String userPaymentStatusKey = "user_Payment_status";
const String userOrderAmountKey = "user_order_Amount";
const String userOrderTypeKey= "user_order_type";

class AppData {
  static setBoolean(String key, bool value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(key, value);
  }

  static setString(String key, String value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  static setDouble(String key, double value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setDouble(key, value);
  }

  static setInteger(String key, int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }

 static Future<bool> getBoolean(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(key)??false;
  }

  static Future<String> getString(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(key)??"null";
  }

 static Future<double?> getDouble(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getDouble(key);
  }

 static Future<int?> getInteger(String key) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(key);
  }
}
