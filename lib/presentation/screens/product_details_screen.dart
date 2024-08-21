import 'package:first_logo_ui_task/presentation/widgets/animated_product_image.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Product Details',
          style: TextStyle(
            fontFamily: 'Alleyn',
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AnimatedProductImage(),
              const Text(
                'Brand Name',
                style: TextStyle(
                  fontFamily: 'Alleyn',
                  color: Colors.black54,
                ),
              ),
              const Text(
                'Sunshine comfy chair with table',
                style: TextStyle(
                  fontFamily: 'Alleyn',
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                height: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.deepPurpleAccent,
                              Colors.blue,
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/stats.png',
                                  width: 70,
                                ),
                                const SizedBox(width: 10),
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/images/up-right.png',
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Column(
                              children: [
                                const Text(
                                  '\$ 300.99',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Alleyn',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/stock.png',
                                        width: 30.0,
                                      ),
                                      const SizedBox(width: 3),
                                      const Text(
                                        'In Stock',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: 'Alleyn',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/schedule.png',
                                        width: 30.0,
                                      ),
                                      const SizedBox(width: 3),
                                      const Text(
                                        'Delivery on',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: 'Alleyn',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/rate.png',
                                        width: 30.0,
                                      ),
                                      const SizedBox(width: 15),
                                      const Text(
                                        '4.8',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Image.asset('assets/images/share.png'),
              ),
              Container(
                padding: const EdgeInsets.all(11),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/bag.png'),
                    const Text(
                      'Added to cart',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Alleyn'),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(11),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Image.asset('assets/images/page.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
