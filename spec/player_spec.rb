require 'player'

describe Player do

  subject(:player){ described_class.new( name ) }
  subject(:player2) {described_class.new(name)}
  let(:name){double :name}

  it "returns it's own name" do
    expect(player.name).to eq name
  end

  it 'should initialize with 100 hit points' do
    expect(player.hit_points).to eq(100)
  end




end
