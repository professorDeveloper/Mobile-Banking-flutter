import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 16,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Sign In", style: TextStyle(fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 20,), textAlign: TextAlign.center,),

          ],),

          SizedBox(height: 50,),
          Row(children: [
            SizedBox(width: 20,),
            Image.asset("assets/image/icon_logo.png"),
            Text("GITA BANK", style: TextStyle(color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 26,
                fontStyle: FontStyle.italic),)


          ],),
          SizedBox(height: 19,),

          Row(children: [
            SizedBox(width: 20,),

            Text("Политика конфиденциалности сервиса",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),

          ],)
          , SizedBox(height: 9,),

          Row(
            children: [
              SizedBox(width: 20,),
            Container(
            width: 328,
            child: InkWell(
              onTap: (){

              },
              child: Text(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize:  16,

                  )
                  ,textAlign:TextAlign.start,
                  overflow:TextOverflow.clip,
                  "Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия ! 400,живым для визуально-слухового восприятия ! 400живым для визуально-слухового восприятия ! 400живым для визуально-слухового восприятия ! 400живым для визуально-слухового восприятия ! 400"),
            ),),
      ],
    ),

            SizedBox(height:18 ,),

            Row(
              children: [
                SizedBox(width: 20,),
                RoundCheckBox(onTap: (selected){
                  print('${selected}');

                    }
                ,checkedColor: Color(0xff3862F8),

                  uncheckedColor:Color(0xffD9D9D9) ,
                  checkedWidget: Icon(Icons.check,size: 10,color: Colors.white,),
                  size: 20,
                  animationDuration: Duration(microseconds: 1),
                  isChecked: true,
                ),
                SizedBox(width: 10,),
                InkWell(onTap:(){

                },child: Text("Я согласен со всеми условиями.",style: TextStyle(color: Color(0xff3862F8),fontWeight: FontWeight.w400,fontSize: 14),))
              ],
            ),
            // SizedBox(height: 4,)

    ]
    ,
    ),
        )
    ,
    )
    ,
    );
  }
}
