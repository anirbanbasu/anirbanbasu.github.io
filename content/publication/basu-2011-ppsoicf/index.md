---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Privacy-preserving weighted Slope One predictor for Item-based Collaborative
  Filtering
subtitle: ''
summary: ''
authors:
- Anirban Basu
- Hiroaki Kikuchi
- Jaideep Vaidya
tags: []
categories: []
date: '2011-01-01'
lastmod: 2022-03-14T10:29:05+09:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2022-08-17T12:48:01.671058Z'
publication_types:
- '1'
abstract: Rating-based collaborative filtering (CF) predicts the rating that a user
  will give to an item, derived from the ratings of other items given by other users.
  Such CF schemes utilise either user neighbourhoods (i.e. user-based CF) or item
  neighbourhoods (i.e. item-based CF). Lemire and MacLachlan [1] proposed three related
  schemes for an item-based CF with predictors of the form f(x) = x+b, hence the name
  ``slope one''. Slope One predictors have been shown to be accurate on large datasets.
  They also have several other desirable properties such as being updatable on the
  fly, efficient to compute, and work even with sparse input. In this paper, we present
  a privacy-preserving item-based CF scheme through the use of an additively homomorphic
  public-key cryptosystem on the weighted Slope One predictor; and show its applicability
  on both horizontal and vertical partitions. We present an evaluation of our proposed
  scheme in terms of communication and computation complexity.
publication: '*Proceedings of the International Workshop on Trust and Privacy in Distributed
  Information Processing (workshop at the IFIPTM 2011)*'
url_pdf: https://www.researchgate.net/profile/Anirban-Basu/publication/228454812_Privacy-preserving_weighted_Slope_One_predictor_for_Item-based_Collaborative_Filtering/links/09e415084d1475ecf1000000/Privacy-preserving-weighted-Slope-One-predictor-for-Item-based-Collaborative-Filtering.pdf
---
