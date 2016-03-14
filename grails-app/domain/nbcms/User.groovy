package nbcms

class User {
    String email
    String password
    String nickName
    Boolean isAdmin
    
    static constraints = {
        email unique: true
    }
}
