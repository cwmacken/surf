
require './video'
describe Video do 
		it 'is a video object' do
			expect(Video.new).to be_an_instance_of(Video)
		end

	describe '#length' do
		it 'is 0 for a new video' do
				expect(Video.new.length).to eql(0)
			end
		end
	end 