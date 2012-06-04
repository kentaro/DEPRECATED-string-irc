require 'spec_helper'
require 'string/irc'

describe String::IRC do
  describe '#colorize' do
    subject { String::IRC }

    context 'when both foreground and background color passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.colorize('test', color, color).should == "\x03#{code},#{code}test\x03" }
      end
    end

    context 'when only foreground color passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.colorize('test', color, nil).should == "\x03#{code}test\x03" }
      end
    end

    context 'when only background color passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.colorize('test', nil, color).should == 'test' }
      end
    end

    context 'when no colors passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.colorize('test', nil, color).should == 'test' }
      end
    end
  end

  describe '#bold' do
    subject { String::IRC }
    it { subject.bold('test').should == "\x02test\x02" }
  end

  describe '#underline' do
    subject { String::IRC }
    it { subject.underline('test').should == "\x1Ftest\x1F" }
  end

  describe '#italic' do
    subject { String::IRC }
    it { subject.italic('test').should == "\x16test\x16" }
  end
end
