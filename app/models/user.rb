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
#  choises         :string
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
end
