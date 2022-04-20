//变量 https://dart.cn/samples#variables
void variables() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(
      'name is $name, year is $year, antennaDiameter is $antennaDiameter, flybyObjects is $flybyObjects, image is $image');
}

// 控制流程 (https://dart.cn/samples#control-flow-statements)
void control_flow_statements() {
  print('\n');
  print('#' * 40);
  print('控制流程');
  print('#' * 40);

  var year = DateTime.now().year;

  if (year >= 2001) {
    print('21s centry');
  } else if (year >= 1901) {
    print('20th centry');
  }

  var flybyObjects = ['a', 'b', 'c'];
  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  year = 2009;
  while (year < 2016) {
    year += 1;
    print(year);
  }
}
// 函数 （https://dart.cn/samples#functions）
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

bool is_hit(String line, String target) {
  return line.contains(target);
}

void functions() {
  print('\n');
  print('#' * 40);
  print('函数');
  print('#' * 40);

  var fib = fibonacci(9);
  print('fib 9 is $fib');

  var flybyObjects = [
    'hello',
    'abc',
    '123',
    'how do you do',
    'nice to meet you'
  ];
  flybyObjects.where((name) => name.contains('you')).forEach(print);

  var hit_lines = flybyObjects.where((x) => is_hit(x, 'o'));
  for (var one in hit_lines) {
    print('one is $one');
  }
}

//注释（https://dart.cn/samples#comments）
void zhuShi(){
  print('\n');
  print('#' * 40);
  print('注释');
  print('#' * 40)
  /// 这是一个文档注释。
  /// 文档注释用于为库、类以及类的成员添加注释。
  /// 像IDE和dartdoc这样的工具可以专门处理文档注释。

  /* 也可以像这样使用单斜杠和星号的注释方式 */
}

//导入 https://dart.cn/samples#imports
void imports(){
  print('\n');
  print('#' * 40);
  print('导入');
  print('#' * 40);

  //导入方式
  // Importing core libraries
  import 'dart:math';

  // Importing libraries from external packages
  import 'package:test/test.dart';

  // Importing files
  import 'path/to/my_other_file.dart';
}

//类 https://dart.cn/samples#classes
void class(){
  class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }
}

void main(List<String> args) {
  // 变量
  variables();

  //控制流程
  control_flow_statements();
 
  //函数
  functions();
}