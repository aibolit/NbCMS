package nbcms

class Assignment {

    static constraints = {
    }

    static hasMany = [songsOnThePlaylist: String]

    Date createdDate
    Integer externalId
    String contentType
    String playlistName
    String notes
    String artist
    String album
    List songsOnThePlaylist
    Boolean isTransfer
    Boolean isShortBlurb
    String genre
    String origin
    User copyEditor
    User lineEditor
    User usTransfer
    User auTransfer
    User gbTransfer
    User caTransfer
}
