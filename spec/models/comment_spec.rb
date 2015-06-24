require 'rails_helper'

describe Comment do

	describe '#body' do
		context 'when is missing' do

			before do
				subject.valid?
			end

			it 'should be invalid' do
				expect(subject.errors[:body]).to include("can't be blank")
			end

		end
	end

	describe '#user' do
		context 'when is missing' do

			before do
				subject.valid?
			end

			it 'should be invalid' do
				expect(subject.errors[:user]).to include("can't be blank")
			end

		end
	end

	describe '#product' do
		context 'when is missing' do

			before do
				subject.valid?
			end

			it 'should be invalid' do
				expect(subject.errors[:product]).to include("can't be blank")
			end

		end
	end

	describe '#rating' do
		context 'when is no integer' do

			before do
				subject.valid?
			end

			it 'should be invalid' do
				expect(subject.errors[:rating]).to include("is not a number")
			end

		end
	end

end