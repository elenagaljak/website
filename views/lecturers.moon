html = require "lapis.html"

class Lecturers extends html.Widget
    content: =>
        if @nav
            @content_for "header", ->
                render "views.nav"

        if @footer
            @content_for "footer", ->
                render "views.footer"

        @content_for "scripts", ->
            script src: "https://cdnjs.cloudflare.com/ajax/libs/skrollr/0.6.30/skrollr.min.js", defer: "defer"
            script src: "/static/libs/Hyphenator.js", defer: "defer"
            script src: "/static/main.js", defer: "defer"

        div { class: "image", ["data-0"]: "background-position: 0px 0px",
              ["data-top-bottom"]: "background-position: 0px -150px" }, ->
            h1 @m.heading

        section id: "lecturers-content", ->
            "Hey ho let's go"


