import 'package:ecommerc_app/data/model/product_slider_model.dart';
import 'package:ecommerc_app/data/network_utils.dart';
import 'package:ecommerc_app/data/urls.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ProductSliderModel productSliderModel = ProductSliderModel();
  bool getProductSliderInProgress = false;

  Future<bool> getProductSliderList() async {
    getProductSliderInProgress = true;
    update();
    final result = await NetworkUtils().getMethod(Urls.productSliderUrl);
    getProductSliderInProgress = false;

    if (result != null) {
      productSliderModel = ProductSliderModel.fromJson(result);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
