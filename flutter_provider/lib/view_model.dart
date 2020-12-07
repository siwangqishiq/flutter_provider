import 'package:flutter/cupertino.dart';

class UserInfo {
  UserInfo({String account, String nickName, int age});

  String account;
  String nickName;
  int age;
}

class UserInfoViewModel extends ChangeNotifier {
  UserInfo _userInfo;

  UserInfoViewModel(this._userInfo);

  UserInfo get userInfo => _userInfo;

  void set userInfo(UserInfo info) {
    this._userInfo = info;
    notifyListeners();
  }
}

class CounterViewModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void set counter(int _c) {
    this._counter = _c;
    notifyListeners();
  }
}
