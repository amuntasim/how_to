module HowTo
  class Section < ActiveRecord::Base
    validates :name, :presence => true

    translates :name
    acts_as_nested_set

    has_many :contents, :dependent => :destroy

    include HowTo::TranslationUtil
    allow_multi_locales_edit(*I18n.available_locales)

    scope :active, where(active: true)
    scope :roots_only, where(:parent_id => nil)
    scope :without, ->(id) {   where("id <> ? ", id) if id.present?}
    scope :with_content, where("contents_count > 0")
    scope :ordered, order("`order` ASC")

    class Translation
      attr_accessible :locale, :name
    end

    private

    def mass_assignment_authorizer(role = :default)
      self.class.protected_attributes
    end
  end
end
