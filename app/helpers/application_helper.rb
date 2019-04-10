module ApplicationHelper
  def render_if(condition, record)
    if condition
    render record
    end
  end

  def author_off(record)
    admin_user_signed_in? && current_admin_user.id == record.admin_user_id
  end

  def superadmin?
    admin_user_signed_in? && current_admin_user.superadmin?
  end

  def current_user?
    admin_user_signed_in? && current_admin_user?
  end

end