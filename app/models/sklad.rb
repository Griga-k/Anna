class Sklad < ApplicationRecord
   belongs_to :category  # имеет индекс для категории

   def self.latest
      Sklad.order(:id).last
   end

  # проверка наличия фото
  def asset_exists?(path)
    if Rails.configuration.assets.compile
      Rails.application.precompiled_assets.include? path
    else
      Rails.application.assets_manifest.assets[path].present?
    end
  end
end

