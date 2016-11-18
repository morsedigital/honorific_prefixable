require "honorific_prefixable/version"

# HonorificPrefixable
module HonorificPrefixable
  FEMALE_BASIC = [
    'Mrs',
    'Miss',
    'Ms'
  ]
  
  FEMALE_EXTENDED = FEMALE_BASIC + [
    'Dame',
    'Lady',
    'Baroness',
    'Viscountess'
  ]

  MALE_BASIC = [
    'Mr',
    'Mastr'
  ]

  MALE_EXTENDED = MALE_BASIC + [
    'Sir',
    'Lord',
    'Baron',
    'Viscount'
  ]
  
  INDERMINATE_BASIC = [
    'Mx',
    'Dr'
  ]

  INDERMINATE_EXTENDED =INDERMINATE_BASIC + [
    'Capt',
    'Maj',
    'Col',
    'Rabbi',
    'The RT Hon',
    'Rev'
  ]

  BASIC = MALE_BASIC + FEMALE_BASIC + INDERMINATE_BASIC
  EXTENDED = MALE_EXTENDED + FEMALE_EXTENDED + INDERMINATE_EXTENDED

  def honorific_prefix
    title
  end

  def honorific_prefix_female?
    FEMALE.include? honorific_prefix
  end

  def honorific_prefix_male?
    MALE.include? honorific_prefix
  end
end
