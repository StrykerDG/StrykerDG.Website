import './twitch_follower_data.dart';

class TwitchFollowers {
  int total;
  List<TwitchFollowerData> data;

  TwitchFollowers({
    this.total,
    this.data
  });

  factory TwitchFollowers.fromDynamic(Map<String, dynamic> dynamicFollowers) {

    List<TwitchFollowerData> data = new List<TwitchFollowerData>();
    final List<dynamic> followerDataList = dynamicFollowers['data'];
    followerDataList.forEach((element) {
      data.add(TwitchFollowerData.fromDynamic(element));
    });

    return TwitchFollowers(
      total: dynamicFollowers['total'],
      data: data
    );
  }
}