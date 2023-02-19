import 'package:flutter/cupertino.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/login/login_screen.dart';

class ConfirmProvider extends ChangeNotifier{
  var _stateProgress=false;

  void updateState(){
    _stateProgress=!_stateProgress;
    notifyListeners();
  }

  void getStartedClickButton(BuildContext context){
    Navigator.pushReplacementNamed(context,SignInScreen.route);
  }

  bool get stateProgress => _stateProgress;

}