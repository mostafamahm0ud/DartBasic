// import 'package:dart_/dart_.dart' as dart_;
// // import 'dart:io';

// void main(List<String> arguments) {
//   print('Hello world: ${dart_.calculate()}!');

//   // ******************Where Fun (Filtration)*********************
//   var a1 = [1, 2.5, 3, 4, 5, 6.0, 7.4, 8, 9];
//   print(a1);

//   a1.retainWhere((element) => element >= 4);
//   print(a1);
//   a1.removeWhere((element) => element >= 4);
//   print(a1);
//   // var b1 = a1.where((element) => element >= 3);
//   // var b2 = a1.lastWhere((element) => element >= 3);
//   // var b3 = a1.firstWhere((element) => element >= 3);
//   // var c1 = a1.indexWhere((element) => element >= 3);
//   // var d = a1.whereType<double>();

//   // print(b1);
//   // print(b2);5
//   // print(b3);
//   // print(c1);
//   // print(d);

//   // **********calculate Age***********
//   // print("enter Your birth year :");
//   // var birthYear = stdin.readLineSync();
//   // var age = DateTime.now().year - int.parse(birthYear!);
//   // print("your age is $age Years old");
// }
import 'dart:io';
import 'dart:math';

class Human {
  int? age;
  set_age(p_age) {
    this.age = p_age;
  }

  get_age() {
    print("age =${this.age}");
  }
}

typedef operation(a, b);

calc(a, b, operation fun) {
  fun(a, b);
}

add(a, b) {
  print("$a+$b=${a + b}");
}

sub(a, b) {
  print("$a-$b=${a - b}");
}

mul(a, b) {
  print("$a*$b=${a * b}");
}

div(a, b) {
  print("$a/$b=${a / b}");
}

void main(List<String> args) {
  Human man = Human();

  man.set_age(35);
  man.get_age();

  //   *********************************888
  calc(2, 4, (a, b) => add(a, b));
  calc(2, 4, (a, b) => sub(a, b));
  calc(2, 4, (a, b) => mul(a, b));
  calc(2, 4, (a, b) => div(a, b));
//   ***********************  Degree App *********************
  for (var i = 0; i <= 10; i++) {
    var degree = Random().nextInt(100);
    if (degree < 40) {
      continue;
    } else if (degree > 90) {
      print("degree=$degree");
      if (degree >= 95) {
        print("A+");
      } else {
        print("A");
      }
    } else if (degree < 90 && degree >= 75) {
      print("degree=$degree");
      if (degree > 85) {
        print("B+");
      } else {
        print("B");
      }
    } else if (degree < 75 && degree >= 60) {
      print("degree=$degree");
      if (degree >= 70) {
        print("C+");
      } else {
        print("C");
      }
    } else if (degree < 60 && degree >= 50) {
      print("degree=$degree");
      if (degree >= 55) {
        print("D+");
      } else {
        print("D");
      }
    } else if (degree < 50) {
      print("degree=$degree");
      print("F");
    }
  }

// // **********calculate Age***********
//   AgeCalculate:
//   for (var i = 0; i < 10; i--) {
//     try {
//       print("enter Your birth year :");
//       var birthYear = stdin.readLineSync();
//       var age = DateTime.now().year - int.parse(birthYear!);
//       print("your age is $age Years old");
//       break AgeCalculate;
//     } on FormatException {
//       print("Wrong value");
//     }
//   }

// *************************** Number Methods *******************
  var x = -4;
  print(x.isEven);
  print(x.isOdd);
  print(x.isNegative);
  print(x.isFinite);
  print(x.isInfinite);
  var y = 8.7;
  print(y.truncate()); // بتقرب للصفر من الجهتين
  print(y.floor()); //لاقل رقم صحيح
  print(y.round()); // التقريب العادي
  print(y.ceil()); // لاقرب قيمه موجبه   للرقم الصحيج الموجب الاول
  print(y.remainder(x)); // باقي القسمه

//  ********************** String Methods ******************

  var name = "Mostafa";
  print(name.isEmpty);
  print(name.isNotEmpty);
  print(name.toLowerCase());
  print(name.toUpperCase());
  print(name.replaceAll('a', 'ALI'));
  print(name.replaceFirst('m', 'Ali'));
  print(name.contains('afa'));
  var text = "      M#S#T#A#F#A#";
  var v1 = text.split('#');
  print(v1);
  var v2 = v1.join();
  print(v2);
  print(v2.trim());

// ********************Lists && Sets******************  list is mutable   قابله للتعديل
  var list = [0, 2, 4, 5, 6, 7, 8, 9];
  var set2 = {0, 2, 4, 5, 6, 7, 8, 9};
  var set1 = {3, 7, 6, 8, 9};

  print(set1.intersection(set2)); // تقاطع
  print(set1.union(set2)); // اتحاد
  print(set1.difference(
      set2)); // اختلاف في الاولي وليس في التانيه    بماذا يختلف ال1 عن 2
  print(set2.difference(set1));

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (var element in list) {
    print(element);
  }

  list.forEach((element) {
    print(element);
  });

  var list2 = [
    [1, 9, 8],
    [1, 2, 3]
  ];

  for (var i = 0; i <= 1; i++) {
    for (var j = 0; j <= 2; j++) {
      print(list2[i][j]);
    }
  }

//*******************map****************  Dectionary / Key & Value

  var map = {
    9: 'Q',
    8: 'L',
    4: 'A',
    5: 'B',
    6: 'E',
  };

  map.forEach((key, value) {
    print("$key  >>>>>  $value");
  });

  var q = 5;
  print(fun(q));
  info();
}

fun(n) {
  if (n != 0)
    return n + fun(n - 1);
  else
    return 0;
}

info() {
  try {
    for (var i = 0; i < 10; i++) {
      if (i == 5) {
        throw FormatException();
      }
      print('i=$i');
    }
  } catch (e) {
    print(e);
  }
}
