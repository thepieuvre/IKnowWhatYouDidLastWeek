import grails.util.Environment
import thepieuvre.iknowwhatyoudidlastweek.core.Phase
import thepieuvre.iknowwhatyoudidlastweek.core.Project
import thepieuvre.iknowwhatyoudidlastweek.core.Tag
import thepieuvre.iknowwhatyoudidlastweek.core.Task
import thepieuvre.iknowwhatyoudidlastweek.organization.Member
import thepieuvre.iknowwhatyoudidlastweek.organization.Organization
import thepieuvre.iknowwhatyoudidlastweek.security.Role
import thepieuvre.iknowwhatyoudidlastweek.security.UserRole

class DevBootStrap {

    def init = { servletContext ->

        // Some fake data for development
        if (Environment.DEVELOPMENT) {
            Organization myOrg = new Organization()
            myOrg.name = 'The Pieuvre'
            myOrg.code = 'thepieuvre'
            myOrg.save(failOnError: true)

            Member alex = new Member()
            alex.email = 'alex@thepieuvre.com'
            alex.firstname = 'Alex'
            alex.lastname = 'di Costanzo'
            alex.username = 'alex'
            alex.password = 'alex123'
            alex.organization = myOrg
            alex.save(failOnError: true)

            UserRole.create(alex, Role.findByAuthority('ROLE_ROOT'), true)
            UserRole.create(alex, Role.findByAuthority('ROLE_MEMBER'), true)

            Project thePieuvre = new Project()
            thePieuvre.name = 'The Pieuvre Core'
            thePieuvre.organization = myOrg
            thePieuvre.code = 'thepieuvre-core'
            thePieuvre.save(failOnError: true)

            int i = 0
            [
                    'Documentation': ['Writing UI Doc': ['Doc Tech', 'UI']],
                    'Dev + Test Unit': ['Screen 1':['UI'], 'Screen 2': ['UI']],
                    'Management': ['Cost Management': ['Mngt'], 'Recruiting': ['HR']],
                    'Run': ['Fixing Bug 1': ['UI'],'User Support': ['UI']]
            ].each { name, tasks ->
                Phase phase = new Phase(name: name)
                phase.project = thePieuvre
                phase.position = i++
                phase.save(failOnError: true)
                tasks.each { task, tags ->
                    Task t = new Task(name: task)
                    t.project = thePieuvre
                    tags.each { tag ->
                        Tag tagInst = Tag.findByTag(tag)
                        if (! tagInst) {
                            tagInst = new Tag(tag: tag)
                            tagInst.save(failOnError: true)
                        }
                        t.addToTags(tagInst)
                    }
                    t.save(failOnError: true)
                    phase.addToTasks(t)
                }
            }
        }

    }
    def destroy = {
    }
}
