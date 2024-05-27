import 'package:get/get.dart';
// Класс позволяет получить данные об устройстве, чтобы автоматически мастабировать приложение
class Dimensions {
  static double screenHeigh = Get.context!.height; // Высота устройства
  static double screenWidth = Get.context!.height; // Ширина устройства
}