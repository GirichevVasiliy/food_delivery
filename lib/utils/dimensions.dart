import 'package:get/get.dart';
// Класс позволяет получить данные об устройстве, чтобы автоматически мастабировать приложение
class Dimensions {
  // Получаем размеры экрана устройства
  static double screenHeight = Get.context!.height; // Высота устройства
  static double screenWidth = Get.context!.width; // Ширина устройства

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  // Динамический Hight
  static double height10 = screenHeight / 84.4; // screenHeight к примеру 844 / 10
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height24 = screenHeight / 35.17;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;
  static double height80 = screenHeight / 10.55;
  static double height1_3 = screenHeight / 649.24;
  static double height1_5 = screenHeight / 562.67;

  // Динамический Fonts
  static double font20 = screenHeight / 42.2;
  static double font22 = screenHeight / 38.37;
  static double font24 = screenHeight / 35.17;
  static double font26 = screenHeight / 32.46;
  static double font18 = screenHeight / 46.89;
  static double font16 = screenHeight / 52.75;
  static double font12 = screenHeight / 70.33;
  static double font14 = screenHeight / 60.30;
  static double font30 = screenHeight / 28.13;

  // Динамический Radius
  static double radius20 = screenHeight / 42.2;
  static double radius15 = screenHeight / 56.27;
  static double radius30 = screenHeight / 28.13;

  // Динамический Width
  static double width7 = screenHeight / 120.57;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;

  // icon Size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize30 = screenHeight / 28.13;
  static double iconSize16 = screenHeight / 52.75;

  static double listViewSize = screenWidth / 3.25; // 390/120
  static double listViewTextContSize = screenWidth / 3.90; // 390/100
  static double textContSize = screenWidth / 5; // 390/100
// Популярная еда
  static double popularFoodImgSize = screenHeight / 2.10;
  static double recommendedFoodImgSize = screenHeight / 2.81;

// Bottom high
  static double bottomHighBar = screenHeight / 7.03;
}