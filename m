Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1675B5EA6E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 15:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22C0960F9B;
	Mon, 26 Sep 2022 13:15:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22C0960F9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664198135;
	bh=eJZwgw/qvO78C2JIKwgoOPmVMoOMQQ6OozFsvtXHj9g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kyY65Wt49TsXF/15alHaI0ObHms5s5h3uO7Bq4lx8wFf84diICXnN1WSdiOkYMN2F
	 ACsqjD4bn3NVTLanDolnDnr1dNm2tkpRVSN+Ekk4KeWCxgGYWRl8s0Cdj7pyioYrBO
	 VJ1u/5z7yqxAdmICo+BQouq5TQSqe6qqfOUfpIJ5Jkd1ROAgb3ZB7AKXUGpi5CAzGv
	 z0kucmkWK6FU52z31H0mQ/Je+9MmtpZ8exiY7Im06DUvrajunMElpfmMMcu0rqlM/4
	 GUQHeyA0CKVpBttFWPUFYt7R+SgyF7McRpJvAOdwIlLh5cyNi1cWm5LlZbJXq5h3yd
	 XCd+Yzl8q7h5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUT_WBoKxTg9; Mon, 26 Sep 2022 13:15:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCF3860F98;
	Mon, 26 Sep 2022 13:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCF3860F98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 075351BF345
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 13:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2ADD60F72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 13:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2ADD60F72
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wADR0ANmScjl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 13:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 982D560672
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 982D560672
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 13:15:26 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id A1F231F9B0;
 Mon, 26 Sep 2022 13:15:23 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DD79213486;
 Mon, 26 Sep 2022 13:15:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id d5MSNeqlMWPkZgAAMHmgww
 (envelope-from <vbabka@suse.cz>); Mon, 26 Sep 2022 13:15:22 +0000
Message-ID: <e0326835-9b0d-af1b-bd22-2aadb178bd25@suse.cz>
Date: Mon, 26 Sep 2022 15:15:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Kees Cook <keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-3-keescook@chromium.org>
Content-Language: en-US
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <20220923202822.2667581-3-keescook@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1664198123; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SUnm6fFN7Cbco4Ciib9Dp4ei7l6IMJGpVSBxC1Y2qbA=;
 b=GINR8720H7FRt/NwnAThMXKadZ/jHetEfHQabCeHjYvJC0Ay/N/yrY4L2IA45c9LoMhZCZ
 /uLFla1qp4N9dJxKYjP0KHnNnh00SxZWxr/BsVxiaGxK30LOcRDuqFnj7IDPt4SRjkUrrL
 EsXkiYJ7NpGujiE2BPJ/t1EnWDNjjQs=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1664198123;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SUnm6fFN7Cbco4Ciib9Dp4ei7l6IMJGpVSBxC1Y2qbA=;
 b=KgFpOhA7zTvFQoSfllErNdLrjLXyakGagE2DCW1UZbzMn8KUX2NJflS9dN3YuGifvDT+Zb
 Y/3YCIzKAg7vORDA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=GINR8720; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=KgFpOhA7
Subject: Re: [Intel-wired-lan] [PATCH v2 02/16] slab: Introduce
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
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/23/22 22:28, Kees Cook wrote:
> In the effort to help the compiler reason about buffer sizes, the
> __alloc_size attribute was added to allocators. This improves the scope
> of the compiler's ability to apply CONFIG_UBSAN_BOUNDS and (in the near
> future) CONFIG_FORTIFY_SOURCE. For most allocations, this works well,
> as the vast majority of callers are not expecting to use more memory
> than what they asked for.
> 
> There is, however, one common exception to this: anticipatory resizing
> of kmalloc allocations. These cases all use ksize() to determine the
> actual bucket size of a given allocation (e.g. 128 when 126 was asked
> for). This comes in two styles in the kernel:
> 
> 1) An allocation has been determined to be too small, and needs to be
>     resized. Instead of the caller choosing its own next best size, it
>     wants to minimize the number of calls to krealloc(), so it just uses
>     ksize() plus some additional bytes, forcing the realloc into the next
>     bucket size, from which it can learn how large it is now. For example:
> 
> 	data = krealloc(data, ksize(data) + 1, gfp);
> 	data_len = ksize(data);
> 
> 2) The minimum size of an allocation is calculated, but since it may
>     grow in the future, just use all the space available in the chosen
>     bucket immediately, to avoid needing to reallocate later. A good
>     example of this is skbuff's allocators:
> 
> 	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
> 	...
> 	/* kmalloc(size) might give us more room than requested.
> 	 * Put skb_shared_info exactly at the end of allocated zone,
> 	 * to allow max possible filling before reallocation.
> 	 */
> 	osize = ksize(data);
>          size = SKB_WITH_OVERHEAD(osize);
> 
> In both cases, the "how much was actually allocated?" question is answered
> _after_ the allocation, where the compiler hinting is not in an easy place
> to make the association any more. This mismatch between the compiler's
> view of the buffer length and the code's intention about how much it is
> going to actually use has already caused problems[1]. It is possible to
> fix this by reordering the use of the "actual size" information.
> 
> We can serve the needs of users of ksize() and still have accurate buffer
> length hinting for the compiler by doing the bucket size calculation
> _before_ the allocation. Code can instead ask "how large an allocation
> would I get for a given size?".
> 
> Introduce kmalloc_size_roundup(), to serve this function so we can start
> replacing the "anticipatory resizing" uses of ksize().
> 
> [1] https://github.com/ClangBuiltLinux/linux/issues/1599
>      https://github.com/KSPP/linux/issues/183
> 
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Christoph Lameter <cl@linux.com>
> Cc: Pekka Enberg <penberg@kernel.org>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

OK, added patch 1+2 to slab.git for-next branch.
Had to adjust this one a bit, see below.

> ---
>   include/linux/slab.h | 31 +++++++++++++++++++++++++++++++
>   mm/slab.c            |  9 ++++++---
>   mm/slab_common.c     | 20 ++++++++++++++++++++
>   3 files changed, 57 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 41bd036e7551..727640173568 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -188,7 +188,21 @@ void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __r
>   void kfree(const void *objp);
>   void kfree_sensitive(const void *objp);
>   size_t __ksize(const void *objp);
> +
> +/**
> + * ksize - Report actual allocation size of associated object
> + *
> + * @objp: Pointer returned from a prior kmalloc()-family allocation.
> + *
> + * This should not be used for writing beyond the originally requested
> + * allocation size. Either use krealloc() or round up the allocation size
> + * with kmalloc_size_roundup() prior to allocation. If this is used to
> + * access beyond the originally requested allocation size, UBSAN_BOUNDS
> + * and/or FORTIFY_SOURCE may trip, since they only know about the
> + * originally allocated size via the __alloc_size attribute.
> + */
>   size_t ksize(const void *objp);
> +
>   #ifdef CONFIG_PRINTK
>   bool kmem_valid_obj(void *object);
>   void kmem_dump_obj(void *object);
> @@ -779,6 +793,23 @@ extern void kvfree(const void *addr);
>   extern void kvfree_sensitive(const void *addr, size_t len);
>   
>   unsigned int kmem_cache_size(struct kmem_cache *s);
> +
> +/**
> + * kmalloc_size_roundup - Report allocation bucket size for the given size
> + *
> + * @size: Number of bytes to round up from.
> + *
> + * This returns the number of bytes that would be available in a kmalloc()
> + * allocation of @size bytes. For example, a 126 byte request would be
> + * rounded up to the next sized kmalloc bucket, 128 bytes. (This is strictly
> + * for the general-purpose kmalloc()-based allocations, and is not for the
> + * pre-sized kmem_cache_alloc()-based allocations.)
> + *
> + * Use this to kmalloc() the full bucket size ahead of time instead of using
> + * ksize() to query the size after an allocation.
> + */
> +size_t kmalloc_size_roundup(size_t size);
> +
>   void __init kmem_cache_init_late(void);
>   
>   #if defined(CONFIG_SMP) && defined(CONFIG_SLAB)
> diff --git a/mm/slab.c b/mm/slab.c
> index 10e96137b44f..2da862bf6226 100644
> --- a/mm/slab.c
> +++ b/mm/slab.c
> @@ -4192,11 +4192,14 @@ void __check_heap_object(const void *ptr, unsigned long n,
>   #endif /* CONFIG_HARDENED_USERCOPY */
>   
>   /**
> - * __ksize -- Uninstrumented ksize.
> + * __ksize -- Report full size of underlying allocation
>    * @objp: pointer to the object
>    *
> - * Unlike ksize(), __ksize() is uninstrumented, and does not provide the same
> - * safety checks as ksize() with KASAN instrumentation enabled.
> + * This should only be used internally to query the true size of allocations.
> + * It is not meant to be a way to discover the usable size of an allocation
> + * after the fact. Instead, use kmalloc_size_roundup(). Using memory beyond
> + * the originally requested allocation size may trigger KASAN, UBSAN_BOUNDS,
> + * and/or FORTIFY_SOURCE.
>    *
>    * Return: size of the actual memory used by @objp in bytes
>    */
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index 457671ace7eb..d7420cf649f8 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -721,6 +721,26 @@ struct kmem_cache *kmalloc_slab(size_t size, gfp_t flags)
>   	return kmalloc_caches[kmalloc_type(flags)][index];
>   }
>   
> +size_t kmalloc_size_roundup(size_t size)
> +{
> +	struct kmem_cache *c;
> +
> +	/* Short-circuit the 0 size case. */
> +	if (unlikely(size == 0))
> +		return 0;
> +	/* Short-circuit saturated "too-large" case. */
> +	if (unlikely(size == SIZE_MAX))
> +		return SIZE_MAX;
> +	/* Above the smaller buckets, size is a multiple of page size. */
> +	if (size > KMALLOC_MAX_CACHE_SIZE)
> +		return PAGE_SIZE << get_order(size);
> +
> +	/* The flags don't matter since size_index is common to all. */
> +	c = kmalloc_slab(size, GFP_KERNEL);
> +	return c ? c->object_size : 0;
> +}
> +EXPORT_SYMBOL(kmalloc_size_roundup);

We need a SLOB version too as it's not yet removed... I added this:

diff --git a/mm/slob.c b/mm/slob.c
index 2bd4f476c340..5dbdf6ad8bcc 100644
--- a/mm/slob.c
+++ b/mm/slob.c
@@ -574,6 +574,20 @@ void kfree(const void *block)
  }
  EXPORT_SYMBOL(kfree);
  
+size_t kmalloc_size_roundup(size_t size)
+{
+       /* Short-circuit the 0 size case. */
+       if (unlikely(size == 0))
+               return 0;
+       /* Short-circuit saturated "too-large" case. */
+       if (unlikely(size == SIZE_MAX))
+               return SIZE_MAX;
+
+       return ALIGN(size, ARCH_KMALLOC_MINALIGN);
+}
+
+EXPORT_SYMBOL(kmalloc_size_roundup);
+
  /* can't use ksize for kmem_cache_alloc memory, only kmalloc */
  size_t __ksize(const void *block)
  {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
