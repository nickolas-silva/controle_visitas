class AttendantsBackofficeController < ApplicationController
  before_action :authenticate_attendant!
  layout 'attendats_backoffice'
end
