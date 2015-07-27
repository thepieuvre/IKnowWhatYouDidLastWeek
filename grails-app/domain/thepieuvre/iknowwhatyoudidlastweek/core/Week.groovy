package thepieuvre.iknowwhatyoudidlastweek.core

import thepieuvre.iknowwhatyoudidlastweek.organization.Member

class Week {

    private static Calendar calendar = Calendar.getInstance()

    int year = calendar.get(Calendar.YEAR)
    int week = calendar.get(Calendar.WEEK_OF_YEAR)

    Date dateCreated
    Date lastUpdated

    String snippet

    static hasMany = ['imputations': Imputation]

    static belongsTo = ['member': Member]

    static constraints = {
        snippet blank: false, maxSize: 2048
        week unique: ['week', 'member', 'year']
    }

    String toString() {
        "$week / $year"
    }
}