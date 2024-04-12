import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_model.dart';
import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> product = [
    {
      'name': 'Shirt',
      'category': 'Men',
      'desc': 'Cotton-Linen Blend\nCountry of Origin: India\nColours available',
      'price': 200.0,
      'img': 'https://www.jiomart.com/images/product/original/rvkas4ierp/bought-first-men-brown-printed-cotton-blend-casual-shirt-xl-product-images-rvkas4ierp-0-202209140821.jpg?im=Resize=(500,630)',
    },
    {
      'name': 'Jeans',
      'category': 'Men',
      'desc': 'Denim Jeans\nCountry of Origin: India\nColours available',
      'price': 700.0,
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHmAvuNMnw-lDRwLSfAfBn6wuce5caaIEjg&usqp=CAU',
    },
    {
      'name': 'Tie',
      'category': 'Men',
      'desc': 'Striped tie for office wear\nCountry of Origin: India\nColours available',
      'price': 250.0,
      'img': 'https://www.jiomart.com/images/product/original/rvlfehdrrl/medium-black-varsity-jacket-for-men-bomber-jacket-for-men-product-images-rvlfehdrrl-0-202302271835.png?im=Resize=(500,630)',
    },
    {
      'name': 'Dress',
      'category': 'Women',
      'desc': 'A knee-length dress for party wear\nCountry of Origin: India\nColours available',
      'price': 930.0,
      'img':'https://imagescdn.planetfashion.in/img/app/product/8/800462-9448593.jpg?auto=format&w=494.40000000000003',
    },
    {
      'name': 'Saree',
      'category': 'Women',
      'desc': 'A custom made cotton saree\nCountry of Origin: India\nColours available',
      'price': 560.0,
      'img': 'https://stylebypanaash.in/cdn/shop/products/f1292e07-21c7-4428-b3ef-9e1e7a4ad7f7.jpg?v=1681363705&width=1445',
    },
    {
      'name': 'Heels',
      'category': 'Women',
      'desc': 'A 4-inch block heel\nCountry of Origin: India\nColours available',
      'price': 349.0,
      'img':'https://img0.junaroad.com/uiproducts/19763594/zoom_0-1682653856.jpg',    },
    {
      'name': 'Onesie',
      'category': 'Kids',
      'desc': 'A knee-length dress for party wear\nCountry of Origin: India\nColours available',
      'price': 350.0,
      'img': 'https://bigberthaoriginal.ie/cdn/shop/products/kids-hooded-sherpa-fleece-christmas-print-onesie-5-10-years-red_CTCHONECHRE5_01_1200x1200.jpg?v=1662455973',
    },
    {
      'name': 'Shoes',
      'category': 'Kids',
      'desc': 'LED lights shoes\nCountry of Origin: India\nColours available',
      'price': 799.0,
      'img': 'data:image/jpeg;base64,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',
    },
    {
      'name': 'Frock',
      'category': 'Kids',
      'desc': 'soft cloth, cotton frock for girls\nCountry of Origin: India\nColours available',
      'price': 400.0,
      'img': 'https://www.jiomart.com/images/product/original/rvmlqelnk6/aashrun-kids-frocks-kids-dress-party-wear-party-frocks-fancy-frocks-fancy-frockrocks-rayon-frocks-rayon-frock-blue-frock-knee-length-frock-frock-for-girls-frocks-for-kids-baby-dress-baby-frocks-white-product-images-rvmlqelnk6-0-202309081315.jpg?im=Resize=(500,630)',
    },
  ];

  List<appmodel> list = [];

  @override
  void initState() {
    for (int i = 0; i < product.length; i++) {
      appmodel am = appmodel.fromMap(product[i]);
      setState(() {
        list.add(am);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.shopping_bag),
            Text('Home | Happy Shopping!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade200),
              child: Icon(
                CupertinoIcons.line_horizontal_3_decrease,
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        CupertinoIcons.search,
                        size: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Search your favourite products',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.filter_list_rounded,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'All',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          'Men',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Women',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Kids',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    ...list
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailsScreen(
                                            name: e.name!,
                                            category: e.category!,
                                            price: e.price!,
                                            img: e.img!,
                                            desc: e.desc!,
                                          )));
                                },
                                child: Container(
                                  height: 250,
                                  width: width - 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, top: 8.0),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(
                                              CupertinoIcons.heart,
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: CircleAvatar(
                                          radius: 60,
                                          backgroundImage: NetworkImage(e.img!),
                                        ),
                                      ),
                                      Text(
                                        e.name!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),

                                      // SizedBox(
                                      //   height: 18,
                                      // ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text(
                                            'Rs.' + e.price.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          // SizedBox(
                                          //   width: 61.3,
                                          // ),
                                          Spacer(),
                                          InkWell(
                                            onTap: () {
                                              CartModel hcart = CartModel(
                                                  counter: 1,
                                                  name: e.name!,

                                                  price: e.price!,

                                                  img: e.img!,
                                                  desc: e.desc!, category: e.category!);
                                              CartList.add(hcart);
                                            },
                                            child: Container(
                                              clipBehavior: Clip.none,
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15)),
                                                color:Colors.brown.shade300,
                                              ),
                                              child: Icon(
                                                CupertinoIcons.plus,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
