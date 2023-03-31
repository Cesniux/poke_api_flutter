import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Pokemon Details'),
        automaticallyImplyLeading: false,
        leading: InkWell(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          onTap: () {
            // Navigator.pop(context);
          },
          highlightColor: CColors.dark.withOpacity(0.4),
          child: const Icon(Icons.arrow_back, color: CColors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: CColors.grass,
            width: double.infinity,
            height: 300,
            child: Column(children: [
              SvgPicture.asset(
                'assets/images/svg/bulbasaur_image.svg',
              ),
            ]),
          )
        ],
      ),
    );
  }
}
