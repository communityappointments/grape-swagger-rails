class API < Grape::API
  format :json
  prefix 'api'

  namespace :foos do
    desc 'Get foos.'
    get do
      [{ id: 1, name: 'Foo' }]
    end

    desc 'Get a foo.'
    params do
      requires :id, type: String, desc: 'Foo id.'
    end
    get :id do
      { id: 1, name: 'Foo' }
    end
  end

  add_swagger_documentation
end
