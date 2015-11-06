require 'spec_helper'

describe ToArray do
  arr1 = ['foo', 'bar', 'fizz', 'bazz']
  str1 = arr1.to_s

  context "success case" do
    it 'should send back ArrayClass' do
      expect(str1.to_array).to be_a_kind_of(Array)
    end

    it 'should array size is same' do
      expect(str1.to_array.size).to eq(arr1.size)
    end
  end

  context "failure case(Other Object)" do
    it 'nil' do
      expect{nil.to_array}.to raise_error(NoMethodError)
    end
    it 'boolean' do
      expect{true.to_array}.to raise_error(NoMethodError)
    end
    it 'Already Array' do
      expect{arr1.to_array}.to raise_error(NoMethodError)
    end
    it 'Interger' do
      expect{100.to_array}.to raise_error(NoMethodError)
    end
    it 'Hash' do
      expect{{'foo'=>'bar', 'fizz'=>'bazz'}.to_array}.to raise_error(NoMethodError)
    end
  end

  context "failure case(Other Object)" do
    it 'nil' do
      expect{nil.to_array}.to raise_error(NoMethodError)
    end
    it 'boolean' do
      expect{true.to_array}.to raise_error(NoMethodError)
    end
    it 'Already Array' do
      expect{arr1.to_array}.to raise_error(NoMethodError)
    end
    it 'Interger' do
      expect{100.to_array}.to raise_error(NoMethodError)
    end
    it 'Hash' do
      expect{{'foo'=>'bar', 'fizz'=>'bazz'}.to_array}.to raise_error(NoMethodError)
    end
  end
end
