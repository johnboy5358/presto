# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {

	collections:
        pages: ->
            # set a collection of pages - and - use the default layout for each page.
            @getCollection("html").findAllLive({isPage:true}).on "add", (model) ->
                model.setMetaDefaults({layout:"default"})

	templateData:
		site:
			title: "Presto"

		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
}

# Export the DocPad Configuration
module.exports = docpadConfig