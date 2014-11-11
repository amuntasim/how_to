module HowTo
  class Content < ActiveRecord::Base
    validates :title, :presence => true
    validates :section, :presence => true
    validates :description, :presence => true

    translates :title, :description
    belongs_to :section, :counter_cache => true
    scope :active, where(active: true)

    before_save :fix_counter_cache, :if => ->(c) { !c.new_record? && c.section_id_changed? }


    include TranslationUtil
    allow_multi_locales_edit(*I18n.available_locales)

    # class Translation
    #   attr_accessible :locale, :title, :description
    # end

    private

    def fix_counter_cache
      Section.decrement_counter(:contents_count, self.section_id_was)
      Section.increment_counter(:contents_count, self.section_id)
    end

    def mass_assignment_authorizer(role = :default)
      self.class.protected_attributes
    end
  end
end
