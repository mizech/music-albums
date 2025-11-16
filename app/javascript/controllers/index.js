// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import SigninValidController from "controllers/signin_valid_controller"

eagerLoadControllersFrom("controllers", application)

application.register("SigninValid", SigninValidController);
