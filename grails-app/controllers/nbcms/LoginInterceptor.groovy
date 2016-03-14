package nbcms


class LoginInterceptor {

    public LoginInterceptor() {
        matchAll().excludes(controller: 'login')
    }

    boolean before() {
        if (!session.user) {
            redirect controller: 'login'
            return false
        } 
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
