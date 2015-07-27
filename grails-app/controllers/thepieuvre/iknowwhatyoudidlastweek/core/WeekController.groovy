package thepieuvre.iknowwhatyoudidlastweek.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WeekController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Week.list(params), model: [weekInstanceCount: Week.count()]
    }

    def show(Week weekInstance) {
        respond weekInstance
    }

    def create() {
        respond new Week(params)
    }

    @Transactional
    def save(Week weekInstance) {
        if (weekInstance == null) {
            notFound()
            return
        }

        if (weekInstance.hasErrors()) {
            respond weekInstance.errors, view: 'create'
            return
        }

        weekInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'week.label', default: 'Week'), weekInstance.id])
                redirect weekInstance
            }
            '*' { respond weekInstance, [status: CREATED] }
        }
    }

    def edit(Week weekInstance) {
        respond weekInstance
    }

    @Transactional
    def update(Week weekInstance) {
        if (weekInstance == null) {
            notFound()
            return
        }

        if (weekInstance.hasErrors()) {
            respond weekInstance.errors, view: 'edit'
            return
        }

        weekInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Week.label', default: 'Week'), weekInstance.id])
                redirect weekInstance
            }
            '*' { respond weekInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Week weekInstance) {

        if (weekInstance == null) {
            notFound()
            return
        }

        weekInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Week.label', default: 'Week'), weekInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'week.label', default: 'Week'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
