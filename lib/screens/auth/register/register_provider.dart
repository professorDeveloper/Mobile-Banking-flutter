import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier{
  var _stateProgressMale=false;
  var _stateProgressFamale=false;

  void updateStateFamale(){
    if(_stateProgressFamale&&_stateProgressMale){
      _stateProgressFamale=true;
      _stateProgressMale=false;
      notifyListeners();
    }
    else{
      _stateProgressFamale=!_stateProgressFamale;
      notifyListeners();
    }
  }
  void uodateStateMale(){
    if(_stateProgressFamale&&_stateProgressMale){
      _stateProgressMale=true;
      _stateProgressFamale=false;
      notifyListeners();
    }
    else{
      _stateProgressMale=!_stateProgressMale;
      notifyListeners();
    }
  }

  void getStartedClickButton(BuildContext context){

  }

  bool get stateProgressFamale => _stateProgressFamale;
  bool get stateProgressMale => _stateProgressMale;

}