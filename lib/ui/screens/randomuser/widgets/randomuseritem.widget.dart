import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:live_coding/features/randomusers/models/random_user_response/user.dart';
import 'package:skeletons/skeletons.dart';

class RandomuseritemWidget extends StatelessWidget {
  const RandomuseritemWidget({super.key, required this.item});
  final User item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            child: CachedNetworkImage(
              imageUrl: item.picture?.medium ?? "",
              imageBuilder: (context, imageProvider) =>
                  Image(image: imageProvider),
              placeholder: (context, url) => SkeletonAvatar(
                style: SkeletonAvatarStyle(
                    borderRadius: BorderRadius.circular(20)),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  "${item.name?.first}",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
