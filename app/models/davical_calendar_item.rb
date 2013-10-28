class DavicalCalendarItem < ActiveRecord::Base
  establish_connection(:davical)
  self.table_name = 'calendar_item'
end

