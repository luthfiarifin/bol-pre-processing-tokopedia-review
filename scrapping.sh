#!/bin/bash

curl -o tokopedia-review.json 'https://gql.tokopedia.com/graphql/productReviewList' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"' \
  -H 'X-Version: 30e5d6f' \
  -H 'DNT: 1' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
  -H 'content-type: application/json' \
  -H 'accept: */*' \
  -H 'Referer: https://www.tokopedia.com/unilever/sunlight-sabun-cuci-piring-jeruk-nipis-botol-400ml/review' \
  -H 'X-Source: tokopedia-lite' \
  -H 'X-Tkpd-Lite-Service: zeus' \
  -H 'sec-ch-ua-platform: "macOS"' \
  --data-raw $'[{"operationName":"productReviewList","variables":{"productID":"306410051","page":1,"limit":50,"sortBy":"informative_score desc","filterBy":""},"query":"query productReviewList($productID: String\u0021, $page: Int\u0021, $limit: Int\u0021, $sortBy: String, $filterBy: String) {\\n  productrevGetProductReviewList(productID: $productID, page: $page, limit: $limit, sortBy: $sortBy, filterBy: $filterBy) {\\n    productID\\n    list {\\n      id: feedbackID\\n      variantName\\n      message\\n      productRating\\n      reviewCreateTime\\n      reviewCreateTimestamp\\n      isReportable\\n      isAnonymous\\n      imageAttachments {\\n        attachmentID\\n        imageThumbnailUrl\\n        imageUrl\\n        __typename\\n      }\\n      videoAttachments {\\n        attachmentID\\n        videoUrl\\n        __typename\\n      }\\n      reviewResponse {\\n        message\\n        createTime\\n        __typename\\n      }\\n      user {\\n        userID\\n        fullName\\n        image\\n        url\\n        __typename\\n      }\\n      likeDislike {\\n        totalLike\\n        likeStatus\\n        __typename\\n      }\\n      stats {\\n        key\\n        formatted\\n        count\\n        __typename\\n      }\\n      badRatingReasonFmt\\n      __typename\\n    }\\n    shop {\\n      shopID\\n      name\\n      url\\n      image\\n      __typename\\n    }\\n    hasNext\\n    totalReviews\\n    __typename\\n  }\\n}\\n"}]'