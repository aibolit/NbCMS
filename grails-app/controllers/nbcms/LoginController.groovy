package nbcms

class LoginController {

    def index() { }

    def logout = {
        session.user = null
        redirect(url: "/")
    }

    def tryLogin = {
        def user = User.findByEmail(params.email)
        if (!user || user.password != params.password) {
            redirect(action: "index", params: [email:params.email])
        } else {
            session.user = user
            redirect(url: "/")
        }
    }
}
