package thepieuvre.iknowwhatyoudidlastweek.core

import thepieuvre.iknowwhatyoudidlastweek.organization.Organization

class Project {

    String code
    String name
    String description

    Date dateCreated
    Date lastUpdated

    static hasMany = ['phases': Phase]

    SortedSet phases

    static belongsTo = ['organization': Organization]

    static constraints = {
        code unique: true, maxSize: 24
        name blank: false
        description blank: false, nullable: true, maxSize: 1024
    }

    String toString() {
        name
    }
}
