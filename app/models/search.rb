class Search 
	 attr_accessor :search_term
	 extend ActiveModel::Naming
   include ActiveModel::Conversion
   
   def count
   	# Event.group(:event_type).count

   	# Event.group(:manufacturer_name).count.sort #=> unsorted array of arrays [[name, count],[name, count]]


   	# sorted_manufact_names.select { |element| element.include?("MEDTRONIC") } #=> returns elements that exactly match MEDTRONIC
   	# NEXT: need to take this logic, covnvert to AREL for db search
   end
   
   def persisted?
    false
   end

end
