import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/providers/discover_provider.dart';
import 'package:flutter_application_1/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:provider/provider.dart';

class DiscoverSreen extends StatelessWidget {
  const DiscoverSreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();


    return Scaffold(
      body: discoverProvider.initialLoading
      ? const Center( child: CircularProgressIndicator( strokeWidth: 2, ), )
      : VideoScrollableView(videos: discoverProvider.videos,)
    );
  }
}