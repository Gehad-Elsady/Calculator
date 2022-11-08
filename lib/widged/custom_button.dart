import 'package:calculatur/constans/constans.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({Key? key,
   @required this.butcolor,
   @required this.buttext,
     this.butflix,
     @required this.callback,
   }) : super(key: key);
  Color ? butcolor;
  String ? buttext;
  int ? butflix;
  Function ? callback;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: butflix==null?1:butflix!,
      child: GestureDetector(
        onTap: (){
          callback!(buttext);
        },
        child: Container(
          width: 70,
          height: 80,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: butcolor,
            boxShadow: const [BoxShadow(color: Colors.green,
            spreadRadius: 1,
            blurRadius: 5),
            ]
          ),
          child: Text(buttext!,style: constans.button,),
        ),
      ),
    );
  }
}
