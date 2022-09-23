Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D40BD5E8391
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:29:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9081E41C6D;
	Fri, 23 Sep 2022 20:29:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9081E41C6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964945;
	bh=JfUO7un0pzagr8dBI06rC812lpbDpcaASobpfjhseYQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mUwURfYOKiyPWZKvd74h5ANJY/Fi3XERhWt2EpUE9pC4XdybRL+ZNrEul+Oy6S40i
	 pdBu6v+2+uqbUi+8Eb3B21morQpz2TQNuW2d05kcQMHzALBXP5/23tZoNIcAGVgvvo
	 Q4nhsnd5RWjUq+8eDk0cIM1ykKnqIHUOhfqu89HW4H/wQoZ2r4aceD5nFj+FbThc6Y
	 zz1VzsBQ8cmDA/DrzXQgGuWvj1H26q5HbizwCmox8yZV21TtWdD0NHpNiZe6NMb3yc
	 p9d6KTMxYnLt3l+WfT9w9stoHXO77Rjo2Q5IwozAxwWxY9it1zD1JjeQ9aNlkXYZRi
	 7/V9vnVF52bKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JrNyfB-Y6CLh; Fri, 23 Sep 2022 20:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29FF241B2D;
	Fri, 23 Sep 2022 20:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29FF241B2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 941701BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7573140FDD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7573140FDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XAM36Rk7bCLC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78371400C4
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78371400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:28 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id f23so1168067plr.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=WvdKcFRqdjuCQfT0JD0gE0+SmtwNOrU+Pg1jOBHe3u4=;
 b=KrRDqlqYH9vPH7ma7GlHtYm8RVelrDhz34s7ldVieK4NMk0ufqQ9Z1PTNlEDkWEAju
 nPIhMbe50hyRTcIa+ABOg8K9e+FrJiHhJYXqdLYu7ra6cOLin4WFvQ4VcQP5uYfMHOX3
 Gxcm2ScKkgz65djUTXCO3xDEzxkyZFEHeds8y3MrKyKv+wFaqxKw7RsgBk3HjIsG/AS5
 WrL8YTDNnMWS5iwYUetoi2g3lHTZDE2WcNaA9EyAb2pw71sMNHoVMd1EYG9Xuc8Jdq74
 CH14WYJMh4PqQXN9V64HY+cd/8Lz1uxbOi2DP/VTDjc+xqXykU4N90hxqxWrU5cl944A
 fGUA==
X-Gm-Message-State: ACrzQf0eiWm5KtYwd5+QB1uiaLYaDFCFP2uadCZyHdeAwAHkQBxbmf9b
 VkejeVNSiylbOm0A4NZvtWixTA==
X-Google-Smtp-Source: AMsMyM4ngI9FRR1eL+yZ6uwD2KKL58Y//80JdSNI55TW3osObzJLJuYdaOAbceb8ExT348oeslycRw==
X-Received: by 2002:a17:90b:1d12:b0:200:461c:fa7d with SMTP id
 on18-20020a17090b1d1200b00200461cfa7dmr11526582pjb.38.1663964907877; 
 Fri, 23 Sep 2022 13:28:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 l11-20020a170902f68b00b0017832c8cc85sm6427549plg.292.2022.09.23.13.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:09 -0700
Message-Id: <20220923202822.2667581-4-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8786; h=from:subject;
 bh=/55In49mcQKg/1B/2W03m4b/pZThn3d5JbnnA49Rm6I=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbkHxh06F0h70CVmnqi/5BazOvRlOHWM3KgI6U5
 EH+6FCyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJhURD/
 9I6XEF+He0Ww+60DOgfxrHQg5rlWLQ0kqhBM44ODly9CeGSh3lhyoVQ/h9WpsVZNuLWimeIaArOgsM
 IAW1lVoADGZnBF9ATBVtZo64La+i6ahcPdQ7LBs/s6pDjZeopNi7al0Bt1YzlRe0VOSUjYGy82cVtY
 WOaobW8pTWoyLTjo3iTpHKyFaKQN1MKp1Y3EqG0/B05W8mFeqsmuQ0qy6EIiP8Zs4iEfvR/7UrSGb0
 BVshxfoJapBmV7hlF/1qXAMi4Nva19VNb6+8aYgQRWD6SHG43lz++GxcOt3rERzf1S1B61G/WpKdPE
 OmQF4aoA0KyjqK6KPG9b+IKbK9H4qTgxuIMqrcyFVniVxLQqm8OZeZ7G8Sc/RmyqeiIp4dcT2wfHlo
 9rn+/pIzx3dZkhHIt1dBi6oGIYcft5FhSjoTBRNpDCbB3q6t7Z6v+2tx9BprHS7rO3CCsH36HQEZ7B
 UKU1zH31UqO/iWiGbvto4ioPgRV91yQV1fmC9MAvO70ri2/E2LfLPOhO5Ie/MQ1W6dyCRLrTbXBryi
 qvuZGLPA690eYRPxm2oVZ54qQE6SU2XdbPMDsuG9ONR6QSv2mTERQ9OgeKQnOPu3Yznrzyd99lObTv
 OIpbLfaEVj2GDT+fQjDKwgYif/bE416Ch2kM90zcPNidPn2ZZH/+EY2ye6/A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=WvdKcFRqdjuCQfT0JD0gE0+SmtwNOrU+Pg1jOBHe3u4=;
 b=HrEaRqblEiynLI80qIODRxODwTegHwanOC+vBRaT+N4CuyIyDnT1Ka3u4nfVp9IIHd
 diT0lWeZvMtZhxZoszDpodW+IF3HNONiVLb+u/CcrtF0chbqY7ZgfyXXY3bccBOo8VEU
 9aWzIy88EGpAGDtPIK6TJqjioaB1k1Ced9PHo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=HrEaRqbl
Subject: [Intel-wired-lan] [PATCH v2 03/16] skbuff: Proactively round up to
 kmalloc bucket size
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org, netdev@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of discovering the kmalloc bucket size _after_ allocation, round
up proactively so the allocation is explicitly made for the full size,
allowing the compiler to correctly reason about the resulting size of
the buffer through the existing __alloc_size() hint.

This will allow for kernels built with CONFIG_UBSAN_BOUNDS or the
coming dynamic bounds checking under CONFIG_FORTIFY_SOURCE to gain
back the __alloc_size() hints that were temporarily reverted in commit
93dd04ab0b2b ("slab: remove __alloc_size attribute from __kmalloc_track_caller")

Additionally tries to normalize size variables to u32 from int. Most
interfaces are using "int", but notably __alloc_skb uses unsigned int.

Also fix some reverse Christmas tree and comments while touching nearby
code.

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: David Rientjes <rientjes@google.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/skbuff.h |  5 +---
 net/core/skbuff.c      | 64 +++++++++++++++++++++---------------------
 2 files changed, 33 insertions(+), 36 deletions(-)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index ca8afa382bf2..5a16177f38b5 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -1234,7 +1234,7 @@ void kfree_skb_partial(struct sk_buff *skb, bool head_stolen);
 bool skb_try_coalesce(struct sk_buff *to, struct sk_buff *from,
 		      bool *fragstolen, int *delta_truesize);
 
-struct sk_buff *__alloc_skb(unsigned int size, gfp_t priority, int flags,
+struct sk_buff *__alloc_skb(unsigned int bytes, gfp_t priority, int flags,
 			    int node);
 struct sk_buff *__build_skb(void *data, unsigned int frag_size);
 struct sk_buff *build_skb(void *data, unsigned int frag_size);
@@ -1870,9 +1870,6 @@ static inline int skb_unclone(struct sk_buff *skb, gfp_t pri)
 
 /* This variant of skb_unclone() makes sure skb->truesize
  * and skb_end_offset() are not changed, whenever a new skb->head is needed.
- *
- * Indeed there is no guarantee that ksize(kmalloc(X)) == ksize(kmalloc(X))
- * when various debugging features are in place.
  */
 int __skb_unclone_keeptruesize(struct sk_buff *skb, gfp_t pri);
 static inline int skb_unclone_keeptruesize(struct sk_buff *skb, gfp_t pri)
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 974bbbbe7138..0b30fbdbd0d0 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -343,19 +343,23 @@ EXPORT_SYMBOL(napi_build_skb);
  * the caller if emergency pfmemalloc reserves are being used. If it is and
  * the socket is later found to be SOCK_MEMALLOC then PFMEMALLOC reserves
  * may be used. Otherwise, the packet data may be discarded until enough
- * memory is free
+ * memory is free.
  */
-static void *kmalloc_reserve(size_t size, gfp_t flags, int node,
+static void *kmalloc_reserve(u32 *size, gfp_t flags, int node,
 			     bool *pfmemalloc)
 {
 	void *obj;
 	bool ret_pfmemalloc = false;
 
+	/* kmalloc(size) might give us more room than requested, so
+	 * allocate the true bucket size up front.
+	 */
+	*size = kmalloc_size_roundup(*size);
 	/*
 	 * Try a regular allocation, when that fails and we're not entitled
 	 * to the reserves, fail.
 	 */
-	obj = kmalloc_node_track_caller(size,
+	obj = kmalloc_node_track_caller(*size,
 					flags | __GFP_NOMEMALLOC | __GFP_NOWARN,
 					node);
 	if (obj || !(gfp_pfmemalloc_allowed(flags)))
@@ -363,7 +367,7 @@ static void *kmalloc_reserve(size_t size, gfp_t flags, int node,
 
 	/* Try again but now we are using pfmemalloc reserves */
 	ret_pfmemalloc = true;
-	obj = kmalloc_node_track_caller(size, flags, node);
+	obj = kmalloc_node_track_caller(*size, flags, node);
 
 out:
 	if (pfmemalloc)
@@ -380,7 +384,7 @@ static void *kmalloc_reserve(size_t size, gfp_t flags, int node,
 
 /**
  *	__alloc_skb	-	allocate a network buffer
- *	@size: size to allocate
+ *	@bytes: minimum bytes to allocate
  *	@gfp_mask: allocation mask
  *	@flags: If SKB_ALLOC_FCLONE is set, allocate from fclone cache
  *		instead of head cache and allocate a cloned (child) skb.
@@ -395,12 +399,12 @@ static void *kmalloc_reserve(size_t size, gfp_t flags, int node,
  *	Buffers may only be allocated from interrupts using a @gfp_mask of
  *	%GFP_ATOMIC.
  */
-struct sk_buff *__alloc_skb(unsigned int size, gfp_t gfp_mask,
+struct sk_buff *__alloc_skb(unsigned int bytes, gfp_t gfp_mask,
 			    int flags, int node)
 {
 	struct kmem_cache *cache;
 	struct sk_buff *skb;
-	unsigned int osize;
+	u32 size = bytes;
 	bool pfmemalloc;
 	u8 *data;
 
@@ -427,15 +431,13 @@ struct sk_buff *__alloc_skb(unsigned int size, gfp_t gfp_mask,
 	 */
 	size = SKB_DATA_ALIGN(size);
 	size += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
-	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
-	if (unlikely(!data))
-		goto nodata;
-	/* kmalloc(size) might give us more room than requested.
-	 * Put skb_shared_info exactly at the end of allocated zone,
+	/* Put skb_shared_info exactly at the end of allocated zone,
 	 * to allow max possible filling before reallocation.
 	 */
-	osize = ksize(data);
-	size = SKB_WITH_OVERHEAD(osize);
+	data = kmalloc_reserve(&size, gfp_mask, node, &pfmemalloc);
+	if (unlikely(!data))
+		goto nodata;
+	size = SKB_WITH_OVERHEAD(size);
 	prefetchw(data + size);
 
 	/*
@@ -444,7 +446,7 @@ struct sk_buff *__alloc_skb(unsigned int size, gfp_t gfp_mask,
 	 * the tail pointer in struct sk_buff!
 	 */
 	memset(skb, 0, offsetof(struct sk_buff, tail));
-	__build_skb_around(skb, data, osize);
+	__build_skb_around(skb, data, size);
 	skb->pfmemalloc = pfmemalloc;
 
 	if (flags & SKB_ALLOC_FCLONE) {
@@ -1708,7 +1710,7 @@ int pskb_expand_head(struct sk_buff *skb, int nhead, int ntail,
 		     gfp_t gfp_mask)
 {
 	int i, osize = skb_end_offset(skb);
-	int size = osize + nhead + ntail;
+	u32 size = osize + nhead + ntail;
 	long off;
 	u8 *data;
 
@@ -1722,11 +1724,11 @@ int pskb_expand_head(struct sk_buff *skb, int nhead, int ntail,
 
 	if (skb_pfmemalloc(skb))
 		gfp_mask |= __GFP_MEMALLOC;
-	data = kmalloc_reserve(size + SKB_DATA_ALIGN(sizeof(struct skb_shared_info)),
-			       gfp_mask, NUMA_NO_NODE, NULL);
+	size += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
+	data = kmalloc_reserve(&size, gfp_mask, NUMA_NO_NODE, NULL);
 	if (!data)
 		goto nodata;
-	size = SKB_WITH_OVERHEAD(ksize(data));
+	size = SKB_WITH_OVERHEAD(size);
 
 	/* Copy only real data... and, alas, header. This should be
 	 * optimized for the cases when header is void.
@@ -6060,22 +6062,21 @@ EXPORT_SYMBOL(alloc_skb_with_frags);
 static int pskb_carve_inside_header(struct sk_buff *skb, const u32 off,
 				    const int headlen, gfp_t gfp_mask)
 {
-	int i;
-	int size = skb_end_offset(skb);
+	u32 size = skb_end_offset(skb);
 	int new_hlen = headlen - off;
 	u8 *data;
+	int i;
 
 	size = SKB_DATA_ALIGN(size);
 
 	if (skb_pfmemalloc(skb))
 		gfp_mask |= __GFP_MEMALLOC;
-	data = kmalloc_reserve(size +
-			       SKB_DATA_ALIGN(sizeof(struct skb_shared_info)),
-			       gfp_mask, NUMA_NO_NODE, NULL);
+	size += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
+	data = kmalloc_reserve(&size, gfp_mask, NUMA_NO_NODE, NULL);
 	if (!data)
 		return -ENOMEM;
 
-	size = SKB_WITH_OVERHEAD(ksize(data));
+	size = SKB_WITH_OVERHEAD(size);
 
 	/* Copy real data, and all frags */
 	skb_copy_from_linear_data_offset(skb, off, data, new_hlen);
@@ -6179,23 +6180,22 @@ static int pskb_carve_frag_list(struct sk_buff *skb,
 static int pskb_carve_inside_nonlinear(struct sk_buff *skb, const u32 off,
 				       int pos, gfp_t gfp_mask)
 {
-	int i, k = 0;
-	int size = skb_end_offset(skb);
-	u8 *data;
 	const int nfrags = skb_shinfo(skb)->nr_frags;
 	struct skb_shared_info *shinfo;
+	u32 size = skb_end_offset(skb);
+	int i, k = 0;
+	u8 *data;
 
 	size = SKB_DATA_ALIGN(size);
 
 	if (skb_pfmemalloc(skb))
 		gfp_mask |= __GFP_MEMALLOC;
-	data = kmalloc_reserve(size +
-			       SKB_DATA_ALIGN(sizeof(struct skb_shared_info)),
-			       gfp_mask, NUMA_NO_NODE, NULL);
+	size += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
+	data = kmalloc_reserve(&size, gfp_mask, NUMA_NO_NODE, NULL);
 	if (!data)
 		return -ENOMEM;
 
-	size = SKB_WITH_OVERHEAD(ksize(data));
+	size = SKB_WITH_OVERHEAD(size);
 
 	memcpy((struct skb_shared_info *)(data + size),
 	       skb_shinfo(skb), offsetof(struct skb_shared_info, frags[0]));
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
