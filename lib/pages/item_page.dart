import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:navigation/models/item.dart';
import 'package:navigation/widgets/footer_widget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  String formatCurrency(int amount) {
    final formatter = NumberFormat('#,##0', 'id_ID');
    return formatter.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: item.name,
                child: Image.network(item.image),
              ),
            ),
            SizedBox(height: 18),
            Text(
              item.name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${formatCurrency(item.price)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Stok: ${item.stock}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Rating: ${item.rating} ⭐',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16), 
            Text(
              'Spesifikasi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              item.description,
              style: TextStyle(fontSize: 16),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${item.name} Telah ditambahkan di Wishlist')),
                  );
                },
                child: Text('Tambah Wishlist'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
            FooterWidget(name: 'Alkadafi Firnawan', nim: '362358302108'),
          ],
        ),
      ),
    );
  }
}
