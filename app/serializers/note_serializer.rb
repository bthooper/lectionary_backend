class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :updated_at
end
