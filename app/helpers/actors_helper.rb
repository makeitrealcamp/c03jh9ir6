module ActorsHelper
  def form_title
    @actor.new_record? ? 'Publicar actor' : 'Modificar actor'
  end
end
