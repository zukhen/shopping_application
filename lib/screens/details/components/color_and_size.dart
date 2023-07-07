import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Color"),
              Row(
                children: const <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: const TextStyle(color: Color(0xFF535353)),
                children: [
                  const TextSpan(
                    text: "Size\n",
                  ),
                  TextSpan(
                      text: "${product.size} cm",
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold))
                ]),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0 / 4, right: 20.0 / 2),
          padding: const EdgeInsets.all(2.5),
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            border: Border.all(color: isSelected ? color : Colors.transparent),
            shape: BoxShape.circle,
          ),
          child: DecoratedBox(
              decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        )
      ],
    );
  }
}
