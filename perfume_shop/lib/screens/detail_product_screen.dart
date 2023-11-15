import 'package:flutter/material.dart';
import 'package:perfume_shop/constants/colors.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.golbehiColor,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Image(
                width: 32, height: 32, image: AssetImage('images/favour.png')),
          )
        ],
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Image(
              width: 32, height: 32, image: AssetImage('images/back.png')),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                      image: AssetImage('images/background.png'))),
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      )),
    );
  }
}
