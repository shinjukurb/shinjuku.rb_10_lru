#coding: utf-8
require 'spec_helper'
require 'lru_cache'

describe LRUCache do
  describe '#initialize'

  describe '#capacity' do
    subject { cache.capacity }
    let(:max_size) { 4 }
    let(:cache) { LRUCache.new max_size}

    it 'should return max size of cache' do
      should == max_size
    end
  end

  describe '#size' do
    subject { cache.size }
    let(:cache) { LRUCache.new 10000 }

    before { cache.instance_variable_get(:@lru_cache).stub(:size) { 999 } }
    it 'should return current size of cache' do
      subject.should == 999
    end
  end

  describe '#put' do
    let(:cache) { LRUCache.new }

    context 'when cache size is under capacity' do
      before { cache.put 'a', '1' }
      subject { cache.size }
      it 'should increment size' do
        should == 1
      end
    end

    context 'when cache size is full' do
      before do
        cache.put 'a', '1'
        cache.put 'b', '2'
        cache.put 'c', '3'
      end

      it 'should equal capacity' do
        cache.size.should == cache.capacity
      end

      it 'should delete oldest value of key' do
        cache.get('a').should be_nil
      end
    end
  end

  describe '#get' do
    let(:cache) { LRUCache.new }

    before do
      cache.put 'a', '1'
    end
    it 'should return value of key' do
      cache.get('a').should == '1' 
    end

    context 'when cache is empty' do
      it 'should return cache having key'
    end

    context 'when cache not exists' do
      it 'should return cache having key'
    end
  end
end
