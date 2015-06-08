module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Padb"
    end
  end
end
