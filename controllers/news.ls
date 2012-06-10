{Controller,action} = require \gusto/lib/mvc/controller
exports.news = Controller {
	index: action (self)->
		self.render "site/index" greet:\world!
	show: action id:Number, (self)->
		arr =
			* name: \Matt position: \President
			* name: \Jeff position: \Treasurer
			* name: \Jo position: \Secretary
		#self.render arr[@id]
		[typeof @id]
}