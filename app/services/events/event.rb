# frozen_string_literal: true

module Events
  # Event model object.
  class Event
    attr_reader :title
    attr_reader :location
    attr_reader :date
    attr_reader :date_string

    def initialize(params)
      @title = params[:title]
      @location = params[:location]
      @date = params[:date]
      @date_string = params[:date_string]
    end

    def <=>(other)
      if date && other.date
        date <=> other&.date
      else
        -1
      end
    end
  end
end
