package thepieuvre.iknowwhatyoudidlastweek.core

import thepieuvre.iknowwhatyoudidlastweek.organization.Member

class Imputation {

    Task task
    double impute

    Date dateCreated
    Date lastUpdated

    String type = 'daily'

    int dayOfTheWeek

    static belongsTo = ['week': Week, 'member': Member]

    static constraints = {
        impute size: 0.0..1.0
    }

    String toString() {
        "$member ($week): $task -> $impute"
    }
}
