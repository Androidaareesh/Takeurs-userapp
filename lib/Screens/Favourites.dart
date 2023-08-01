import 'package:flutter/material.dart';
import 'package:takeurs_userapp/Materials/custom_appbar.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Favourites", context: context),
    );
  }
}
