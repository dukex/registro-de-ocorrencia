class OccurrencesController < InheritedResources::Base
  respond_to :json, :xml

  def index
    @occurrences = Occurrence.search(params[:occurrences])
    index!
  end
end
