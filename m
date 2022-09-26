Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D187A5EAFB7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 20:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C929E82F4A;
	Mon, 26 Sep 2022 18:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C929E82F4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664216687;
	bh=Af7k041I3JcI+kGy2AgcJN171vvxAGd+Is/7KswbjLU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6gDDbZOxV5T3aISlLbH1uacXcX5igFzVLJc6kkltRSJKpSGIkOg32jAjKgI7os5mf
	 wz541iySLGsNlBxST0I6zyfPtSOtRJ1GeuVI1+JZ1GaYYEvJ2N8Wa52pbxGaye0htC
	 IeTANdUvO9DepOOxEv6b/E02O2J3GUKXeYKs42xKuGxUED75qy7O5gZU14CS2m493S
	 pLBWLVPCKj8Zkb1vf55RqmB+5PHni8xR3Ys44fmRffH72VbR6TIiPRwpDvbgo84INP
	 2JPEmeXWEmw6TcYkrRVFvyv6fHfST2//wtp8l+2MOYdAnr7TY2v6ddnrv+fUMQjTQW
	 X+nlTE1tUifqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwbMWhWUrugf; Mon, 26 Sep 2022 18:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99BBD81756;
	Mon, 26 Sep 2022 18:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99BBD81756
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F60B1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 18:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32CF741878
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 18:24:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32CF741878
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KRIvCrsrizHl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 18:24:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFE5C41827
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BFE5C41827
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 18:24:39 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id e68so7550528pfe.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 11:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=4OBTQRXHJygCpY/2rBSvNKQlNNozBBa3mtJlOeJ/EyY=;
 b=quBEDySDtANxEAYaI1a4uOQFrUr6I3BIHkzP/8F+DhoQ1eFeV++D94M+AZnVBLsqKz
 s98Zz0N1+Ami6JoA+ENCjbKmw3lyBxS3FRALIRdfHWY8SSDsuTNdKHAHAPfwNrf20pjs
 bwywqDcjPhlelqFIXH0pJ492Phffq1ta2LvTC9f+D/6+fWNjHLmvDbf8kxraMMBJRs8t
 r6TIeHTFNdiWYEnwaVt7Qot9PjV2y5frZFEN5SC4O5zKlhPeSVAwVNSB6iD3Pmg2K2qb
 YXk1IYrN5Ryj/IA+BrQHqlJV/Hyv5lFx/vCLAcXzsxxQWA63Zto+SpNdQrOb1M1fACgd
 QoOQ==
X-Gm-Message-State: ACrzQf1yWYQe/RiN421B8TELOEtKMN4Dfl64FlL+gG/ox7jnGcg3fM7V
 jdlULTm+feDkeKudI3P4Mv9AUw==
X-Google-Smtp-Source: AMsMyM6gzz3RlLPDBF6eEAacYBSNNxOrYYdXLeQNzcYYWROPiLY1NScn4aUnW3BZuZbnjPt9v5tgLQ==
X-Received: by 2002:a63:4750:0:b0:43c:dac:9e4b with SMTP id
 w16-20020a634750000000b0043c0dac9e4bmr21137736pgk.300.1664216679159; 
 Mon, 26 Sep 2022 11:24:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 p2-20020a170902c70200b0016f85feae65sm11305644plp.87.2022.09.26.11.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Sep 2022 11:24:38 -0700 (PDT)
Date: Mon, 26 Sep 2022 11:24:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <202209261123.B2CBAE87E0@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-14-keescook@chromium.org>
 <f4fc52c4-7c18-1d76-0c7a-4058ea2486b9@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4fc52c4-7c18-1d76-0c7a-4058ea2486b9@suse.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=4OBTQRXHJygCpY/2rBSvNKQlNNozBBa3mtJlOeJ/EyY=;
 b=cSzvTXKu85TucB7q+g9CQdjC/FdnYJW7ESEBDVMDQZhpqkoHzMT6tB5vmqaaVmtq+c
 HBo/BI5kdAn7jf+xxq5MiOLWI7cJumnHX29hS+SWLXo9wgZxYqgGZ4IjXwCG6/+UPFiS
 mSjP6/8kEubWj+KXOsoeUGGJwGHBMRMvzL4Ek=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=cSzvTXKu
Subject: Re: [Intel-wired-lan] [PATCH v2 13/16] mempool: Use
 kmalloc_size_roundup() to match ksize() usage
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
 Andrew Morton <akpm@linux-foundation.org>, Alex Elder <elder@kernel.org>,
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

On Mon, Sep 26, 2022 at 03:50:43PM +0200, Vlastimil Babka wrote:
> On 9/23/22 22:28, Kees Cook wrote:
> > Round up allocations with kmalloc_size_roundup() so that mempool's use
> > of ksize() is always accurate and no special handling of the memory is
> > needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.
> > 
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: linux-mm@kvack.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >   mm/mempool.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/mm/mempool.c b/mm/mempool.c
> > index 96488b13a1ef..0f3107b28e6b 100644
> > --- a/mm/mempool.c
> > +++ b/mm/mempool.c
> > @@ -526,7 +526,7 @@ EXPORT_SYMBOL(mempool_free_slab);
> >    */
> >   void *mempool_kmalloc(gfp_t gfp_mask, void *pool_data)
> >   {
> > -	size_t size = (size_t)pool_data;
> > +	size_t size = kmalloc_size_roundup((size_t)pool_data);
> 
> Hm it is kinda wasteful to call into kmalloc_size_roundup for every
> allocation that has the same input. We could do it just once in
> mempool_init_node() for adjusting pool->pool_data ?
> 
> But looking more closely, I wonder why poison_element() and
> kasan_unpoison_element() in mm/mempool.c even have to use ksize()/__ksize()
> and not just operate on the requested size (again, pool->pool_data). If no
> kmalloc mempool's users use ksize() to write beyond requested size, then we
> don't have to unpoison/poison that area either?

Yeah, I think that's a fair point. I will adjust this.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
