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
      'img':'https://images.meesho.com/images/products/310919586/mjsdf_512.webp'
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
