{Controller,action} = require \gusto/lib/mvc/controller
{alias} = require \gusto/lib/server/router
exports.site = Controller {
	index: alias "home", action (self)->
		self.render greet:\world!
	show: action id:Number, (self)->
		arr =
			* name: \Matt position: \President
			* name: \Jeff position: \Treasurer
			* name: \Jo position: \Secretary
		#self.render arr[@id]
		[typeof @id]
}