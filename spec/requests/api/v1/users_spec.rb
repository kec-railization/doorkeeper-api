describe 'GET /v1/users/:id' do
  it 'returns a user by :id' do
    user = create(:user)

    get "/v1/users/#{user.id}", {}.to_json

    expect(response_json).to eq(
      {
        'first_name'    => user.first_name,
        'last_name'     => user.last_name,

        'created_at'    => user.created_at.as_json,
        'updated_at'    => user.updated_at.as_json
      }
    )
  end
end

describe 'GET /v1/users' do
  it 'retrives all users' do
    user_1 = create(:user)
    user_2 = create(:user)

    get '/v1/users', {}.to_json

    expect(response_json.first.last).to eq([
      {
        'id'            => user_1.id,

        'created_at'    => user_1.created_at.as_json,
        'updated_at'    => user_1.updated_at.as_json
      },
      {
        'id'            => user_2.id,

        'created_at'    => user_2.created_at.as_json,
        'updated_at'    => user_2.updated_at.as_json
      }
    ])
  end
end

describe 'POST /v1/users' do
  it 'saves a user' do
    user = create(:user)

    post '/v1/users', {}.to_json

    user = User.last
    expect(response_json).to eq(
      {
        'id'            => user.id
       }
    )
  end
end
