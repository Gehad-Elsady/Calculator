import 'package:calculatur/constans/constans.dart';
import 'package:calculatur/widged/custom_button.dart';
import 'package:flutter/material.dart';

class FristScreen extends StatefulWidget {
  const FristScreen({Key? key}) : super(key: key);

  @override
  State<FristScreen> createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  String exp='';
  String history='';
  double num1=0;
  double num2=0;
  String op='';

  void numclick(String buttext){
    if(
    buttext=='ac'){
      setState((){
        exp='';
        history='';
      });
       num1=0;
       num2=0;
    }
    else if(buttext=='+'||buttext=='-'||buttext=='%'||buttext=='/'||buttext=='x'){
   op=buttext;
   num1= double.parse(exp);
   setState(() {
     exp='';
     history=num1.toString();
     history+=buttext;
   });
    }else if(buttext=='.'){
      if(exp.contains('.')){}
      else{
        setState(() {
          exp+=buttext;
        });
      }

    }else if(buttext=='='){
      num2=double.parse(exp);
      history+=exp;
      if(op=='+'){
        exp=(num1+num2).toString();
      }
      else if(op=='-'){
        exp=(num1-num2).toString();
      }
      else if(op=='x') {
        exp = (num1 * num2).toString();
      }else if(op=='/'){
        num2==0?exp='unvalid opration': exp=(num1/num2).toString();
      }else if(op=='%'){
        exp=(num1%num2).toString();
      }
      setState(() {

      });
    }
    else{
      setState(() {
        exp+=buttext;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text("calculatour",
            style: TextStyle(
                fontSize: 40,
                color: Colors.greenAccent,
            ),
          ),centerTitle: true,
            elevation: 15,
          shadowColor: Colors.green,
    ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Container(alignment:Alignment.centerRight,padding: const EdgeInsets.only(right: 10), child: Text(history,style:constans.style1, )),
             const Divider(color:Colors.grey,thickness: 5 ,),
             Container(alignment:Alignment.centerRight,padding: const EdgeInsets.only(right: 10),child: Text(exp,style: constans.style1)),
             Row(
               children: [
                 CustomButton(butcolor: Colors.orange, buttext: "CLEAR",butflix: 2,callback:numclick,),
                 CustomButton(butcolor: Colors.green, buttext: "%",callback:numclick,),
                 CustomButton(butcolor: Colors.green, buttext: "/",callback:numclick,),
               ],
             ),
             Row(
               children: [
                 CustomButton(butcolor: Colors.greenAccent, buttext: "7",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "8",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "9",callback:numclick,),
                 CustomButton(butcolor: Colors.green, buttext: "x",callback:numclick,),
               ],
             ),
             Row(
               children: [
                 CustomButton(butcolor: Colors.greenAccent, buttext: "4",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "5",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "6",callback:numclick,),
                 CustomButton(butcolor: Colors.green, buttext: "-",callback:numclick,),
               ],
             ),
             Row(
               children: [
                 CustomButton(butcolor: Colors.greenAccent, buttext: "1",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "2",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "3",callback:numclick,),
                 CustomButton(butcolor: Colors.green, buttext: "+",callback:numclick,),
               ],
             ),
             Row(
               children: [
                 CustomButton(butcolor: Colors.greenAccent, buttext: "0",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: "00",callback:numclick,),
                 CustomButton(butcolor: Colors.greenAccent, buttext: ".",callback:numclick,),
                 CustomButton(butcolor: Colors.green, buttext: "=",callback:numclick,),
               ],
             ),
    ],
    ),
    );
  }
}
