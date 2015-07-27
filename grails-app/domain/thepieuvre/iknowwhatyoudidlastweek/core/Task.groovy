package thepieuvre.iknowwhatyoudidlastweek.core

class Task {

    String name
    String description

    Date dateCreated
    Date lastUpdated

    static belongsTo = ['project': Project]

    static hasMany = ['tags': Tag]

    static constraints = {
        name blank: false, nullable: false
        description blank: false, nullable: true, maxSize: 1024
    }

    String toString() {
        name
    }
}
