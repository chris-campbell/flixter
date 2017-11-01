class Lesson < ApplicationRecord
    belongs_to :section
    mount_uploader :video, VideoUploader
    
    include RankedModel
    ranks :row_order, with_same: :section_id
    # ranks :row_order column, with same section.
end
