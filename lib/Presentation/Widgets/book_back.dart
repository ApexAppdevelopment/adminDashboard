import 'package:flutter/material.dart';
import 'package:flutter_airbnb_clone_app/Presentation/Widgets/landlord_info.dart';
import 'package:flutter_airbnb_clone_app/AppUtils/constants.dart';
import 'package:flutter_airbnb_clone_app/Model/listing.dart';

class BookBackWidget extends StatelessWidget {
  final Listing listing;
  const BookBackWidget(
    this.listing, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 40),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(Constants.bookBorderRadius),
          bottomRight: Radius.circular(Constants.bookBorderRadius),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(-6, 0),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(6, 0),
          ),
        ],
      ),
      child: LandlordInfo(listing),
    );
  }
}
