import 'dart:async';

Future fun() async {
  await new Future.delayed(Duration(milliseconds:5000));
  return '222';
}

/*
 * Dart是单线程语言，对于耗时的操作必须使用异步来处理
 * 
 * Future是指将来某个时间会获取一个值，当使用Future时会发生两件事
 *   1.Future相关代码会被排队，并返回一个未完成的Future
 *   2.当事件完成之后，Future的状态会变成已完成，此时就能获得相应的返回值
 * 
 * 要取到这个“返回值”，有两种方式
 *   1.使用async配合await
 *   2.使用Future提供的API
 */

main() async {
  print('111');
  // await 看字面意思就是等待当前事情做完，才会做下一件事
  // 加上await，同时得加上async
  await Future.delayed(Duration(milliseconds:5000)).then((val) {
    print('222');
  });
  print('333');
}