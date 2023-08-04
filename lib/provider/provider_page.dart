import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier{

  List _favName=[];

  List get favoriteName=>_favName;

  void favorites(String name){

    final favNameList = _favName.contains(name);
    if(favNameList){
      _favName.remove(name);
    }else{
      _favName.add(name);
    }
    notifyListeners();
  }

  bool icn_change(String icnName){
    final favIcn = _favName.contains(icnName);
    return favIcn;
  }
}