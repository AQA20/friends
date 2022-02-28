<% if model.avatar.record.id  %>
  <%= image_tag model.avatar, id: "image-preview", width: '200', height: 'auto' %>
<% else %>
  <%= image_tag "", id: "image-preview", width: '200', height: 'auto' %>
<% end %>