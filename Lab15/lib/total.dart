import 'package:flutter/cupertino.dart';

class Total extends ChangeNotifier{
  int count = 0;
  String textscore = "";
  get _count => count;


  void CheckScore(num){
    if(num == true){
      count += 1;
      textscore = "Your total score is $count";
      notifyListeners();
    }
    else {
      textscore = "Sorry you miss it";
      notifyListeners();
    }
  }
  void ResetScore(){
    count = 0;
    notifyListeners();
  }
}
