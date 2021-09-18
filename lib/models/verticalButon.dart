import 'package:flutter/material.dart';

class ButonsVertical extends StatelessWidget {
  const ButonsVertical({
    Key? key,
    @required this.image,
    @required this.titel,
    @required this.press
  }) : super(key: key);

final image,titel;
final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap:press ,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: 50,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child:  image,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.pink[50],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: titel,
          ),
        ],
      ),
    );
  }
}