class GitHubUser {
  String login;
  int id;
  String name;
  String company;
  String location;
  String email;
  int publicRepos;
  int publicGists;
  int followers;
  int following;

  GitHubUser({
    this.login,
    this.id,
    this.name,
    this.company,
    this.location,
    this.email,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following}
  );

  factory GitHubUser.fromDynamic(Map<String, dynamic> dynamicUser) {
    return GitHubUser(
      login: dynamicUser['login'],
      id: dynamicUser['id'],
      name: dynamicUser['name'],
      company: dynamicUser['company'],
      location: dynamicUser['location'],
      email: dynamicUser['email'],
      publicRepos: dynamicUser['publicRepos'],
      publicGists: dynamicUser['publicGists'],
      followers: dynamicUser['followers'],
      following: dynamicUser['following']
    );
  }
}
