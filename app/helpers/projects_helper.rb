module ProjectsHelper
    
    # since this doesn't actually run any business logic, but instead simply converts
    # existing time data into a more readable format, it belongs in the helper instead of the model
    def due(project)
       time_ahead_in_words(project.due_date)
    end
    
    def timeago(time, options = {})
     options[:class] ||= "timeago"
     content_tag(
       :time,
       time.to_s,
       options.merge(datetime: time.getutc.iso8601)
     ) if time
    end
    
end
