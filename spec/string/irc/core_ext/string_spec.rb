require 'spec_helper'
require 'string/irc/core_ext/string'

describe String do
  describe '#irc_colorize' do
    subject { 'test' }

    context 'when both foreground and background color passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.irc_colorize(color, color).should == "\x03#{code},#{code}test\x03" }
      end
    end

    context 'when only foreground color passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.irc_colorize(color, nil).should == "\x03#{code}test\x03" }
      end
    end

    context 'when only background color passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.irc_colorize(nil, color).should == 'test' }
      end
    end

    context 'when no colors passed in' do
      String::IRC::COLORS_MAP.each do |color, code|
        it { subject.irc_colorize(nil, color).should == 'test' }
      end
    end
  end

  describe '#irc_bold' do
    subject { 'test' }
    it { subject.irc_bold.should == "\x02test\x02" }
  end

  describe '#irc_underline' do
    subject { 'test' }
    it { subject.irc_underline.should == "\x1Ftest\x1F" }
  end

  describe '#irc_italic' do
    subject { 'test' }
    it { subject.irc_italic.should == "\x16test\x16" }
  end
end
