import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:navigation/models/item.dart';
import 'package:navigation/widgets/item_widget.dart';
import 'package:navigation/widgets/footer_widget.dart'; 

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      'Laptop Razer Blade 14',
      64799000,
      'assets/razerblade14.jpg',
      'Processor: AMD Ryzen 9 6900HX\nRAM: DDR4 16RB up to 64GB\nSSD: 1TB\nGraphic: NVIDIA GeForce RTX 3080',
      5,
      4.5,
    ),
    Item(
      'Laptop Razer Blade 15',
      60899999,
      'assets/razorblade15.jpg',
      'Processor: Intel Core i7-12800H\nRAM: DDR4 16 GB up to 64 GB\nSSD: 512 GB\nGraphic: NVIDIA® GeForce GTX 1660 Ti',
      3,
      4.0,
    ),
    Item(
      'Laptop Razer Blade 16',
      84599000,
      'assets/razerblade16.jpg',
      'Processor: Intel Core i9-13950HX\nRAM: DDR5 32GB\nSSD: 2TB\nGraphics: NVIDIA® GeForce® RTX™ 4090',
      2,
      5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang Belanja'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.7,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: items[index]);
              },
            ),
          ),
          FooterWidget(name: 'Alkadafi', nim: '362333'),
        ],
      ),
    );
  }
}
