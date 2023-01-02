import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 40,
              )),
          const Icon(
            Icons.more_vert,
            size: 40,
          )
        ],
      ),
    );
  }
}
