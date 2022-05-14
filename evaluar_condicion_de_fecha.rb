#require 'time'
# def fecha(dias)
#   @dias = 
# end 
#fecha(3)
######################################################
# date_now = DateTime.created_at

# if ((time = (date_now.date - DateTime.now).to_i) == 0)
#   puts "'style=color:red;' Estás atrasad@ en: #{time} días" #rojo
# elsif
#   ((time = (date_now.date - DateTime.now).to_i) >= 7) # amarillo
#   puts "'style=color:yellow;' Te queda #{time} días"
# else
#   puts "'style=color:#36343a;'La fecha es: #{time}"
# end
require 'date'
# now = Date.today
# algo = (yestarday - now )
# puts algo

###################################################
start_time = Time.new(2013,1)
end_time = Time.new(2014,1)
puts TimeDifference.between(start_time, end_time).in_minutes

###################################################




# if customer.date_of_issue > 3.months.ago
#   <span class="badge badge-pill badge-success">Activo</span>
# elsif customer.date_of_issue > 6.months.ago 
#   <span class="badge badge-pill badge-warning">Semi Activo</span>        
# else
#   <span class="badge badge-pill badge-danger">Inactivo</span>   
# end
