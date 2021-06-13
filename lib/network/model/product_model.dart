class CategoryWithProduct {
  final String idCategory;
  final String category;
  final String image;
  final String status;
  final List<ProductModel> product;

  CategoryWithProduct(
      {this.idCategory, this.category, this.image, this.status, this.product});

  factory CategoryWithProduct.fromJson(Map<String, dynamic> data) {
    var list = data['product'] as List;
    List<ProductModel> listProduct =
        list.map((e) => ProductModel.fromJson(e)).toList();
    return CategoryWithProduct(
        idCategory: data['idCategory'],
        category: data['category'],
        image: data['image'],
        status: data['status'],
        product: listProduct);
  }
}

class ProductModel {
  final String idProduct;
  final String idCategory;
  final String nameProduct;
  final String description;
  final String imageProduct;
  final String price;
  final String status;
  final String createdAt;

  ProductModel({
    this.idProduct,
    this.idCategory,
    this.nameProduct,
    this.description,
    this.imageProduct,
    this.price,
    this.status,
    this.createdAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      idProduct: data['id_product'],
      idCategory: data['id_category'],
      nameProduct: data['name'],
      description: data['description'],
      imageProduct: data['image'],
      price: data['price'],
      status: data['status'],
      createdAt: data['created_at'],
    );
  }
}
