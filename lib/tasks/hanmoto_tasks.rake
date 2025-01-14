namespace :hanmoto do
  desc 'generate public pages'
  task publish: :environment do
    # NOTE: clear cache
    ActionView::Base.assets_manifest = Sprockets::Railtie.build_manifest(Rails.application)
    Hanmoto::Task.run(Hanmoto.configuration.to_h)
  end
end
