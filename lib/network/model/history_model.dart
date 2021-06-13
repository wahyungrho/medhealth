class HistoryOrdelModel {
  final String invoice;
  final String idUser;
  final String orderAt;
  final String status;
  final List<HistoryOrderDetailModel> detail;

  HistoryOrdelModel({
    this.invoice,
    this.idUser,
    this.orderAt,
    this.status,
    this.detail,
  });

  factory HistoryOrdelModel.fromJson(Map<String, dynamic> dataOrder) {
    var list = dataOrder['detail'] as List;
    List<HistoryOrderDetailModel> dataListDetail =
        list.map((e) => HistoryOrderDetailModel.fromJson(e)).toList();
    return HistoryOrdelModel(
      invoice: dataOrder['invoice'],
      idUser: dataOrder['id_user'],
      orderAt: dataOrder['order_at'],
      status: dataOrder['status'],
      detail: dataListDetail,
    );
  }
}

class HistoryOrderDetailModel {
  final String idOrders;
  final String invoice;
  final String idProduct;
  final String nameProduct;
  final String quantity;
  final String price;

  HistoryOrderDetailModel({
    this.idOrders,
    this.invoice,
    this.idProduct,
    this.nameProduct,
    this.quantity,
    this.price,
  });

  factory HistoryOrderDetailModel.fromJson(Map<String, dynamic> data) {
    return HistoryOrderDetailModel(
      idOrders: data['id_orders'],
      invoice: data['invoice'],
      idProduct: data['id_product'],
      nameProduct: data['nameProduct'],
      quantity: data['quantity'],
      price: data['price'],
    );
  }
}
