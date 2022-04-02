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

//dart语言变量语法
void test(){
  late String description; //惰性初始化变量
  description = 'Feijoada!';
  print(description);

  final String nickname = 'Bobby'; //不可修改
  const bar = 1000000; //整型常量
  print('$nickname, $bar');

  // String -> int
  var one = int.parse('1'); //字符串与数字之间的转化
  assert(one == 1);
  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
  print('$one,$oneAsString,$onePointOne,$piAsString');

  var s1 = 'Single quotes work well for string literals.';//字符串
  print('$s1');
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  print('$s3');
  var s = '字符串插值';
  assert('Dart 有$s，使用起来非常方便。' == 'Dart 有字符串插值，使用起来非常方便。');
  assert('使用${s.substring(3,5)}表达式也非常方便' == '使用插值表达式也非常方便。');
  print('$s');

}

void main(List<String> args) {
  // 变量
  variables();

  //测试
  test();
}