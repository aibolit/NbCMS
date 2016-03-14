package nbcms

class Assignment {

    static constraints = {
        writer nullable: true
        editor nullable: true
        copyEditor nullable: true
        lineEditor nullable: true
        usTransfer nullable: true
        auTransfer nullable: true
        gbTransfer nullable: true
        caTransfer nullable: true
        playlistName nullable: true
        notes nullable: true
        artist nullable: true
        album nullable: true
        songsOnThePlaylist nullable: true
        genre nullable: true
        origin nullable: true
        writerComplete nullable: true
        editorComplete nullable: true
    }

    static hasMany = []

    Date createdDate
    String cycle
    Integer externalId
    String contentType
    String playlistName
    String notes
    String artist
    String album
    String songsOnThePlaylist
    Boolean isTransfer
    Boolean isShortBlurb
    String genre
    String origin
    User writer
    Boolean writerComplete
    User editor
    Boolean editorComplete
    User copyEditor
    User lineEditor
    User usTransfer
    User auTransfer
    User gbTransfer
    User caTransfer
}
