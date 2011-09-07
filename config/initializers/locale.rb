# Initialize Localization

# set default locale 
I18n.default_locale = :en

# Load Pluralization Module(which then loads pluralizers like config/locales/en.rb).
I18n::Backend::Simple.send(:include, I18n::Backend::Pluralization)
