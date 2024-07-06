import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future <Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_ORDER_URI);
  }
  Future <Response> getRecommendProductList() async {
    return await apiClient.getData(AppConstants.RECOMMEND_ORDER_URI);
  }
}