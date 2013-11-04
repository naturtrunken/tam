module StatisticsHelper

  def report_for_week(current_year, current_week)
    report = []

    # Build an array with the dates for the given week.
    days_in_the_current_week = []
    1.upto(7) do |day|
      days_in_the_current_week.push(Date.commercial(current_year, current_week, day))
    end

    # [1] For all days in the current week...
    current_day_index = -1
    days_in_the_current_week.each do |day|
      current_day_index = current_day_index + 1

      # [2] For all calendars
      Calendar.all.each do |calendar|

        # [3] For all entries in the current calendar which are starting on the current day...
        DavicalTamCalendarItem.where('collection_id = ? AND dtstart >= ? AND dtstart < ?', calendar.davical_collection_id, day, day + 1.day).each do |calendar_item|

          # calendar_item is now a row from the davical table calendar_item of an entry of the current calendar.

          # Do we have an activity for this calendar entry?
          if calendar_item.summary[0] == '#'
            # Yes.

            # Get the activity id fromt the summary.
            activity_tag = calendar_item.summary.match(/^\#([^\s]+) (.*)/)[1]
            next unless activity_tag # TODO Error handling; do something...

            # Fetch the corresponding activity object.
            activity = activity_for_tag(activity_tag)
            next unless activity # TODO Error handling; do something...

            # Add the time of the current calendar item to the array of the current activity.
            row_found = false
            report.each do |report_row|
              if report_row[0] == activity.name

                row_found = true

                # Insert the time
                report_row[1][current_day_index] = report_row[1][current_day_index] + (calendar_item.dtend - calendar_item.dtstart) / 60
              end
            end

            # Did we insert the time?
            unless row_found
              # No. Create a new sub array.
              new_subarray = [activity.name, [0,0,0,0,0,0,0]]

              # Insert the time.
              new_subarray[1][current_day_index] = new_subarray[1][current_day_index] + (calendar_item.dtend - calendar_item.dtstart) / 60

              # Add the new subarray to the report's array.
              report.push(new_subarray)
            end

          else
            # No.
          end

        end # [3]

      end # [2]

    end # [1]

    return report
  end

end
