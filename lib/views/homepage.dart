import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:shopx/controllers/product_controller.dart';
import 'package:shopx/views/product_tile.dart';

class HomePage extends StatelessWidget {
  // final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'ShopX',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: const Icon(Icons.view_list_rounded),
                    onPressed: () {}),
                IconButton(icon: const Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
    AlignedGridView.count(
    crossAxisCount: 4,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    itemBuilder: (context, index) {
    return Tile(
    index: index,
    extent: (index % 7 + 1) * 30,
    );
    },
    );
          // Expanded(
          //   child: Obx(() {
          //     if (productController.isLoading.value)
          //       return Center(child: CircularProgressIndicator());
          //     else
          //       return StaggeredGridView.countBuilder(
          //         crossAxisCount: 2,
          //         itemCount: productController.productList.length,
          //         crossAxisSpacing: 16,
          //         mainAxisSpacing: 16,
          //         itemBuilder: (context, index) {
          //           return ProductTile(productController.productList[index]);
          //         },
          //         staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          //       );
          //   }),
          // )
        ],
      ),
    );
  }
}