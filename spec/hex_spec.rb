# encoding: US-ASCII 
describe 'hex' do
  it 'encodes binary to hex' do
    expect("i\266H\034\213\253\242\266\016\217\"\027\233X\315V".to_hex).to eq '69b6481c8baba2b60e8f22179b58cd56'

    expect("\354\336\030\333\347o\275\f33\017\0345Hq\333".to_hex).to eq 'ecde18dbe76fbd0c33330f1c354871db'
  end

  it 'decodes hex to binary' do
    expect('69b6481c8baba2b60e8f22179b58cd56'.to_bin).to eq "i\266H\034\213\253\242\266\016\217\"\027\233X\315V"

    expect('ecde18dbe76fbd0c33330f1c354871db'.to_bin).to eq "\354\336\030\333\347o\275\f33\017\0345Hq\333"
  end

  it 'detects if a string is hex' do
    expect('ecde18dbe76fbd0c33330f1c354871db'.hex?).to be true
    expect('dteffujehknhfjbrjnlnldnhcujvddbikngjrtgh'.modhex?).to be true

    expect('foobar'.hex?).to be false
    expect('test'.modhex?).to be false
  end
end
