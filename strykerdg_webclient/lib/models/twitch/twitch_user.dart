import './twitch_user_data.dart';
import './twitch_followers.dart';

class TwitchUser {
  TwitchUserData user;
  TwitchFollowers followers;

  TwitchUser({
    this.user,
    this.followers
  });

  factory TwitchUser.fromDyamic(Map<String, dynamic> dynamicUser) {
    TwitchUserData data = TwitchUserData.fromDynamic(dynamicUser['user']);
    TwitchFollowers followers = TwitchFollowers.fromDynamic(dynamicUser['followers']);

    return TwitchUser(
      user: data,
      followers: followers
    );
  }
}