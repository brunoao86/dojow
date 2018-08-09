require 'foo_bar_qix'

describe FooBarQix do
  it { expect(subject.build_foor_bar_qix(6)).to eq('Foo') }
  it { expect(subject.build_foor_bar_qix(10)).to eq('Bar') }
  it { expect(subject.build_foor_bar_qix(14)).to eq('Qix') }
  it { expect(subject.build_foor_bar_qix(51)).to eq('FooBar') }
  it { expect(subject.build_foor_bar_qix(210)).to eq('FooBarQix') }

  it { expect(subject.build_foor_bar_qix(0)).to eq('FooBarQix') }

  it { expect(subject.build_foor_bar_qix(3)).to eq('FooFoo') }
  it { expect(subject.build_foor_bar_qix(5)).to eq('BarBar') }
  it { expect(subject.build_foor_bar_qix(7)).to eq('QixQix') }

  it { expect(subject.build_foor_bar_qix(27)).to eq('FooQix') }
  it { expect(subject.build_foor_bar_qix(352)).to eq('FooBar') }
  
  it { expect(subject.build_foor_bar_qix(15)).to eq('FooBarBar') }
  it { expect(subject.build_foor_bar_qix(155)).to eq('BarBarBar') }
  it { expect(subject.build_foor_bar_qix(177)).to eq('FooQixQix') }

  it { expect(subject.build_foor_bar_qix(19)).to eq('19') }
  it { expect(subject.build_foor_bar_qix(1)).to eq('1') }

end
