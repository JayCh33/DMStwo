ActiveAdmin.register_page "Dashboard" do
  menu false#priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
            panel "DMS Two Dashboard" do
              para 'Welcome: ' + current_admin_user.email
              columns Time.now
            end
      end
    end
  end
end
