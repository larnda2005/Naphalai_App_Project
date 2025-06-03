import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/IMG_1540.png',
            height: 100,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "ลิปละลึก - blah blah...",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text("100,000 ₭", style: TextStyle(color: Colors.pink)),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.star, size: 16, color: Colors.amber),
                Text(
                  "5.0 (128) | ขายแล้ว 100+ อัน",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
