class TwitchFollowerData {
  String fromId;
  String toId;
  String toName;
  DateTime followedAt;

  TwitchFollowerData({
    this.fromId,
    this.toId,
    this.toName,
    this.followedAt
  });

  factory TwitchFollowerData.fromDynamic(Map<String, dynamic> dynamicFollower) {
    return TwitchFollowerData(
      fromId: dynamicFollower['fromId'],
      toId: dynamicFollower['toId'],
      toName: dynamicFollower['toName'],
      followedAt: DateTime.parse(dynamicFollower['followedAt'])
    );
  }
}