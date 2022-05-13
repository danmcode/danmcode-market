import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size query = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: query.height * 0.10,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tecnologia')),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tecnologia')),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tecnologia')),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tecnologia')),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tecnologia')),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tecnologia')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
