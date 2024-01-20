import 'package:flutter/material.dart';

import '../../../../../../core/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Data Application"),
          Container(child: Text("It is working"),)
        ],
      ),
    );
  }
}
