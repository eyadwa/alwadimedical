// import 'package:centerm/controller/controlapi/getservec.dart';
// import 'package:centerm/controller/controlapi/model.dart';
// import 'package:get/get.dart';
// class PopularProductController extends GetxController{
//   final PopularProductRepository popularProductRepository;
//
//
//   PopularProductController({required this.popularProductRepository});
//
//
//   List<ProductsModel> _popularProductList=[];
//   List<ProductsModel> get popularProductList => _popularProductList;
//
//   Future<void> getPopularProductList()async {
//     Response response = await popularProductRepository.getPopularProductList();
//
//     try{
//
//
//       if(response.statusCode==200){
//         print("Got products from the server");
//         _popularProductList=[];
//         _popularProductList.addAll(Product.fromJson(response.body).products);
//         print(_popularProductList);
//         update();
//       }
//       else{
//         print("Error occurred and the error is "+response.body);
//       }
//     }catch(e){
//       print("Error in the controller is "+e.toString());
//     }
//   }
// }