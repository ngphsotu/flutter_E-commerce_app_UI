import 'components/body.dart';
import '/models/Product.dart';
import 'package:flutter/material.dart';
import './components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  // routeName - details
  static String routeName = '/details';

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final ProductDetailsArgument args =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArgument;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: Body(
        product: args.product,
      ),
    );
  }
}

// ProductDetailsArgument - pass product to details screen & use name route so need create a arguments class
class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument({required this.product});
}
