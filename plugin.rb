# name: allowsameorigin
# about: allows Discourse site to be embedded in HTML iframe
# version: 1
# authors: Ben Miller
habidatcloudurl = 'https://' + ENV.fetch('HABIDAT_NEXTCLOUD_SUBDOMAIN') { 'cloud' } + '.' + ENV.fetch('HABIDAT_DOMAIN') { 'habidat.org' }
Rails.application.config.action_dispatch.default_headers.merge!({'Content-Security-Policy' => "frame-ancestors 'self' " + habidatcloudurl})
