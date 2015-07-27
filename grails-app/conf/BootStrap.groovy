import thepieuvre.iknowwhatyoudidlastweek.security.Role

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

    }
    def destroy = {
    }
}
