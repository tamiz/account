module ApplicationHelper

	def invoices(&block)
  		content_tag(:table, block.call, id: 'table')
  	end
end
