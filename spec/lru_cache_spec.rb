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
    it 'should return current size of cache'
  end

  describe '#put' do
    subject { cache.put 'a', '1' }
    let(:cache) { LRUCache.new }

    it 'should set key and value'

    context 'when cache size is full' do
      it 'should delete oldest value of key'
    end
  end

  describe '#get' do
    it 'should return value of key'

    context 'when cache is empty' do
      it 'should return cache having key'
    end

    context 'when cache not exists' do
      it 'should return cache having key'
    end
  end
end
