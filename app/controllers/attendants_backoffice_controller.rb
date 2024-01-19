class AttendantsBackofficeController < ApplicationController
  before_action :authenticate_attendant!
  layout 'attendants_backoffice'
end
