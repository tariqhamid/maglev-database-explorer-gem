module MaglevDatabaseExplorer
  class Engine < ::Rails::Engine
    isolate_namespace MaglevDatabaseExplorer

    initializer "maglev-database-explorer" do |app|
      app.config.threadsafe!
    end
  end

  def self.full_gem_path
    gem = Gem.loaded_specs["maglev-database-explorer"]
    gem.full_gem_path
  end

  def self.eval_object
    @eval_object ||= Object.new
  end
end
