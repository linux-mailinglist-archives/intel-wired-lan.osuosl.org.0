Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9495E8383
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59C7841578;
	Fri, 23 Sep 2022 20:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59C7841578
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964916;
	bh=K/EuB93BLVBUARi2567PY5qEQeEvc6PW9axWWfOUjx0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0yQC32cS+Xu+K5s8cpzX+EHIiymffjMtJMswx5FaUxDGUvwjJ6JP58rF6VlZgzALV
	 1V9su7NoZq59i8GUBsqMCdbdgg8agTUCNs0/u4xMYvhMNoIXt7ciEWoYlFDo27Tb29
	 sDyqTFVNCAM6Ggc6Mz+hLQaHAdioQfGSs1JFhaqOaFu9iGzfnDi6EAT05KRPeaaMMg
	 9KnaN1aN0z2WNnguZf5vQcuRYieUp9fDeHdsEzFr29XS3NuF9qgXXTLzEbennY0HrT
	 /9y6yOvDbyUJsp9Z2rSAaXsPrpR4Hf72Mq15t9Mitf+qOLX8KB7W03udqdAyZwqQvv
	 7kR/qDwigURog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SMzVE97v_N9O; Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14ED5408D1;
	Fri, 23 Sep 2022 20:28:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14ED5408D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F32F11BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE3C660B73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE3C660B73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6vLLucHxgcN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7264E60ABF
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7264E60ABF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:26 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id w10so1147650pll.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=YGvtsu71vtHcP1IwH8KHiY99VHKmYF+/gM9Vu/q9kHU=;
 b=HdL+VwjfLpBxXjsVJCbLcOXuEDENZbswwlKvM2AefxUxoDyPTw9WeQ7V0M7DoogfDU
 NP/MVomtMqItz7Ot+MGh2paWe1v4zOM1EzAtFx87WbtrkojFchK8PwBZh7J62rmxDnPL
 shBRmaK7VX3Aq6fP5gYnztAwvYwTMOea/xuR4Ya7un1gcrbK7EfcD/c4+0yjHzkko+hB
 N8aOKlxLr0orScxTYgFDtfn1OHSjktMGSgJoERlgB1ltMs2iUjlPXnfcuFzNlleFYxFZ
 OIxLEo/ql0xZpBu45zg/sTF8I7PqEyJI9VHQON54Isma4LZKMLnxMMtHw9SINCt8adwF
 BmuQ==
X-Gm-Message-State: ACrzQf268tE1scu+3pexdvbAh9G4Y+Ua3Yyqva6e76UfQcPm/+z7jsws
 lCtPD6cAkKjKqEnaENj3BaHXQw==
X-Google-Smtp-Source: AMsMyM4GlI4eTJyA9jGLi9lKSnvEwSBc6wqIcYDsgYSV7Hnp4hgp4C2mRxXo8b79UHawMzdaoq59kQ==
X-Received: by 2002:a17:90a:e7c5:b0:200:ab1a:f32 with SMTP id
 kb5-20020a17090ae7c500b00200ab1a0f32mr22617314pjb.100.1663964905845; 
 Fri, 23 Sep 2022 13:28:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 q9-20020a17090311c900b0017829f986a5sm6477104plh.133.2022.09.23.13.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:07 -0700
Message-Id: <20220923202822.2667581-2-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4158; h=from:subject;
 bh=MMNKX5wNJYq+FFEmxyLeG88Y0pnaYb/m5JRZI7mnarg=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbj8zMWKpgfJIfLMPzhNCTicodYe34AHw5xM3H6
 j5Q5e5iJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W4wAKCRCJcvTf3G3AJkqXEA
 C0CZsQPuFBR2/YBQC6kBOKXs3AnUbDd1vBqtB/SiXvO/znjATFPdq/AAaSBC59HBiMKMePM5lvoiuf
 aYrT/n/J7UMzadTeGJDsCFyc95mxXFpunUjeXGaTgZojjSgAVg4DABiW54DaumW0lAWFAYegD26yeW
 JBuJYikNr/QTKW2lM4rlUyCE6YeklCEU+t6NysjAG5alyIx4W0dgH5pUSaAsO6hX65jz8XnK6X4gIg
 /ftbvkJQdCA8yp6HbKj3bRnJNwHhei3Ew8kR8tRkxr/QCstK0qco60yvO2mmfdDhJOTt8ljlhX+99P
 ki8iAJ2IUxqLrohWV0+vBNh/UwJAT/E2xl9J7vSz0a5lE1JDaJni0l7B9aWJ6wdTRIlb2RIw/25CU3
 2jH0hGLqeXUGTIW8ZuajWL/FWv6nUhF3N+Zql34CZfjXaiVB/8urV6hGJYu0PjR4RhPJtooFtvcGnc
 NN4P/rvByw1L7/4EGJFqF8KQolNWMu558pdQ29AecI/zn4E9FW41pu2k0zXuekf9ZHdzPr//MRq0VK
 jji3tNn5ZbZXQWzbxXbbkECT6CK1qfq6Re4GlmJrjPbAnkWCC4gXdw7JW6JIg/Km6CtttHx519iZge
 eYs/03ai/ytBwKoKeQmOX9IHVAAm1pTNUYNBd0RtV+OAb1aVL8B7TsN5Okig==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=YGvtsu71vtHcP1IwH8KHiY99VHKmYF+/gM9Vu/q9kHU=;
 b=IFb3o6XSbaR/uQunXfgk/OAgUcbyiUG/neLZN7u63Mb8Dqi7z6PDoN9BNOVaTqa26y
 SRlzwgeKQKd7R1FctE6Aq8Of9Rx/sgZevcaBDxM7zwYZdr/ifKEynY9SIWqMo8+dRdxg
 Y1YODqFn9CHpITGWx8VNcWimDUOWaa7761v9Y=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=IFb3o6XS
Subject: [Intel-wired-lan] [PATCH v2 01/16] slab: Remove __malloc attribute
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
Cc: Roman Gushchin <roman.gushchin@linux.dev>, dri-devel@lists.freedesktop.org,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, llvm@lists.linux.dev,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
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

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: Marco Elver <elver@google.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler_types.h | 13 +++++--------
 include/linux/slab.h           | 12 ++++++------
 mm/slab_common.c               |  4 ++--
 3 files changed, 13 insertions(+), 16 deletions(-)

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
index 0fefdf528e0d..41bd036e7551 100644
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
@@ -647,10 +647,10 @@ static inline __alloc_size(1, 2) void *kmalloc_array(size_t n, size_t size, gfp_
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
 
@@ -774,7 +774,7 @@ static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t fla
 }
 
 extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize, gfp_t flags)
-		      __alloc_size(3);
+		      __realloc_size(3);
 extern void kvfree(const void *addr);
 extern void kvfree_sensitive(const void *addr, size_t len);
 
diff --git a/mm/slab_common.c b/mm/slab_common.c
index 17996649cfe3..457671ace7eb 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -1134,8 +1134,8 @@ module_init(slab_proc_init);
 
 #endif /* CONFIG_SLAB || CONFIG_SLUB_DEBUG */
 
-static __always_inline void *__do_krealloc(const void *p, size_t new_size,
-					   gfp_t flags)
+static __always_inline __realloc_size(2) void *
+__do_krealloc(const void *p, size_t new_size, gfp_t flags)
 {
 	void *ret;
 	size_t ks;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
