import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                child: Center(child: BigText(text: "App bar", size: Dimensions.font26,),),
                padding: EdgeInsets.only(top: 5, bottom: 5),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.recommendedFoodImgSize,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food_10.png", width: double.maxFinite,
              fit: BoxFit.cover,),


            ),
          ),
          SliverToBoxAdapter(
            child: Text("Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers.Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers.Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers.Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers.Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers.Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers.Chicken is a major worldwide source of meat and eggs for human consumption. It is prepared as food in a wide variety of ways, varying by region and culture. The prevalence of chickens is due to almost the entire chicken being edible, and the ease of raising them. The chicken domesticated for its meat are broilers and for its eggs are layers."),
          )
        ],
      ),
    );
  }
}
