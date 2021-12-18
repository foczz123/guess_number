import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var target = r.nextInt(100);
  print(target);
  print("╔═════════════════════════════════════════╗");
  print("║***********  Guess the Number ***********║");
  print("╚═════════════════════════════════════════╝");
  while(true) {
    i++;
    stdout.write("║ Guess the number 1-100: ");
    var input = stdin.readLineSync();
    var x = int.tryParse(input!);
    if(x != null && x>0 && x<=100) {
      if (x == target) {
        stdout.write("║ ➜ $x IS CORRECT ❤, ");
        stdout.write("TOTAL GUESSES: $i \n");
        break;
      }
      else if (x < target) {
        print("║ ➜ $x IS TOO LOW ▼");
      }
      else if (x > target) {
        print("║ ➜ $x IS TOO HIGH ▲");
      }
      print("╟━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    }
    else {
      print("║ ╳ Please type only numbers between 1-100 ");
      i--;
    }
  }
  print("╔━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╗");
  print("║ *************** THE END *************** ║");
  print("╚═════════════════════════════════════════╝");
}
