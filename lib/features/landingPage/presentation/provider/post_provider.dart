import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelportal/core/data/remote/api_result.dart';
import 'package:travelportal/features/landingPage/domain/repository/popular_post_repository.dart';

class PostProvider extends ChangeNotifier{
  PopularPostRepository repository;

  PostProvider({required this.repository}){
    fetchPostData();
  }

  AsyncValue apiResult = const AsyncValue.loading();


  Future<void> fetchPostData() async{
    apiResult = const AsyncValue.loading();
    ApiResult result = await repository.getPopularPost();
    result.when(success: (data){
      apiResult = AsyncValue.data(data);
    }, failure: (error){
      apiResult = AsyncValue.error(error);
      notifyListeners();
    });
  }
}