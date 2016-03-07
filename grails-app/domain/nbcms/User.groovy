package nbcms

class User {
    String email
    String password
    String nickName

    static constraints = {
        email unique: true
    }
}
