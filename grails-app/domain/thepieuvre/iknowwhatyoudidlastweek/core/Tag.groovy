package thepieuvre.iknowwhatyoudidlastweek.core

class Tag {

    String internalCode
    String tag

    Date dateCreated
    Date lastUpdated

    static constraints = {
        internalCode unique: true
        tag blank: false
    }

    void setTag(String tag) {
        internalCode = tag.toUpperCase().replaceAll("\\s+",'')
        log.info "Tag, $tag, generating with internal code: $internalCode"
        this.tag = tag
    }

    String toString() {
        tag
    }
}
