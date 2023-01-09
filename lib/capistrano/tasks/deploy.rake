# frozen_string_literal: true

namespace :deploy do
  task :with_build do
    `bundle exec jekyll build`

    on roles(:all) do |_host|
      execute(:rm, '-r', '~/www')
      upload!('./_site/', './www', recursive: true)
    end
  end
end
