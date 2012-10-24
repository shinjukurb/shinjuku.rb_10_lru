#coding: utf-8
require 'spec_helper'
require 'lru_cache'

describe LRUCache do
  describe '#initialize'

  # FIXME: 誰か作って！
  describe '#capacity'
  describe '#size'

  describe '#put' do
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
