package thepieuvre.iknowwhatyoudidlastweek.organization

class Organization {

    String code
    String name
    String description

    Date dateCreated
    Date lastUpdated

    static hasMany = ['members': Member]

    static constraints = {
        code unique: true, validator: { c -> c.matches("\\w+")}, maxSize: 24
        name blank: false, nullable: false
        description blank: false, nullable: true, maxSize: 1024
    }

    String toString() {
        name
    }
}
