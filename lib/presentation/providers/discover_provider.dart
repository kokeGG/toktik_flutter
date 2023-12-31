import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/video_post.dart';
import 'package:flutter_application_1/infrastructure/models/local_video_model.dart';
import 'package:flutter_application_1/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];


  Future<void> loadNextPage() async {

    // await Future.delayed( const Duration(seconds: 2) );

    final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
    ).toList();

    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }


}