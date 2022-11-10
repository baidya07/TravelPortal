import 'package:dio/dio.dart';

import '../../../features/landingPage/data/popular_place.dart';

class DioClient{
  final Dio _dio = Dio(

  );
  final _baseUrl = 'https://636b3cc9ad62451f9fac38af.mockapi.io';

  Future<PopularPlaces?> getPost({required String id}) async {
    PopularPlaces? popular;
    try{
      Response postData = await _dio.get(_baseUrl + '/api/landing_page/popular/travel/$id');
      print('User info: ${postData.data}');

      PopularPlaces popular = PopularPlaces.fromJson(postData.data);
    } on DioError catch (e) {
      if(e.response != null){
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request');
        print(e.message);
       }
      }
    return popular;
    }



  }
