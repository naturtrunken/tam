module ActivitiesHelper

  # Given:
  #  [0] An activity object
  #
  # Returns:
  #  A string with the unique identifier for the given activity.
  #
  def activity_tag_for(activity)

    return '!' unless activity
    current_activity = activity
    ret_id = ''

    # Iterate through the whole tree to the top.
    while (current_activity)

      # Prepend the if of the current activity to the return string.
      ret_id = current_activity.id.to_s + '-' + ret_id

      # Go one stage higher, if there is another parent node.
      if current_activity.parent
        # But first make sure that the parent node still exists.
        return '#!' + ret_id unless Activity.where(:id => current_activity.parent).count > 0
        current_activity = Activity.find(current_activity.parent)
      else
        current_activity = nil
      end

    end

    # Return the created string without the trailing '-'.
    '#' + ret_id[0..ret_id.length-2]
  end

end
