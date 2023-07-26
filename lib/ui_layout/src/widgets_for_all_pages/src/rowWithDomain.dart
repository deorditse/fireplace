import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

rowWithDomain({context}) => Padding(
  padding: const EdgeInsets.only(bottom: 8.0),
  child:   Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            'assets/icons/premium_icon_internet.svg',
            semanticsLabel: 'premium-icon-internet',
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              // Get.to(SmartPrime1000Page());
            },
            child: Text(
              'abc-fireplace.com',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
            ),
          ),
        ],
      ),
);
