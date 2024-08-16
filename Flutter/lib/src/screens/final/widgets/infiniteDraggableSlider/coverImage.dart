import 'package:flutter/material.dart';


class MagazineCoverImage extends StatelessWidget {
  const MagazineCoverImage({
    super.key,
    this.height, required this.asset,
  });

  final String asset;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
        height: height,
        child: AspectRatio(
          aspectRatio: .65,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(asset),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 40,
                  offset: Offset(-20, 20),
                )
              ],
            ),
          ),
          // child: Image.network(asset,fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
