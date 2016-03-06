package nbcms


class TrackInputController {

    def index() { 
        def x = "";
        def a = "a,b,c,\"d,e\"";
        a.eachCsvLine { tokens->
            tokens.each { token ->
                x+="|" + token +"|"
            }
        }
        render  x 
    }
    def read() {
        
    }
}
 