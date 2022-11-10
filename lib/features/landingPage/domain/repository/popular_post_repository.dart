import 'package:travelportal/features/landingPage/data/popularPlace_model.dart';

import '../../../../core/data/remote/api_result.dart';

abstract class PopularPostRepository{
  Future<ApiResult<List<PopularPlaceModel>>> getPopularPost();
}