class Webdev < ApplicationRecord
  <ul>
    <% @webdevs.each do |webdev| %>
      <li><%= webdev.service_type %></li>
    <% end %>
  </ul>
end
