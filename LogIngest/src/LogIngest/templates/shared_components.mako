<%!
from django.utils.translation import ugettext as _
%>

<%!
def is_selected(section, matcher):
  if section == matcher:
    return "active"
  else:
    return ""
%>

<%def name="menubar(section='')">
  <div class="navbar hue-title-bar nokids">
    <div class="navbar-inner">
      <div class="container-fluid">
        <div class="nav-collapse">
          <ul class="nav">
            <li class="app-header">
              <a href="/LogIngest">
                <img src="${ static('LogIngest/art/icon_LogIngest_48.png') }" class="app-icon"  alt="${ _('App icon') }"/>
                Logingest
              </a>
             </li>
             <li class="${is_selected(section, 'mytab')}"><a href="#">Services</a></li>
             <li class="${is_selected(section, 'mytab2')}"><a href="/hue/dashboard/new_search">Dashboard</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</%def>
