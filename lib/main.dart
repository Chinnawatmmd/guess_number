import 'dart:io';

import 'package:guess_number/game.dart';

void main(){
  play();
  /*while(true){
    play();
    print('Do you want to play agian(y/n)?');
    bool wantToplay = true;
    while(true) {
      String? playAgain = stdin.readLineSync();
      if (playAgain == 'y' || playAgain == 'Y')
        break;
      else if (playAgain == 'n' || playAgain == 'N'){
        wantToplay = false;
        break;
      }
      else {
        print('Please type y or n only.');
        continue;
      }
    }
    if(!wantToplay) break;
  }*/
}

void play(){
  print('GUESS THE NUMBER');
  var result = 0;
  var game = Game();
  while(result!=1){
    stdout.write('Please guess the number between 1 and 100 : ');
    String? input = stdin.readLineSync();
    var yourAns = int.tryParse(input!);
    if(yourAns==null){
      //print("Please type number only.");
      continue;
    }
    /*if(yourAns<1||yourAns>100){
      print("Please guess the number between 1 and 100 only.");
      continue;
    }*/
    result = game.doGuess(yourAns);
  }
  print('THE END');
}