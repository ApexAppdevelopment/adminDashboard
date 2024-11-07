import 'package:flutter/material.dart';
import 'package:flutter_airbnb_clone_app/Presentation/Widgets/listing_item.dart';
import 'package:flutter_airbnb_clone_app/Presentation/Widgets/search_field.dart';
import 'package:flutter_airbnb_clone_app/items.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SearchField(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listings.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                itemBuilder: (context, index) => ListingItem(
                  listing: listings[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
