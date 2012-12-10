class GroovyUser {

  def id
  def screenName
  def name
  def url
  def followersCount
  def friendsCount
  def favouritesCount
  def statusesCount
 
  GroovyUser(
        id,
        name,
        screenName,
        url,
        followersCount,
        friendsCount,
        favouritesCount,
        statusesCount) {
    this.id = id
    this.name = name
    this.screenName = screenName
    this.url = url
    this.followersCount = followersCount
    this.friendsCount = friendsCount
    this.favouritesCount = favouritesCount
    this.statusesCount = statusesCount
 
  }
 
  def String toString() {
    return "\nId:\t\t\t" + this.id + "\n" +
           "Name:\t\t\t" + this.name + "\n" +
           "ScreenName:\t\t" + this.screenName + "\n" +
           "Url:\t\t\t" + this.url + "\n" +
           "FollowersCount:\t\t" + this.followersCount + "\n" +
           "FriendsCount:\t\t" + this.friendsCount + "\n" +
           "FavouritesCount:\t" + this.favouritesCount + "\n" +
           "StatusesCount:\t\t" + this.statusesCount
  }
}