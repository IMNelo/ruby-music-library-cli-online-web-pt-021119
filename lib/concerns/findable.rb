# module Concerns
#
#   module Findable
#     def find_by_name(name) #class method (extend)
#       self.all.detect { |artist| artist.name == name }
#     end
#
#     def find_or_create_by_name(name) #instance method (include)
#       self.find_by_name(name) || self.create(name)
#     end
#   end
#
# end
