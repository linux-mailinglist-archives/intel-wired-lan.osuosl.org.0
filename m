Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2465F318A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Oct 2022 15:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CB4E81419;
	Mon,  3 Oct 2022 13:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CB4E81419
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664805233;
	bh=epExBJQUu0Jfqy9esaF37bLeXLsBOQged9f0qwAiLX0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eP7yOnuujurnSGsCvZnxL8QIRPKc2utcMdxfW9ziKFw0uK3v9v3jEZN/K0id8fudU
	 7HfngRgmg9kN8j9IRfwGwFYJJ2XoAe/eCHwXROeu3Z37qy3U35tUtNAWGuWABoHltz
	 iZexBBNNKRFwJc8wP39yvOOc2ZFyrj+p5mD8euF4q0DXlF+FGCJornhW/gAlhOdDBp
	 BRaOuwIGxZVtm4LkUkN769SG3g5rPU4lXtWZujstoydCZK7BNFSiaksPVQDerlmQh1
	 Ed+ZhXezzKKTN+e2expeMnBT9zbeJdRP4RR/HadCD2JbkSLNEe+PB74NZDdVPSpt+H
	 vv76XNY0Bg/nQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T8O2KWgBkTHX; Mon,  3 Oct 2022 13:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11298812D9;
	Mon,  3 Oct 2022 13:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11298812D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D33601BF59C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Oct 2022 16:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACFC060E81
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Oct 2022 16:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACFC060E81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZ2TV10lsu4E for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Oct 2022 16:10:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB34C60E7A
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB34C60E7A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Oct 2022 16:10:00 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id w20so6346837ply.12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 01 Oct 2022 09:10:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=ZFt50GDqlKIYM4l8mECHUWC3f4w34q3ItwBbk2NFmik=;
 b=nA+LhctcWdCt3C+HOjFvOrp0ufmWm4glV/2q/4ZVZ7NbYKZibcj+5cZ8/0hXzpdmq/
 6oPTxMEidq5xGrfIMMPhOiTkMIlyA7xSKa2/kvdFu21R+4eSFTc5pTBavJdnlicbpA3G
 MF9NHI0W9you2XL8NjV/BVb/9Rf1Ht4hgZCfByueZyOAd2J6wsy1yVBgPhkZ8B9U8cIh
 WhnKgKBC50GjGGqzGor//Y6uANOfY1h/b48OXwf3L/iCB5VvKXnsdkhk70yuMYMrVJgT
 tx8wSVj0S5hMz7IMYyhet+HihdjNhMOg57gBbvGvZFDyGx0tM5a+50vJAi62UN8bCL/A
 b4EA==
X-Gm-Message-State: ACrzQf2O2LHrczEAP6CTFB4JQ6n/JxAnxnVPHkkAJxeMyMYomJIZcnMT
 oGqoZvSs1uzoodU8pzhjUnc=
X-Google-Smtp-Source: AMsMyM4LFEW8r3bJhaCxZm3hZ+BJ6mFgt6vMylhuSPGZuSYFmA+LZrM5m1U3puB9ewICj0JZLSgwTQ==
X-Received: by 2002:a17:903:246:b0:179:96b5:1ad2 with SMTP id
 j6-20020a170903024600b0017996b51ad2mr14161925plh.37.1664640600299; 
 Sat, 01 Oct 2022 09:10:00 -0700 (PDT)
Received: from hyeyoo ([114.29.91.56]) by smtp.gmail.com with ESMTPSA id
 y9-20020a17090a474900b0020a28156e11sm3000108pjg.26.2022.10.01.09.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Oct 2022 09:09:59 -0700 (PDT)
Date: Sun, 2 Oct 2022 01:09:47 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <YzhmSxKFzOXhUZ2Z@hyeyoo>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220923202822.2667581-2-keescook@chromium.org>
X-Mailman-Approved-At: Mon, 03 Oct 2022 13:53:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=ZFt50GDqlKIYM4l8mECHUWC3f4w34q3ItwBbk2NFmik=;
 b=K3if3PVJ5bvcTJ9M0NPajRsS9R22PhUV8mt1DF9aSjhi92xxGX68nw1fQOdsnfeW88
 RYDbvN3GquD6aYJG58Lch5x17v+7Fbew3pLZMAkWt1+ooRJfi37RQADA2PXlVWpJ0CkC
 Tph9mkBw10QRI/4GlEXa2GIU/ewaCJw+Q5bhNbWEldyfKXsiimIOVSMffXQx+3tGU4Mj
 dJvzomia0B+Wj46FPagEpyfhrlYIDzrrtNbXqmnTPZIsHCWjn0Q7IxiKUPw+lNuqO8YW
 mhgisps0Go9/DKTKISmZAxZzmxBVutsjUNJDrnOyzW3IiQoFEADN8PzV+SFx5mJvo2bv
 Sq2A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=K3if3PVJ
Subject: Re: [Intel-wired-lan] [PATCH v2 01/16] slab: Remove __malloc
 attribute from realloc functions
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
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 llvm@lists.linux.dev, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 23, 2022 at 01:28:07PM -0700, Kees Cook wrote:
> The __malloc attribute should not be applied to "realloc" functions, as
> the returned pointer may alias the storage of the prior pointer. Instead
> of splitting __malloc from __alloc_size, which would be a huge amount of
> churn, just create __realloc_size for the few cases where it is needed.
> 
> Additionally removes the conditional test for __alloc_size__, which is
> always defined now.
> 
> Cc: Christoph Lameter <cl@linux.com>
> Cc: Pekka Enberg <penberg@kernel.org>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Roman Gushchin <roman.gushchin@linux.dev>
> Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>
> Cc: Marco Elver <elver@google.com>
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/compiler_types.h | 13 +++++--------
>  include/linux/slab.h           | 12 ++++++------
>  mm/slab_common.c               |  4 ++--
>  3 files changed, 13 insertions(+), 16 deletions(-)
> 
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 4f2a819fd60a..f141a6f6b9f6 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -271,15 +271,12 @@ struct ftrace_likely_data {
>  
>  /*
>   * Any place that could be marked with the "alloc_size" attribute is also
> - * a place to be marked with the "malloc" attribute. Do this as part of the
> - * __alloc_size macro to avoid redundant attributes and to avoid missing a
> - * __malloc marking.
> + * a place to be marked with the "malloc" attribute, except those that may
> + * be performing a _reallocation_, as that may alias the existing pointer.
> + * For these, use __realloc_size().
>   */
> -#ifdef __alloc_size__
> -# define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
> -#else
> -# define __alloc_size(x, ...)	__malloc
> -#endif
> +#define __alloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__) __malloc
> +#define __realloc_size(x, ...)	__alloc_size__(x, ## __VA_ARGS__)
>  
>  #ifndef asm_volatile_goto
>  #define asm_volatile_goto(x...) asm goto(x)
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 0fefdf528e0d..41bd036e7551 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -184,7 +184,7 @@ int kmem_cache_shrink(struct kmem_cache *s);
>  /*
>   * Common kmalloc functions provided by all allocators
>   */
> -void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __alloc_size(2);
> +void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __realloc_size(2);
>  void kfree(const void *objp);
>  void kfree_sensitive(const void *objp);
>  size_t __ksize(const void *objp);
> @@ -647,10 +647,10 @@ static inline __alloc_size(1, 2) void *kmalloc_array(size_t n, size_t size, gfp_
>   * @new_size: new size of a single member of the array
>   * @flags: the type of memory to allocate (see kmalloc)
>   */
> -static inline __alloc_size(2, 3) void * __must_check krealloc_array(void *p,
> -								    size_t new_n,
> -								    size_t new_size,
> -								    gfp_t flags)
> +static inline __realloc_size(2, 3) void * __must_check krealloc_array(void *p,
> +								      size_t new_n,
> +								      size_t new_size,
> +								      gfp_t flags)
>  {
>  	size_t bytes;
>  
> @@ -774,7 +774,7 @@ static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t fla
>  }
>  
>  extern void *kvrealloc(const void *p, size_t oldsize, size_t newsize, gfp_t flags)
> -		      __alloc_size(3);
> +		      __realloc_size(3);
>  extern void kvfree(const void *addr);
>  extern void kvfree_sensitive(const void *addr, size_t len);
>  
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index 17996649cfe3..457671ace7eb 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -1134,8 +1134,8 @@ module_init(slab_proc_init);
>  
>  #endif /* CONFIG_SLAB || CONFIG_SLUB_DEBUG */
>  
> -static __always_inline void *__do_krealloc(const void *p, size_t new_size,
> -					   gfp_t flags)
> +static __always_inline __realloc_size(2) void *
> +__do_krealloc(const void *p, size_t new_size, gfp_t flags)
>  {
>  	void *ret;
>  	size_t ks;
> -- 
> 2.34.1
> 

This is now squashed with later one. (so undefined __alloc_size__ issues are fixed)
for the latest version of this patch:

Looks good to me,
Acked-by: Hyeonggon Yoo <42.hyeyoo@gmail.com>

-- 
Thanks,
Hyeonggon
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
