import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk; // bu ve alttaki satırın notu altta yer alır
  final Widget? child;
  //final Function? onPress;
  MyContainer({
    this.renk = Colors.white,
    this.child,
    /*this.onPress*/
  });
  // noot: my containerin içine renk verebilmemizi sağlayan 2 satır
  //const MyContainer({
  //Key? key, otomatik gelen 3 satır..
  //}) : super(key: key);

  @override // bunun için containere sağ tıklayıp refactor sekmesinde extrac flutter widget yaptım.
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onPress(),
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: renk),
      ),
    );
  }
}
