import 'dart:async';
import 'dart:isolate';

class Home {
  void momIsCooking() {
    print('mom is cooking');
  }

  void isPlayGame() {
    Timer.periodic(Duration(seconds: 1), (_) {
      print("game is funning");
    });
  }

  void monLetMeBuySoySauce() {
    print("sweet, can you help to buy a bottle of soy sauce, please?");
  }

  void isAgreeToBuy() {
    print('ok, mom. I will buy it');
  }

  static buySoySauce(SendPort sendPort) {
    Timer.periodic(Duration(seconds: 2), (_) {
      sendPort.send("I have bought it");
    });
  }
}

void main() async {
  Home home = Home();
  home.momIsCooking();
  home.isPlayGame();
  home.monLetMeBuySoySauce();
  home.isAgreeToBuy();

  ReceivePort receivePort = ReceivePort();
  receivePort.listen((var message) {
    print(message);
  });
  Isolate.spawn(Home.buySoySauce, receivePort.sendPort);
}
