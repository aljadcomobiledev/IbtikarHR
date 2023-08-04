import 'package:flutter/material.dart';

import '../utils/colors/GeneralColor.dart';

class BuildMainHeader extends StatelessWidget {
  final String title;
  final Function()? fun;

  const BuildMainHeader({super.key, required this.title, this.fun});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: fun ?? Navigator.of(context).pop,
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 25,
              color: GeneralColor.appColor,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: GeneralColor.textColor),
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
