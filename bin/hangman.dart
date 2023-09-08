import 'package:hangman/hangman.dart' as hangman;
import 'dart:io';
import 'dart:math';
List<List<String>>type=
[
  [
    'lion',
    'horse',
    'cat',
    'dog',
    'rabbit',
    'duck',
    'cow',
    'robin',
  ],
  [    'red',
    'black',
    'yellow',
    'blue',
    'white',
    'purple',
    'green',
  ],
  [
    'ahmed',
    'ali',
    'mahmoud',
    'mohamed',
    'yasser',
    'youssef',
    'weza',
  ]

];


void main(List<String> arguments){

print("for animal prees 1");
print ("for color press 2 ");
print ("for names press 3");
  int ans =int.parse(stdin.readLineSync()!);
  List chosenlist = type[ans-1];
  String randomword=chosenlist[Random().nextInt(chosenlist.length-1)];
  print(randomword);
  List display=[];
  for(var letter in randomword.split('')){
    display.add('_');
  }
print (display);
  var gussedlatter;
  bool gameover= false;
  int lives=6;
  while(!gameover){
    print("enter your guessed latter");
    gussedlatter=stdin.readLineSync()!.toUpperCase();
    for (int i=0;i<randomword.length;i++){
      if(randomword[i]==gussedlatter){
        display[i]=gussedlatter;
      }
    }
    print(display);
    if(!randomword.split('').contains(gussedlatter)){
      lives-=1;
      print(display[6-lives-1]);
      if(lives==0){
        print("you lose");
        gameover= true;
      }
    }
  }
}
void display() {
  var list = ['''
  3.   +---+
  4.       |
  5.       |
  6.       |
  7.      ===''', '''
  8.   +---+
  9.   O   |
 10.       |
 11.       |
 12.      ===''', '''
 13.   +---+
 14.   O   |
 15.   |   |
 16.       |
 17.      ===''', '''
 18.   +---+
 19.   O   |
 20.  /|   |
 21.       |
 22.      ===''', '''
 23.   +---+
 24.   O   |
 25.  /|\  |
 26.       |
 27.      ===''', '''
 28.   +---+
 29.   O   |
 30.  /|\  |
 31.  /    |
 32.      ===''', '''
 33.   +---+
 34.   O   |
 35.  /|\  |
 36.  / \  |
 37.      ==='''
  ];
}
