class OnTime < ActiveRecord::Base
belongs_to :user

  # ensure that a user_id is present
  validates :user_id, presence: true

  # ensure that title is present and at least 10 chars long
  validates :task, length: { minimum: 10 }, presence: true

  # ensure the url is present, and respects the URL format for http/https
  #validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_onTime
      unless @OnTime = current_user.on_times.where(id: params[:id]).first
        flash[:alert] = 'OnTime not found.'
        redirect_to root_url
      end
    end
end
