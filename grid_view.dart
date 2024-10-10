import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gudpot/ui/pages/story_screen.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryGridPage(
        imageUrls: [
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/products/NeanthebellapalmLarge_Natural_Bamboo_bb9f9a5d-22d9-45c1-bc6e-ccc446192c73.jpg?v=1709222840',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/products/MoneyTreeLarge_Iron_Gray_4b3a9b12-f226-45d6-9b02-1afcad5a0bc5.jpg?v=1709577914',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/products/BurleMarxPhilodendronLarge_Earth_Red.jpg?v=1709213796',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/products/FiddleLeafLarge_Sandy_Pink.jpg?v=1709221197',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/files/Ficus_alii_tree_Large_Earth_Red.jpg?v=1723367084',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/files/ZZPlantBlackLarge_Stone_Black_912c7983-4ab0-4a32-8984-97b7c42838e8.jpg?v=1709213469',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/files/schefflera_tree_form_Large_Sage_Green_86e4424c-8b17-43ad-8b02-836328398b9f.jpg?v=1719387692',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/files/GoldenSnakePlantLarge_Iron_Gray_263cbcc5-c551-4a94-bdd7-0e8e1929fa1f.jpg?v=1709221494',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/files/FicusAudreyLarge_Natural_Bamboo_381fdc42-32c1-4c13-85c5-409d261c6a68.jpg?v=1716368895',
          'https://res.cloudinary.com/easyplant/image/fetch/f_auto,q_auto:good,c_fill,w_752,h_812/https://cdn.shopify.com/s/files/1/0513/8032/2473/files/MonsteraDeliciosaLarge_Sandy_Pink.jpg?v=1709222612',
        ],
      ),
    );
  }
}
