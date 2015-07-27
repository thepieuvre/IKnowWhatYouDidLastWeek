package thepieuvre.iknowwhatyoudidlastweek.core

class Phase implements Comparable<Phase> {

    String name
    String description

    int position

    Date dateCreated
    Date lastUpdated

    static belongsTo = ['project': Project]

    static hasMany = ['tasks': Task]

    static constraints = {
        name blank: false, nullable: false
        description blank: false, nullable: true, maxSize: 1024
    }

    @Override
    int compareTo(Phase phase) {
        return this.position - phase.position
    }

    String toString() {
        "$position - $name"
    }
}
