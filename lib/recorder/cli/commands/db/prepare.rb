module Recorder
  class CLI
    module Commands
      module Db
        class Prepare < Command
          desc 'Prepare (drop, create, migrate) database'

          def call(**options)
            context = Context.new(options: options)

            prepare_database(context)
          end

          private

          def prepare_database(context)
            require 'hanami/model/migrator'
            Hanami::Model::Migrator.prepare
          end
        end
      end
    end
  end
end