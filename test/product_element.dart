@HtmlImport('product_element.html')
library custom_binding.test.product_element;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:custom_binding/custom_binding.dart';

@PolymerRegister('product-element')
class ProductElement extends PolymerElement with CustomBindingBehavior {
  ProductElement.created() : super.created();

  @Property(notify: true)
  Product model = new Product();

  @reflectable
  void reset([_, __]) {
    var p = new Product()
      ..name = "Sample"
      ..price = 1234
      ..quantity = 1000;
    set('model', p);
  }

//  void ready() {
//    setUpCustomBindings(this);
//  }
}

class Product extends JsProxy {
  @reflectable
  String name;

  @reflectable
  num price;

  @reflectable
  int quantity;
}
