module ApplicationHelper

  def logo
    image_tag("logo.png", :alt => "Application Exemple", :class => "round")
  end

  # Retourner un titre basé sur la page.
  def titre                   #nouvelle definition
    base_titre = "Simple App du Tutoriel Ruby on Rails"    #variable0
    if @titre.nil?                              #condition
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end
end
