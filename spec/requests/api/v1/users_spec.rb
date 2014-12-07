describe 'GET /v1/users' do
  it 'retrives all users' do
    user_1 = create(:user)
    user_2 = create(:user)

    get '/v1/users', {}

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
