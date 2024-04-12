import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratical_exam/main.dart';

import 'details.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double stotal = 0.0;
  double delivery = 100;
  double total = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    subtotal();
    total = stotal + delivery;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.brown.shade300,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 28,
            )),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 28),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    (route) => false);
              },
              child: Icon(
                CupertinoIcons.xmark,
                color: Colors.white,
                size: 28,
              )),
          SizedBox(width: 20,),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height - 105,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: AssetImage("assets/cartbg.png"),fit: BoxFit.fitHeight,)
                    ),

                  child: Container(
                   color: Colors.brown.shade300.withOpacity(0.2),

                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...CartList.map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 20.0),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 12, right: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,




                                      
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundImage: NetworkImage(e.img),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.name,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey.shade700),
                                            ),
                                            Text(
                                              'Rs.' + e.price.toString(),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 60,
                                          width: 110,
                                          // color: Colors.red,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Icon(CupertinoIcons
                                                      .minus_circle_fill),
                                                  Text(
                                                    e.counter.toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            Colors.grey.shade700),
                                                  ),
                                                  Icon(CupertinoIcons
                                                      .plus_circle_fill),
                                                  InkWell(
                                                    onTap: (){
                                                      setState(() {
                                                        total=total-e.price.toDouble()!;
                                                        CartList.remove(e);
                                                      });
                                                    },
                                                      child: Icon(
                                                    CupertinoIcons.delete,
                                                    size: 16,
                                                  )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Rs.' +
                                                    productprice(e.counter, e.price)
                                                        .toString(),
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey.shade500,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )).toList(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width - 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.discount_outlined,
                                            color: Colors.grey.shade500,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Promo Code',
                                            style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.brown.shade300,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.brown.shade200,
                                              spreadRadius: 1,
                                              blurRadius: 8,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.circular(30)),
                                      child: Center(
                                          child: Text(
                                        'Apply',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Spacer(),
                          Container(
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Subtotal',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                      Text(
                                        'Rs.' + stotal!.toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade500),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                      height: 20,
                                      color: Colors.grey.shade200,
                                      thickness: 2),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Delivery',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                      Text(
                                        'Rs. 100',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade500),
                                      ),
                                    ],
                                  ),
                                  //SizedBox(height: 10,),
                                  Divider(
                                      height: 20,
                                      color: Colors.grey.shade200,
                                      thickness: 2),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Rs.' + total!.toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  productprice(qty, price) {
    double ans = qty * price;
    return ans;
  }

  subtotal() {
    for (int i = 0; i < CartList.length; i++) {
      double ans = CartList[i].counter! * CartList[i].price!.toDouble();
      stotal = stotal + ans;
    }
  }
}
