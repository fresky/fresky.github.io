# encoding: utf-8
module Jekyll
 
class Site
 
def create_article_total_list(site)
write_to_Article_total_sidebar(site) if @config['article_total_sidebar']
end
 
private
# generate category tag list and write to 'source/_includes/asides/categories_tag.html'
def write_to_Article_total_sidebar(site)
all_posts = site.site_payload['site']['posts']
puts ' => Creating Article total Sidebar'
html = "<ul>\n"
# case insensitive sorting
html << " <li>#{@config['article_my_site_has']} #{all_posts.count} #{@config['article_my_site_article']}</li>\n"
html << "</ul>"
File.open(File.join(@source, '_includes/asides/article_total_sidebar.html'), 'w') do |file|
file << """{% if site.article_total_sidebar %}
<section>
<h1>#{@config['article_total_title'] || 'Article Total'}</h1>
#{html}
</section>
{% endif %}
"""
end
end
end
 
class ArticleTotal < Generator
safe true
priority :low
 
def generate(site)
if site.config['article_total']
puts "## Generating Article Total.."
site.create_article_total_list(site)
end
end
 
end
end