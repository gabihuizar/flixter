class Lesson < ActiveRecord::Base
	belongs_to :section
	mount_uploader :video, VideoUploader

	include RankedModel
	ranks :row_order, :with_same => :section_id

	def next_lesson
		lesson = section.lessons.where("row_order > ?", self.row_order).rank(:row_order).first
		if lesson.blank? && section.next_section
			return section.next_section.lessons.rank(:row_order).first
		end
	end
end
=begin
	
section loads the section connected to the lesson we are in the context of

section.lessons looks at the section of the lesson we are in the context of and
loads all the lessons within that section 

where allows us to add snippets of SQL code that can filter records and remove
items that don't have certain properties yet. filters out all the lessons
that are not after the current lesson in the section

rank(:row_order) sorts the results by the row_order

=end


