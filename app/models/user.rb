# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password        :string
#  avatar          :binary
#  bio             :text
#  birthday        :date
#  color           :string
#  fruit           :string
#  music           :string
#  language        :string
#  pill            :string
#  choices         :string
#  active          :boolean
#  friends         :integer
#  mood            :integer
#  awake           :time
#  first_kiss      :datetime
#  terms           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  serialize :fruit, JSON
  serialize :music, JSON
  serialize :choices, JSON

  AVATAR = Mime::LOOKUP.keys.keep_if { |v| v =~ /image/ }
  COLOR = %i[red pink violet indigo blue teal green yellow].freeze
  FRUIT = %i[apple banana cherry coconut grape lime mango orange pear pineapple].freeze
  MUSIC = %i[rock pop jazz heavy_metal hip_hop house electronic_dance dance techno].freeze
  LANGUAGE = %i[en de es ru].freeze
  PILL = %i[red blue].freeze
  CHOICES = %i[a b c d].freeze

  validates :name,        presence: true, length: { minimum: 3 }
  validates :email,       presence: true, format: { with: /.+@.+\.{1}.{2,}/ }
  validates :password,    length: { within: 8..40 }
  # validates :avatar,      presence: true
  validates :bio,         length: { within: 10..900 }
  validates :birthday,    presence: true, timeliness: { type: :date, after: -> { 1.day.ago },
                                                        after_message: 'must be at least 1 day old' }
  validates :color,       presence: true
  validates :fruit,       presence: true, exclusion_array: { deny_blank: true }
  validates :music,       presence: true, exclusion_array: { in: User::MUSIC.first, presence: true, deny_blank: true }
  validates :language,    inclusion: { in: User::LANGUAGE.map(&:to_s) }
  validates :pill,        inclusion: { in: [User::PILL.first.to_s] }
  validates :choices,     presence: true, exclusion_array: { in: User::CHOICES.first, presence: true, deny_blank: true }
  validates :active,      presence: true, acceptance: true
  validates :friends,     numericality: { only_integer: true, greater_than: 1, less_than: 10_000 }
  validates :mood,        numericality: { only_integer: true, greater_than: 50, less_than_or_equal_to: 100 }
  validates :awake,       presence: true, timeliness: { type: :time, before: '12:00' }
  validates :first_kiss,  presence: true, timeliness: { type: :datetime, after: '20:00' }
  validates :terms,       acceptance: true
end
