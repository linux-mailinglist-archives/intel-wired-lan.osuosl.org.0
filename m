Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1995E838B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:28:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F382D842A3;
	Fri, 23 Sep 2022 20:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F382D842A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964934;
	bh=rGl3+fkYx80QhlTh7jQK8q2sdH8aSh3mXv5dsdRnPsY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NgnGvPZshtpdEroEPyUi/uSwtI7LwGG7RL8SU+vybe8/cpPRGjhYDn/9tmlSke/PC
	 i1Kw6ov8egEhgUzex3p9Iix75L2xwVO3JXFuPfrPMWYXgqKVxARXLWFgJjSAIYjmEK
	 ZG4CJZ/Zt493I0mu0NhmurrZJWpfUCq75x+tfU9h5NL0IHlS7qiukmq4D50fcNUe0N
	 tMnSHXDIQ1rstxYUyAPyjmIfXsF59eZyGD0Q4mJCKFBAv+p0/auAoEr7+Agn7HSQ74
	 HEfZlQpKS6g5vt+2qb5cIpgZAwIWpZ0q+tBJWZvIWnkYHQEFhvQdYPBJmJEbFrGjU3
	 8MoeUufX+V9eQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-BngD8IlAst; Fri, 23 Sep 2022 20:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69A18812E7;
	Fri, 23 Sep 2022 20:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69A18812E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 306DE1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16AB96059F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16AB96059F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QG9EdTHGewdt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9C0C60ADA
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9C0C60ADA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:26 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 q15-20020a17090a304f00b002002ac83485so1313640pjl.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=eujrtSGOq59jOTSlMyMtJHMRMoZFoV7+aKKL9WahR+Y=;
 b=YIqTyaYORnKrKmR/wl6TWMrwbaw1XBZ/zic4TmwV9/win9d2/U4Gwyd1ofLw+oi217
 7lz1h01KmZ6EKoCTr85gSBxZqFgMKKGFxywDmmDeenWcecOtwFj8bydJGMPymTcAvm/W
 erfSVVVIX8ff4FlccHSlPMcrOpDQL0mWHXZa1bkwxgG4woFoNHaVnXLoPpFSWYYeVi9g
 MiMKwQUw+0uBOwLqnfavYrAqy7gknCEta2kTE2/G1EawC7JeyE0BTaoYsUX5WvU6dN9G
 f1RVxebW3iH+sXWANz/MvADP3FrkGW02Wl752HEpk58wALFKuS6KIpdholARp99ADOoL
 pt1w==
X-Gm-Message-State: ACrzQf0ugBYrlac+l0j9up7k3xQ8kpXjfMPxpvN7u4lDR74SONAdFSiX
 rCn57Nvi/QT7/XszoL5Waq0q/w==
X-Google-Smtp-Source: AMsMyM4arELcwEhiFv6uNVRK1EaBx84nve4igHInBCGM2aOxeYsKhiPbrVjYcaijK4hZz+7Wtmnbxw==
X-Received: by 2002:a17:90b:3752:b0:200:b29b:f592 with SMTP id
 ne18-20020a17090b375200b00200b29bf592mr11404886pjb.81.1663964906237; 
 Fri, 23 Sep 2022 13:28:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 i4-20020a626d04000000b0054a1534516dsm6997283pfc.97.2022.09.23.13.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:08 -0700
Message-Id: <20220923202822.2667581-3-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7107; h=from:subject;
 bh=ctoECA+6FJaPyb38XvF9+OFYpV5OXgZbVo3ZPutoUjY=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbjUYOOZ7bQgh4tD/x26R+LVBeSKkGK0b8hyrFm
 j130NpWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W4wAKCRCJcvTf3G3AJtXaEA
 CKrYiDUN4IYzrCIGMgThdl68WEcVnsfmsISajqW1pS1PpX/7csAs7zEHuc4aiHGOuiIaH+DJHpGfLL
 DIL3lxVEdV+ODoDczAW/2FdIZ+iI9vim+KLP/kWkBUaUFFii75vz9kvknS3mWn5P11TwKPGqi/W2P4
 uEtng14BAapuZT0Q7tQ9SxpB1Y777eEGYvXOm9tw3vdOrDfUOD9EznvADwMu3Ry8C+wkCtnvE5BCdT
 Ebka8l0Kp8EOUqK+zPLzQCpp6ko0d8pfn+rEaQGghCKzjukSnrBv50BDTJhgU4I96egmD/O5x6utBl
 VMd9cHrXpoQX1m8qm7tBXnfpmU84bA+22D2ZBUwR1zOMuSWS+G2rmlY8u5bGvkll3WPwXmcrvjkueA
 P0yJVtSOapf50Df2ug7tk4aXVQ1t3A1rAvlW+zUEb5wvC8dUUS91TN5obYVzkRJHH3j0jx+IjUThl3
 UJnUD9or3++iRNE8vEGAUq0dJiwDAxt/TBRqbs+/ING+aPt3aEHmJHFbwwZ/tkUtc+pG98uuIomqcP
 frdsPLeoYkdNyoTUZrYCgmUK/g8uT6s+SyM7hlZmzyJmSx5zhZ2ieM1ayHGui9Q5DH+w0ZZiYhmD15
 k5ZMDJwqUzCSVlUY+Z8dRljudxu8GLQFuP07VbLhhHRLERwMtuGVAY3oFr0A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=eujrtSGOq59jOTSlMyMtJHMRMoZFoV7+aKKL9WahR+Y=;
 b=k4UX3TCq1IIsSInyemqFsmh0WiCy1eONpqV6WBGxZOR4dzhiLq2Vz0kHlsMvoPHk21
 PqPMhE0urE8JD1PtTXSL5tC7rmO6ToYRGxo5SlhGZBhYNFB788EhnZRkgoATYMEx3h/T
 hPotEfYpuuB9+pAHdhqWiFVdKm1koPQoMd3VI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=k4UX3TCq
Subject: [Intel-wired-lan] [PATCH v2 02/16] slab: Introduce
 kmalloc_size_roundup()
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

In the effort to help the compiler reason about buffer sizes, the
__alloc_size attribute was added to allocators. This improves the scope
of the compiler's ability to apply CONFIG_UBSAN_BOUNDS and (in the near
future) CONFIG_FORTIFY_SOURCE. For most allocations, this works well,
as the vast majority of callers are not expecting to use more memory
than what they asked for.

There is, however, one common exception to this: anticipatory resizing
of kmalloc allocations. These cases all use ksize() to determine the
actual bucket size of a given allocation (e.g. 128 when 126 was asked
for). This comes in two styles in the kernel:

1) An allocation has been determined to be too small, and needs to be
   resized. Instead of the caller choosing its own next best size, it
   wants to minimize the number of calls to krealloc(), so it just uses
   ksize() plus some additional bytes, forcing the realloc into the next
   bucket size, from which it can learn how large it is now. For example:

	data = krealloc(data, ksize(data) + 1, gfp);
	data_len = ksize(data);

2) The minimum size of an allocation is calculated, but since it may
   grow in the future, just use all the space available in the chosen
   bucket immediately, to avoid needing to reallocate later. A good
   example of this is skbuff's allocators:

	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
	...
	/* kmalloc(size) might give us more room than requested.
	 * Put skb_shared_info exactly at the end of allocated zone,
	 * to allow max possible filling before reallocation.
	 */
	osize = ksize(data);
        size = SKB_WITH_OVERHEAD(osize);

In both cases, the "how much was actually allocated?" question is answered
_after_ the allocation, where the compiler hinting is not in an easy place
to make the association any more. This mismatch between the compiler's
view of the buffer length and the code's intention about how much it is
going to actually use has already caused problems[1]. It is possible to
fix this by reordering the use of the "actual size" information.

We can serve the needs of users of ksize() and still have accurate buffer
length hinting for the compiler by doing the bucket size calculation
_before_ the allocation. Code can instead ask "how large an allocation
would I get for a given size?".

Introduce kmalloc_size_roundup(), to serve this function so we can start
replacing the "anticipatory resizing" uses of ksize().

[1] https://github.com/ClangBuiltLinux/linux/issues/1599
    https://github.com/KSPP/linux/issues/183

Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/slab.h | 31 +++++++++++++++++++++++++++++++
 mm/slab.c            |  9 ++++++---
 mm/slab_common.c     | 20 ++++++++++++++++++++
 3 files changed, 57 insertions(+), 3 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 41bd036e7551..727640173568 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -188,7 +188,21 @@ void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __r
 void kfree(const void *objp);
 void kfree_sensitive(const void *objp);
 size_t __ksize(const void *objp);
+
+/**
+ * ksize - Report actual allocation size of associated object
+ *
+ * @objp: Pointer returned from a prior kmalloc()-family allocation.
+ *
+ * This should not be used for writing beyond the originally requested
+ * allocation size. Either use krealloc() or round up the allocation size
+ * with kmalloc_size_roundup() prior to allocation. If this is used to
+ * access beyond the originally requested allocation size, UBSAN_BOUNDS
+ * and/or FORTIFY_SOURCE may trip, since they only know about the
+ * originally allocated size via the __alloc_size attribute.
+ */
 size_t ksize(const void *objp);
+
 #ifdef CONFIG_PRINTK
 bool kmem_valid_obj(void *object);
 void kmem_dump_obj(void *object);
@@ -779,6 +793,23 @@ extern void kvfree(const void *addr);
 extern void kvfree_sensitive(const void *addr, size_t len);
 
 unsigned int kmem_cache_size(struct kmem_cache *s);
+
+/**
+ * kmalloc_size_roundup - Report allocation bucket size for the given size
+ *
+ * @size: Number of bytes to round up from.
+ *
+ * This returns the number of bytes that would be available in a kmalloc()
+ * allocation of @size bytes. For example, a 126 byte request would be
+ * rounded up to the next sized kmalloc bucket, 128 bytes. (This is strictly
+ * for the general-purpose kmalloc()-based allocations, and is not for the
+ * pre-sized kmem_cache_alloc()-based allocations.)
+ *
+ * Use this to kmalloc() the full bucket size ahead of time instead of using
+ * ksize() to query the size after an allocation.
+ */
+size_t kmalloc_size_roundup(size_t size);
+
 void __init kmem_cache_init_late(void);
 
 #if defined(CONFIG_SMP) && defined(CONFIG_SLAB)
diff --git a/mm/slab.c b/mm/slab.c
index 10e96137b44f..2da862bf6226 100644
--- a/mm/slab.c
+++ b/mm/slab.c
@@ -4192,11 +4192,14 @@ void __check_heap_object(const void *ptr, unsigned long n,
 #endif /* CONFIG_HARDENED_USERCOPY */
 
 /**
- * __ksize -- Uninstrumented ksize.
+ * __ksize -- Report full size of underlying allocation
  * @objp: pointer to the object
  *
- * Unlike ksize(), __ksize() is uninstrumented, and does not provide the same
- * safety checks as ksize() with KASAN instrumentation enabled.
+ * This should only be used internally to query the true size of allocations.
+ * It is not meant to be a way to discover the usable size of an allocation
+ * after the fact. Instead, use kmalloc_size_roundup(). Using memory beyond
+ * the originally requested allocation size may trigger KASAN, UBSAN_BOUNDS,
+ * and/or FORTIFY_SOURCE.
  *
  * Return: size of the actual memory used by @objp in bytes
  */
diff --git a/mm/slab_common.c b/mm/slab_common.c
index 457671ace7eb..d7420cf649f8 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -721,6 +721,26 @@ struct kmem_cache *kmalloc_slab(size_t size, gfp_t flags)
 	return kmalloc_caches[kmalloc_type(flags)][index];
 }
 
+size_t kmalloc_size_roundup(size_t size)
+{
+	struct kmem_cache *c;
+
+	/* Short-circuit the 0 size case. */
+	if (unlikely(size == 0))
+		return 0;
+	/* Short-circuit saturated "too-large" case. */
+	if (unlikely(size == SIZE_MAX))
+		return SIZE_MAX;
+	/* Above the smaller buckets, size is a multiple of page size. */
+	if (size > KMALLOC_MAX_CACHE_SIZE)
+		return PAGE_SIZE << get_order(size);
+
+	/* The flags don't matter since size_index is common to all. */
+	c = kmalloc_slab(size, GFP_KERNEL);
+	return c ? c->object_size : 0;
+}
+EXPORT_SYMBOL(kmalloc_size_roundup);
+
 #ifdef CONFIG_ZONE_DMA
 #define KMALLOC_DMA_NAME(sz)	.name[KMALLOC_DMA] = "dma-kmalloc-" #sz,
 #else
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
