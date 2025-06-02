---
# Leave the homepage title empty to use the site title
title: ""
date: 2025-03-10
type: landing

design:
  # Default section spacing
  spacing: "2rem"

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # text: 
      # Show a call-to-action button under your biography? (optional)
      # button:
      #   text: Download CV
      #   url: uploads/cv.pdf
    design:
      css_class: dark
      background:
        color: "#888888"
        image:
          # Add your image background to `assets/media/`.
          # filename: stacked-peaks.svg
          filters:
            brightness: 1.0
          size: cover
          position: center
          parallax: false
  - block: cta-button-list
    design:
      css_class: light
      background:
        color: "#DDDDDD"
    content:
      buttons:
        - text: Download 2-pages curriculum vitae / résumé (PDF)
          icon: custom/download-solid
          url: uploads/cv.pdf
        - text: Download a reverse chronological list of publications, grouped by year (PDF)
          icon: custom/list-solid
          url: uploads/publications-by-year.pdf
        - text: Download a reverse chronological list of publications, grouped by type (PDF)
          icon: custom/bars-staggered-solid
          url: uploads/publications-by-type.pdf
        - text: Visit my photography and visual arts website -- perspectives
          icon: custom/camera-solid
          url: https://perspectives.anirbanbasu.com
  # - block: markdown
  #   content:
  #     title: '📚 My Research'
  #     subtitle: ''
  #     text: |-
  #       Use this area to speak to your mission. I'm a research scientist in the Moonshot team at DeepMind. I blog about machine learning, deep learning, and moonshots.

  #       I apply a range of qualitative and quantitative methods to comprehensively investigate the role of science and technology in the economy.
        
  #       Please reach out to collaborate 😃
  #   design:
  #     columns: '1'
  # - block: collection
  #   id: papers
  #   content:
  #     title: Featured Publications
  #     filters:
  #       folders:
  #         - publication
  #       featured_only: true
  #   design:
  #     view: article-grid
  #     columns: 2
  # - block: collection
  #   content:
  #     title: Recent Publications
  #     text: ""
  #     filters:
  #       folders:
  #         - publication
  #       exclude_featured: false
  #   design:
  #     view: citation
  # - block: collection
  #   id: talks
  #   content:
  #     title: Recent & Upcoming Talks
  #     filters:
  #       folders:
  #         - event
  #   design:
  #     view: article-grid
  #     columns: 2
  # - block: collection
  #   id: news
  #   content:
  #     title: Recent News
  #     subtitle: ''
  #     text: ''
  #     # Page type to display. E.g. post, talk, publication...
  #     page_type: post
  #     # Choose how many pages you would like to display (0 = all pages)
  #     count: 5
  #     # Filter on criteria
  #     filters:
  #       author: ""
  #       category: ""
  #       tag: ""
  #       exclude_featured: false
  #       exclude_future: false
  #       exclude_past: false
  #       publication_type: ""
  #     # Choose how many pages you would like to offset by
  #     offset: 0
  #     # Page order: descending (desc) or ascending (asc) date.
  #     order: desc
  #   design:
  #     # Choose a layout view
  #     view: date-title-summary
  #     # Reduce spacing
  #     spacing:
  #       padding: [0, 0, 0, 0]
  - block: markdown
    id: etc
    content:
      title: et cetera
      text: |-
        #### Name
        <div style='text-align: justify'>
        <p>
        My name Anirban is a Bengali name ("অনির্বাণ", if you have Bengali fonts to see that), which means a light that shines forever. In Bengali, it sounds a bit like: aw-nee-r-baan. However, as Bengali is not a language with strict intonations, many variations of the pronunciation by non-Bengali speakers still make sense (somewhat!). In Japanese (Katakana), it is written as バス　オニバン (note that the family name is written first) and pronounced (in Romanization) ba-su o-ni-ba-n.
        </p>
        <p>
        If you would like to see how my name is written but do not have the Bengali or Japanese fonts to read the names in the paragraph above, click on the links below to see them as images.
        </div>

         - Full name in Bengali, left-to-right reading order: [click here](uploads/bengali-name.png).
         - Full name in Japanese, with the family name first in the left-to-right reading order: [click here](uploads/katakana-name.png).

        #### Profile photos
         - 1inch x 1.25inch @600dpi profile photo [JPEG](uploads/abasu-journal-600dpi.jpg).
         - 1inch x 1inch (aspect ratio: square) @600dpi profile photo [JPEG](uploads/profile-square-no-reflection.jpg).
    design:
      css_class: dark
      background:
        color: "#888888"
      card:
        # Card background color (CSS class)
        # css_class: "bg-primary-700"
        # css_style: ""
---
