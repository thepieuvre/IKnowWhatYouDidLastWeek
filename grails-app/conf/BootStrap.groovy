import thepieuvre.iknowwhatyoudidlastweek.security.Role
import thepieuvre.iknowwhatyoudidlastweek.security.User
import thepieuvre.iknowwhatyoudidlastweek.security.UserRole

class BootStrap {

    def init = { servletContext ->
        def roles = [
                ['ROLE_ROOT', 'The super administrator of the system'],
                ['ROLE_MEMBER', 'Member']
        ].each { name, description ->
            def role = Role.findByAuthority(name)
            if( ! role) {
                role = new Role(authority: name, description: description)
                role.save(failOnError: true, flush: true)
            }
        }

    def adminUser = User.findByUsername('admin')
    if (!adminUser) {
        def adminpass = 'admin'
        adminUser = new User(
            email: 'admin@yourdomain.com',
            username: 'admin',
            password: 'changeme',
            enabled: 'true',
            canPasswordLogin: true
        )
        if (!adminUser.save()) {
            println adminUser.errors
        }
        
        UserRole.create(adminUser, Role.findByAuthority('ROLE_ROOT'), true)
    }

    }
    def destroy = {
    }
}
