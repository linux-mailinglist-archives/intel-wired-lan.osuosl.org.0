Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8E35E5931
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE56E610A6;
	Thu, 22 Sep 2022 03:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE56E610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816299;
	bh=NaSvBpbmJSkGddReBRa9gOjpKhL24U+l2K8jLdHpaxg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m+Cq0Mo6kZyHb87eOaPTTcnZzXw7KXUIhOLkNOEn93/7DlvoNaAhozb1660TiRS39
	 3gsdvU7pHVOM5QTtIRqfqhXdZbFRDM3OKoK4+VlOFQ8kMNkZNiv5/mkQ8pvPkumnnI
	 9RoiUXfg4GP12snpbjd9+ZaWBcZVP2UyMY1j5vkwaLrT8FHx1xAbOPPZFNygZaFC/+
	 G1CxPtY1mJXn0ZQdlaoy6ah5F4beGOSUGhH38l2EOlMNswoKRVsllsKKNruVDQTNy2
	 G41AbQPCqgLB9SKtOPssFhgiK7fLTRAIwOyEexy1IuSTChtKBvZJnJwJwnVD38IWTY
	 Z/Yy7fu0HZs9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQwtpLwiD8vu; Thu, 22 Sep 2022 03:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97F9D610A3;
	Thu, 22 Sep 2022 03:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97F9D610A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BE8F1C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 173BC82F4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 173BC82F4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MLPU18xz9jX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DCC782628
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DCC782628
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:32 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id t3so7553408ply.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=bpEbyFBm8ujPK6iqrGWXCPwqEismRLAX26z3I+Rspz8=;
 b=sX6uPvjlBBImYyXVxoBnHnvxhR0sK4A74K1pa/akxri5gp59LbriiiXkuWUvu9Pz70
 Ayhn1XFIXe/XvqO7vfb2io6x1EmMX7EqfwKHhgwO97MQhcx704h0Gv/7VJ5xiegs1vPI
 U6yx9NhFeaEFSk/8RVnQglphI2UB8dzF4mT4Wf5d/dwga+KtW+S8+nL1kx5zBsaXBsp1
 LhspXnTcglRVQheIV3kc+4W2HCJuijG3VVSxVwjIxSaAKmbq/nrkSY0g+ql0aRfdi9i4
 r3PyxK9SzsohVeATjDDM/A02bTLzEeHG0Mnj4nTUeERw0yeSVIzBcmMiILMFWzHuSQiF
 UsNA==
X-Gm-Message-State: ACrzQf2uDneMDOVHJUSfb8plG/qAp31rDuZDnyKjGYl4RVTwoqF38wGp
 H7BS/zL7RGikND3nC5S9n8EBkg==
X-Google-Smtp-Source: AMsMyM5u6eYb4g944r9Q/Pt9mZXCmsyxQzDwy9CZJ8oZsRhkZQrJS6fEKVkXWUHzQQ89FNa93/Kc0w==
X-Received: by 2002:a17:902:e54b:b0:177:e29e:a0c0 with SMTP id
 n11-20020a170902e54b00b00177e29ea0c0mr1359878plf.66.1663816231700; 
 Wed, 21 Sep 2022 20:10:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a17090341c300b0016d6963cb12sm2781495ple.304.2022.09.21.20.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:12 -0700
Message-Id: <20220922031013.2150682-12-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3544; h=from:subject;
 bh=oS2Iv+uVGC72Kt/ZsRdKSQv1v3zTVhJ3IWvWWRabp+g=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9IUEKv90igkAnqqd37b6kR1bxxEz6G+6mdwmL8d
 hU8qttyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSFAAKCRCJcvTf3G3AJqdIEA
 CK12iuKhH2Gb+F4wapUYpaSc373MS6rjJoFpsNm84+/ObvNHGEz2kq5kYHkOs7G3e8jhHlr4YXru45
 YnbkR3SRCmUyJ7loADAzHlj0yCxkYniAAXvuZzfvc9luBT3TIsBLzOyoo8E8ylHkAK0aVycGXvAy+W
 PGkSD/jL+EQrHdUK+hra5t32/YXsbXr4NStVZ9IzHolQ9EI054AF8/LV77MBWpPIX5Ho1mGWzl1ijJ
 E9wFPHhl2hfKzU9eXD+N4EzOrlLceF+ztZPDuq2MdUfMxOdv5GAJKiW5FRq+IFpNkwIM9nhSPM5iQE
 YBr/ivEWQqdNFsPnRtgWssO370vtzYb+x61dFRrUn7/FKR7Om27TEYwAd6+P+FnDwRoMTV/BPuFe6C
 7iiHIRbFsfrIUn/r4jYTZt4u6NtpaDA1FVV/Em1JDkKtSh3fWi4Ku18TGZQm81iMdScRZHubomFfI+
 vxHjePLahrOHkSfaNZvuJLrLPDU7WsDADYD6e/53VTiL3yyHRtO0XH1DyMkIDUA2WPNZy6ISq70TQ5
 eN54uMg3p8o5Bz9r112LSXwEkIA+2aRlSgWZDi0KwDLacLHhcuECUcvzHrANynElUzrtH5uoqtYyZh
 Y8ppyJSFYyPmpNrkQ/M6ZKVaeCwZCHu2ZcgtL5o8/NTiuMaB6SQl9nFcWJRg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=bpEbyFBm8ujPK6iqrGWXCPwqEismRLAX26z3I+Rspz8=;
 b=GwEKRlSGWNZZz0bSOhH09wT/dIlAzUgEDzlKCcSGfqUiFWltnmUuICqFqj3LlzCRek
 BVgZYAczODxRtxBqW9kNHbHyqaba8VuQcAtk82kUBEiaAlU+daUZZIQGOA7CX1koggEg
 yep8B8ilhj99/u+e0tErmzGRiobAHfyNKzCog=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=GwEKRlSG
Subject: [Intel-wired-lan] [PATCH 11/12] slab: Remove __malloc attribute
 from realloc functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, Jacob Shin <jacob.shin@amd.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hao Luo <haoluo@google.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The __malloc attribute should not be applied to "realloc" functions, as
the returned pointer may alias the storage of the prior pointer. Instead
of splitting __malloc from __alloc_size, which would be a huge amount of
churn, just create __realloc_size for the few cases where it is needed.

Additionally removes the conditional test for __alloc_size__, which is
always defined now.

Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Hao Luo <haoluo@google.com>
Cc: Marco Elver <elver@google.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler_types.h | 13 +++++--------
 include/linux/slab.h           | 12 ++++++------
 2 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 4f2a819fd60a..f141a6f6b9f6 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -271,15 +271,12 @@ struct ftrace_likely_data {
 
 /*
  * Any place that could be marked with the "alloc_size" attribute is also
- * a place to be marked with the "malloc" attribute. Do this as part of the
- * __alloc_size macro to avoid redundant attributes and to avoid missing a
- * __malloc marking.
+ * a place to be marked with the "malloc" attribute, except those that may
+ * be performing a _reallocation_, as that may alias the existing pointer.
+ * For these, use __realloc_size().
  */
-#ifdef __alloc_size__
-# define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
-#else
-# define __alloc_size(x, ...)	__malloc
-#endif
+#define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
+#define __realloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__)
 
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 4fc41e4ed4a2..ac3832b50dbb 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -184,7 +184,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
 /*
  * Common kmalloc functions provided by all allocators
  */
-void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __alloc_size(2);
+void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __realloc_size(2);
 void kfree(const void *objp);
 void kfree_sensitive(const void *objp);
 size_t __ksize(const void *objp);
@@ -661,10 +661,10 @@ static inline __alloc_size(1, 2) void *kmalloc_array(size_t n, size_t size, gfp_
  * @new_size: new size of a single member of the array
  * @flags: the type of memory to allocate (see kmalloc)
  */
-static inline __alloc_size(2, 3) void * __must_check krealloc_array(void *p,
-								    size_t new_n,
-								    size_t new_size,
-								    gfp_t flags)
+static inline __realloc_size(2, 3) void * __must_check krealloc_array(void *p,
+								      size_t new_n,
+								      size_t new_size,
+								      gfp_t flags)
 {
 	size_t bytes;
 
@@ -788,7 +788,7 @@ static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t fla
 }
 
 extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize, gfp_t flags)
-		      __alloc_size(3);
+		      __realloc_size(3);
 extern void kvfree(const void *addr);
 extern void kvfree_sensitive(const void *addr, size_t len);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
