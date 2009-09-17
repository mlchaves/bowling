require "test/test_helper"
require "test/bowling"
require "test/unit"

class TestBowlingGame < Test::Unit::TestCase

  # everything passes because all code and tests are completed
  # we're done
  describe Bowling, "game" do  
    
    before(:each) do
      @bowling = Bowling.new
    end
    
    context "when first created" do
      it "should start with 0 score" do
        @bowling.score.should == 0
      end
    end
    
    it "should score 0 for gutter game" do
      20.times {@bowling.roll(0)}
      @bowling.score.should == 0
    end

    it "should score the sum of two rolls in a regular frame" do
      @bowling.play_frame(5,4,0,0)
      @bowling.score.should == 5+4
    end

    it "should handle a spare" do
      @bowling.play_frame(5,5,3,0)
      @bowling.score.should == 5+5+3+3
    end

    it "should handle a strike" do
      @bowling.play_frame(10,0,1,2)
      @bowling.score.should == 10+1+2+1+2
    end
    
    it "should keep score" do
      @bowling.play_frame(1,2,0,0)
      @bowling.play_frame(3,4,0,0)
      @bowling.play_frame(2,6,0,0)
      @bowling.score.should == 18
    end

  end

end