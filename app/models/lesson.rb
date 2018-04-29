class Lesson < ApplicationRecord
    belongs_to :section
    mount_uploader :video, VideoUploader
    
    include RankedModel
    ranks :row_order, with_same: :section_id
    # ranks :row_order column, with same section.
    
    def next_lesson
      lesson = section.lessons.where("row_order > ?", self.row_order).rank(:row_order).first
      if lesson.blank? && section.next_section
        return section.next_section.lessons.rank(:row_order).first
      end
      return lesson
    end
    
    def duration(video)
      time = Videotime.get_video_time(video.path)
      return "#{ time / 60 }" + ":" + "#{ time % 60 }"
    end

end
