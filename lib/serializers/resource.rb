class Serializers::Resource < Serializers::Base
  structure(:default) do |resource|
    {
      id:         resource.uuid,
      heroku_id:  resource.heroku_id,
      plan:       resource.plan,
      region:     resource.region,
      callback:   resource.callback_url,
      created_at: resource.created_at.try(:iso8601),
      updated_at: resource.updated_at.try(:iso8601),
    }
  end
end
