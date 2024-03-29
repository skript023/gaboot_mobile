import 'package:gaboot_mobile/payment/payment_model.dart';
import 'package:gaboot_mobile/services/api.dart';
import 'package:gaboot_mobile/services/response.dart';

class PaymentService {
  final String url = "payment";

  Future<ResponseAPI<Payment>> create(Payment param) async {
    final response = await API().postAPI<Payment>(url, param.toJson());
    return response;
  }

  Future<ResponseAPI<Payment>> getTransaction(int id) async {
    final response = await API().getAPI<Payment>('$url/$id', (json) => Payment.fromJson(json as Map<String, dynamic>));
    return response;
  }
}
