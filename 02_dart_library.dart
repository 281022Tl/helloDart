import 'dart:math';

//数字，集合，字符串等https://dart.cn/guides/libraries/library-tour#dartcore---numbers-collections-strings-and-more
void dartcore_digital_string() {
  //控制台打印
  print('#' * 40);
  print('I drink &tea.');

  // parse()方法将字符串转换为整型或双浮点型对象
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);

  //num的parse()方法
  assert(num.parse('42') == 42);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);

  //添加radix参数，指定整数的进制基数
  assert(int.parse('42', radix: 16) == 66);

  
}
