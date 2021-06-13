class CartModel {
  final String idCart;
  final String quantity;
  final String name;
  final String image;
  final String price;

  CartModel({
    this.idCart,
    this.quantity,
    this.name,
    this.image,
    this.price,
  });

  factory CartModel.fromJson(json) {
    return CartModel(
      idCart: json['id_cart'],
      quantity: json['quantity'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
    );
  }
}
