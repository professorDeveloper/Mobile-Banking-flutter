import 'package:flutter/cupertino.dart';

class ConfirmProvider extends ChangeNotifier{
  var _stateProgress=false;

  void updateState(){
    _stateProgress=!_stateProgress;
    notifyListeners();
  }

  void getStartedClickButton(BuildContext context){

  }

  bool get stateProgress => _stateProgress;

}