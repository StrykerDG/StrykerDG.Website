class TwitchUserData {
  String id;
  String login;
  String displayName;
  String type;
  String broadcasterType;
  String description;
  String profileImageUrl;
  int viewCount;

  TwitchUserData({
    this.id,
    this.login,
    this.displayName,
    this.type,
    this.broadcasterType,
    this.description,
    this.profileImageUrl,
    this.viewCount
  });

  factory TwitchUserData.fromDynamic(Map<String, dynamic> dynamicUser) {
    return TwitchUserData(
      id: dynamicUser['id'],
      login: dynamicUser['login'],
      displayName: dynamicUser['displayName'],
      type: dynamicUser['type'],
      broadcasterType: dynamicUser['broadcasterType'],
      description: dynamicUser['description'],
      profileImageUrl: dynamicUser['profileImageUrl'],
      viewCount: dynamicUser['viewCount']
    );
  }
}