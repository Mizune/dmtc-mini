# == Schema Information
#
# Table name: revisions
#
#  id                 :integer          not null, primary key
#  page_id            :integer          not null
#  rev_text_id        :integer          not null
#  rev_comment        :binary(255)      not null
#  rev_user           :integer          default(0), not null
#  rev_user_text      :string(255)      default(""), not null
#  rev_timestamp      :binary(14)       default("\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"), not null
#  rev_minor_edit     :integer          default(0), not null
#  rev_deleted        :integer          default(0), not null
#  rev_len            :integer
#  rev_parent_id      :integer
#  rev_sha1           :binary(32)       not null
#  rev_content_model  :binary(32)
#  rev_content_format :binary(64)
#

class Revision < ActiveRecord::Base
end
