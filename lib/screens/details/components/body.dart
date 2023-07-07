import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

import 'package:shop_app/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //  provide height and weight
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12, left: 20.0, right: 20.0),
                height: size.height,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    Description(product: product),
                    const CounterWithFavBtn(),
                    AddToCard(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
        ),
      ]),
    );
  }
}
