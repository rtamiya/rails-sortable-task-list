// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName
import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import TasklistController from "./tasklist_controller"
application.register("tasklist", TasklistController)

import Sortable from 'stimulus-sortable'
application.register('sortable', Sortable)
