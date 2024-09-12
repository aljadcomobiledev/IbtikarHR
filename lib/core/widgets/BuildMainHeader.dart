import 'package:flutter/material.dart';

import '../utils/colors/GeneralColor.dart';

class BuildMainHeader extends StatelessWidget {
  final String title;
  final Function()? fun;

  const BuildMainHeader({super.key, required this.title, this.fun});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GeneralColor.appColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: fun ?? Navigator.of(context).pop,
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 25,
              color: GeneralColor.white,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: GeneralColor.white),
          ),
          SizedBox(
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
