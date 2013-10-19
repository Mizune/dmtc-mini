# == Schema Information
#
# Table name: pages
#
#  id                 :integer          not null, primary key
#  page_namespace     :integer          not null
#  page_title         :string(255)      not null
#  page_restrictions  :binary(255)      not null
#  page_counter       :integer          default(0), not null
#  page_is_redirect   :integer          default(0), not null
#  page_is_new        :integer          default(0), not null
#  page_random        :float            not null
#  page_touched       :binary(14)       default("\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"), not null
#  page_latest        :integer          not null
#  page_len           :integer          not null
#  page_content_model :binary(32)
#

class Page < ActiveRecord::Base
end
