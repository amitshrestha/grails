package example

class User {

  String name
  String address
  String role

    static constraints = {
      name blank: false
      address blank: false
      role blank: false
    }
}
