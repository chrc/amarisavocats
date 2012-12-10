class ImageJson {

  def id
  def image
  def thumb
  def title
  def description
  def email
 
  ImageJson (pId, pImage, pThumb, pTitle, pDescription, pEmail) {
    id = pId
    image = pImage
    thumb = pThumb
    title = pTitle
    description = pDescription
    email = pEmail
  }
 
  def String toString() {
    return "\nId:\t\t" + id + 
           "\nImage:\t\t" + image + 
           "\nThumb:\t\t" + thumb +
           "\nTitle:\t\t" + title +
           "\nDescription:\t" + description +
           "\nEmail:\t\t" + email
  }
}