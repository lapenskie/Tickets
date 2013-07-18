json.array!(@tickets) do |ticket|
  json.extract! ticket, :name, :owner, :body
  json.url ticket_url(ticket, format: :json)
end
