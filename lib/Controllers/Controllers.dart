import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:testflutter/Apis/Apiservice.dart';

import '../Model/EmpModels.dart';
import '../values/Appconstants.dart';

class MVVM extends GetxController{
  var employees = <Employee>[].obs;
  final Dio _dio = Dio();
  var apiservice=Apiservice();


  @override
  void onInit() {
    fetchEmployees();
  }


  Future<void> fetchEmployees() async {
    try {
      final response = await _dio.get(AppConstants.BaseURL+""+AppConstants.Emp);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'];
        employees.assignAll(data.map((item) => Employee.fromJson(item)));
      } else {
        throw Exception('Failed to load employees');
      }
    } catch (e) {
      throw Exception('Failed to load employees: $e');
    }

  }
}