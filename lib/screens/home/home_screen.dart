import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/model/MoreItem.dart';

import '../../model/Card.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  static const route = "/home";

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  void loadCards(){
    moreItems.add(MoreItem("assets/image/payment.png", "Add Card"));
    moreItems.add(MoreItem("assets/image/pay.png", "Pay Info"));
    moreItems.add(MoreItem("assets/image/send.png", "Send"));
    moreItems.add(MoreItem("assets/image/more.png", "More"));
    cards.add(CardItem(color: Color(0xff3862F8),balance: "5 300.00",cardNumber: "**** 2236",date: "02/24"));
    cards.add(CardItem(color: Color(0xff060F27),balance: "6 322.00",cardNumber: "**** 3344",date: "03/31"));
    cards.add(CardItem(color: Color(0xff05144f),balance: "3 245.00",cardNumber: "**** 2456",date: "11/26"));
    cards.add(CardItem(color: Color(0xff4f0101),balance: "8 311.00",cardNumber: "**** 2236",date: "09/25"));
  }

  var cards= <CardItem>[];
  var moreItems= <MoreItem>[];
  @override
  void initState() {
    loadCards();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 25,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 18,),
                  Text("My accounts",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 23),),
                  Spacer(),
                  Image(image: AssetImage("assets/image/notification.png"),width: 23,height: 23,),
                  SizedBox(width: 20,)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 1),
                height: 200,
                child: ListView.builder(
                  itemCount: cards.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 10, bottom:
                      10),
                      child: Container(
                        width:300 ,
                        height: 200,
                        decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[4],
                          borderRadius: BorderRadius.circular(15.0),
                          color: cards[index].color,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 20,),
                                Image(image: AssetImage("assets/image/master.png") ,height: 40,width: 40,fit: BoxFit.fill,),
                                SizedBox(width: 17,),
                                Text(cards[index].cardNumber,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                                Spacer(),
                                Text(cards[index].date,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                                SizedBox(width: 16,)
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("balance",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15.5),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("\$ ${cards[index].balance}",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white),),
                              ],
                            ),
                            SizedBox(height: 28,)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                child: ListView.builder(
                  itemCount: moreItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 5,
                            child:Center(child: Image(
                              width: 65,
                              height: 65,
                              image: AssetImage(moreItems[index].image),),),
                          )
                        ],
                      )
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
