Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AB95E83EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA3704151A;
	Fri, 23 Sep 2022 20:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA3704151A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663965339;
	bh=SVeLEpAKvr3kXyWQ8Q/rysNh/JQcjcaT72/22ip108Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wrXWR0kLWWAy4eurA2UMG1Wq5clH/mvTHuHMDseOYtSHL2Xjt0e3a4YsYgie9kPIB
	 Ys2yTt12VX5EyKkzKGxrNLLgoWpjyuqCFvN76MxwOwM8YTPlQpMMHFZbs0fWAVPiP/
	 dg/1UvsnOlW8bYfLK04cUDiKUHfHGkmHIomMYdrYRMRCBfFdn68Oea0LUfbGgMCrbg
	 nj/5jFlLsY3H1OqLFL9KN7bqe+LmZvU2YazRyL643KFVdrRtnMyKnmPis7MdYrkhpl
	 030fglrNTggSnUzTu680kdQnIxhJKOzIdzUnOXzamF7HVagkP3VmdE74ffBCAHIiAh
	 G/Z2mtKlGkWdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id is16w5pILO97; Fri, 23 Sep 2022 20:35:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A934418BC;
	Fri, 23 Sep 2022 20:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A934418BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34CFB1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F8E060E84
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F8E060E84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BpQcRS--JrXZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:35:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2572060D73
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2572060D73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:35:30 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 g1-20020a17090a708100b00203c1c66ae3so1289970pjk.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:35:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=KTqecIsN+rZ/r5vRTPXwhG2Fjp/tipSlLDdfMKYcgLM=;
 b=2qPQyEssvzkfubf3fksJrUndJkKRfGUJqIFSCtBsms0z8kbx6lfnWFpzD/IjcI9Q0B
 kundo/345uSIQPShlXTRscvzRFGcrNe8HOUJ1J0aW1A3HziK7XJxJvC0gwSgFbUdQLzC
 PDtlE+P1k0M8vu/PETxQtkD6I8E5NXOgCYcKPeMA1BSUGJ4Xp4Ftn6SW28qbDuYGv5Ny
 YZ2Yhr3bHNSgnAqi6fay/OI+E0ylrEI5SW8IzrxWXRUSUSGRrD2dnwWXS6WyzQY29KK8
 JIa2ZSo+4TwR0pQBViNS+yrWHMfO8rclAjO7kpnVzygLWamGIAPHvxcEQBOQP0uBSQO9
 GryA==
X-Gm-Message-State: ACrzQf2ErLJDPctPkAAsRBEdCFZjqd1c6ndV08pIativAZOcluctfGCI
 W2RQf+c0A7z7AWawgDZ/E/xNyg==
X-Google-Smtp-Source: AMsMyM7vRbdvmLwAu4r0h4O20VFgjtnhlCkk0pZbrUyBGB40i196nKU6gbtNpTH2GFxoX0kIPq3SIA==
X-Received: by 2002:a17:903:244d:b0:178:a0eb:d4bc with SMTP id
 l13-20020a170903244d00b00178a0ebd4bcmr10401235pls.33.1663965329543; 
 Fri, 23 Sep 2022 13:35:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 n2-20020a170902d2c200b001715a939ac5sm6372093plc.295.2022.09.23.13.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:35:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:21 -0700
Message-Id: <20220923202822.2667581-16-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4409; h=from:subject;
 bh=eTOvroLnBC5lEfD5J+pHwkaq4l0Z2pdeLmvVu9h6d+U=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbmYN/aRzOKQ1vH75NEteIR/Vhz22yGW0UEIcgR
 Yp367AqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5gAKCRCJcvTf3G3AJiNkD/
 92DJis5bkVWVuBFAf6aPfGIKZn18fqqWhgDNIB1gL3+/JoYlzCund6gFEcY8zTobmS/RbZGu3aZ6aG
 eGxVM7yZ+jxRPM4eiG3l1HwhmL3cHQjHtqkRmDgIyPZ9xwxYKivuUOcVZws84e+7hawBwlAhMt8li+
 bgO93T234fS5FLzN/RobhSkg6ISNsI03S8QmlYHytLaSLXUZwSR0/mPUZnFFUrJZk61wAHwMxs68nu
 PInfWb4QkBwNwAwxJn7jG6OEI5/PSX0n80TMD9CEDNK8sroaMS2C4k5gxVvI8qQZGlT6YpdDGy5BFI
 oEYbO9baL9bYedtNrwWblW1L3ZmdrGVL1MbXkb3ToBxpDPvQrgQHkNTDqQsY4nttLsp3PP7SZolYSA
 EuyQgZv8SE2uzK0Y60dBBdrNDexKK0+R5g1mk0Fk/fCLG+1/b859Ulh7OdVyoMlBRQRnPMPCaAyju1
 28AEPnC9DBu3Gim8BVHKN3GTgZ0QlUPONvmBGSbAWx359vzIQcmmHIqEMaug8yVrFqRB+cIVXcvtuT
 EI3ZSAAQpODVZpTsW0ZJatcd0IVMg0oWKcDLxZqolmsP3Ns+cC1eix7TMk2B/1g377zgGeJaByDfib
 tGymOAoaYv3yr/v92FdCHUFaW37DaZ7ARFElDKWqSBGJtj//OOcTik6X79dA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=KTqecIsN+rZ/r5vRTPXwhG2Fjp/tipSlLDdfMKYcgLM=;
 b=f94Wfd7xAB1tMy6calf6l5p3x+2in7DyzsV50yDKB7taURdsPaCM2OydY1fFaru/ZW
 GjJIt1JF0yieLkvcBlF4pMte8sdTYkDdvEAsIZ7RUdwd9PufKMe5RpGZe3MTKJDT6pI8
 HpvD4dvO90+mj+6aFpo4NQqtgUTesDjf+bmbw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=f94Wfd7x
Subject: [Intel-wired-lan] [PATCH v2 15/16] mm: Make ksize() a
 reporting-only function
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
 Eric Dumazet <edumazet@google.com>, Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 kasan-dev@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Konovalov <andreyknvl@gmail.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

With all "silently resizing" callers of ksize() refactored, remove the
logic in ksize() that would allow it to be used to effectively change
the size of an allocation (bypassing __alloc_size hints, etc). Users
wanting this feature need to either use kmalloc_size_roundup() before an
allocation, or call krealloc() directly.

For kfree_sensitive(), move the unpoisoning logic inline. Replace the
open-coded ksize() in __do_krealloc with ksize() now that it doesn't
perform unpoisoning.

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrey Konovalov <andreyknvl@gmail.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-mm@kvack.org
Cc: kasan-dev@googlegroups.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 mm/slab_common.c | 38 ++++++++++++++------------------------
 1 file changed, 14 insertions(+), 24 deletions(-)

diff --git a/mm/slab_common.c b/mm/slab_common.c
index d7420cf649f8..60b77bcdc2e3 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -1160,13 +1160,8 @@ __do_krealloc(const void *p, size_t new_size, gfp_t flags)
 	void *ret;
 	size_t ks;
 
-	/* Don't use instrumented ksize to allow precise KASAN poisoning. */
-	if (likely(!ZERO_OR_NULL_PTR(p))) {
-		if (!kasan_check_byte(p))
-			return NULL;
-		ks = kfence_ksize(p) ?: __ksize(p);
-	} else
-		ks = 0;
+	/* How large is the allocation actually? */
+	ks = ksize(p);
 
 	/* If the object still fits, repoison it precisely. */
 	if (ks >= new_size) {
@@ -1232,8 +1227,10 @@ void kfree_sensitive(const void *p)
 	void *mem = (void *)p;
 
 	ks = ksize(mem);
-	if (ks)
+	if (ks) {
+		kasan_unpoison_range(mem, ks);
 		memzero_explicit(mem, ks);
+	}
 	kfree(mem);
 }
 EXPORT_SYMBOL(kfree_sensitive);
@@ -1242,10 +1239,11 @@ EXPORT_SYMBOL(kfree_sensitive);
  * ksize - get the actual amount of memory allocated for a given object
  * @objp: Pointer to the object
  *
- * kmalloc may internally round up allocations and return more memory
+ * kmalloc() may internally round up allocations and return more memory
  * than requested. ksize() can be used to determine the actual amount of
- * memory allocated. The caller may use this additional memory, even though
- * a smaller amount of memory was initially specified with the kmalloc call.
+ * allocated memory. The caller may NOT use this additional memory, unless
+ * it calls krealloc(). To avoid an alloc/realloc cycle, callers can use
+ * kmalloc_size_roundup() to find the size of the associated kmalloc bucket.
  * The caller must guarantee that objp points to a valid object previously
  * allocated with either kmalloc() or kmem_cache_alloc(). The object
  * must not be freed during the duration of the call.
@@ -1254,13 +1252,11 @@ EXPORT_SYMBOL(kfree_sensitive);
  */
 size_t ksize(const void *objp)
 {
-	size_t size;
-
 	/*
-	 * We need to first check that the pointer to the object is valid, and
-	 * only then unpoison the memory. The report printed from ksize() is
-	 * more useful, then when it's printed later when the behaviour could
-	 * be undefined due to a potential use-after-free or double-free.
+	 * We need to first check that the pointer to the object is valid.
+	 * The KASAN report printed from ksize() is more useful, then when
+	 * it's printed later when the behaviour could be undefined due to
+	 * a potential use-after-free or double-free.
 	 *
 	 * We use kasan_check_byte(), which is supported for the hardware
 	 * tag-based KASAN mode, unlike kasan_check_read/write().
@@ -1274,13 +1270,7 @@ size_t ksize(const void *objp)
 	if (unlikely(ZERO_OR_NULL_PTR(objp)) || !kasan_check_byte(objp))
 		return 0;
 
-	size = kfence_ksize(objp) ?: __ksize(objp);
-	/*
-	 * We assume that ksize callers could use whole allocated area,
-	 * so we need to unpoison this area.
-	 */
-	kasan_unpoison_range(objp, size);
-	return size;
+	return kfence_ksize(objp) ?: __ksize(objp);
 }
 EXPORT_SYMBOL(ksize);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
