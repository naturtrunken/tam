class DavicalTamCalendarItem < ActiveRecord::Base
  establish_connection(:davical)
  self.table_name = 'tam_calendar_item'
end

