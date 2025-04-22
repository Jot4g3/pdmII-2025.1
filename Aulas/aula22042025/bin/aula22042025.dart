import 'package:aula22042025/aula22042025.dart' as aula22042025;

class Par<T> {
  T? x;
  T? y;
  Par(x, y) {
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  if(args[0] == "1"){
    print("Opção selecionada 1");
    dynamic x = 10;
    dynamic y = 20;
    var parInt = Par<int>(x,y);
    print("x=${parInt.x}, y=${parInt.y}");
  }

  if (args[0] == "2"){
    print("Opção selecionada 2");
    dynamic oi = 10;
    oi = [10];
    print(oi);
  }

  if (args[0] == "3"){
    print("Opção selecionada 3");
    var numList = [1,3,5];
    var [a,b,c] = numList;
    print(a);
  }
  
}
