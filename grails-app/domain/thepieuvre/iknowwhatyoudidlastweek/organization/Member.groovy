package thepieuvre.iknowwhatyoudidlastweek.organization

import thepieuvre.iknowwhatyoudidlastweek.security.User

class Member extends User {

    String firstname
    String lastname

    String email

    Date dateCreated
    Date lastUpdated

    static belongsTo = ['organization': Organization]

    static constraints = {
        email unique: true, email: true
    }

    String toString(){
        "$firstname $lastname"
    }
}
