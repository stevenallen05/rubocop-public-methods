# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = '--format progress --require spec_helper'
end
RuboCop::RakeTask.new(:rubocop)

task default: :test

task test: %i[spec rubocop]
