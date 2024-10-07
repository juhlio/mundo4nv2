import 'package:explore_mundov2/screens/home_screen.dart';
import 'package:explore_mundov2/widgets/post_app_bar.dart';
import 'package:explore_mundov2/widgets/post_bottom_bar.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = (ModalRoute.of(context)!.settings.arguments) as LugaresModel;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(data.lugar_imagem),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
