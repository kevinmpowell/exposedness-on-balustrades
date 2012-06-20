# ## Schema Information
#
# Table name: users
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **updated_at ** | `datetime        ` | `not null`
#

class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :players
end
