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
  static double height120 = screenHeight / 7.04;

  // Динамический Fonts
  static double font20 = screenHeight / 42.2;
  static double font12 = screenHeight / 70.33;

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
}