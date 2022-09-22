Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB27B5E67CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 17:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C9D061141;
	Thu, 22 Sep 2022 15:57:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C9D061141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663862276;
	bh=hRJP6ArPihJwUl3HZpoUGW38TsDA16DMKclAeibhvQs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=udLYO6QdsTX1tDtANlhMl9z6XPJX7C7OMQppOkLvdwk4HG9ID0S4mh0gtEHiHWb6A
	 y8t4EWj0CRlgnhLR1G1xeew3QXUY5cwGSuFJrwo8lWy0GEqVeBcx+Pyl1guDZ1uvwb
	 SwCw5A2lIrCy5Qt8apiVsT0KDeVGao7qea6WBGRtBj3MtA79LNwqtJacyeIS2SJIEa
	 aQlfiS1p5K5far5lVdFlyoxTqliL3ytyggwwZSLrGu7rmX7CrvtIwMSnDIT9QghNEw
	 pO6AFESo5oJeaWVYRIUBY+hStEd7rImvRozI94xPrYB4xPz1Xp9Q6gGSq6e1/gd+DR
	 7Pa1JFLf2rGkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5b5Dd1rE1OpG; Thu, 22 Sep 2022 15:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B54356112B;
	Thu, 22 Sep 2022 15:57:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B54356112B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8F471BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A445D83F3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:57:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A445D83F3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NA6MUKgSeUtM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 15:57:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F194883F34
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F194883F34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:57:48 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id rt12so7759120pjb.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 08:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=DFca6W2geua6z8QZaei3L7obYL69ycUV+0eXMSxJFmM=;
 b=wgfCMaIQi8COivrclmIaNKO+LX2O5OwyKP+/1w/kv6IhOyLHJbLy0oSdL79Z9t0r/K
 ingawGdX6I8cO3XvWaYLgXmb4qx9LA8nUCzua3Pi5rIXXNvMxYwxcsMiX1dkOIyAl41k
 k5xtlYaw1SNkYI0CRsXcdCHa2geVz1yJzdjKTztbyJXeAOJbhCtzZUzF7INnAPch2Fkg
 6j4zn08dVu8h2RMWBFvzygTMWL9Y8SXJ1wem/+PnwZeO6oPqd3kV6NMzqvlPtJuZEera
 z7wjDPpOtztqCev8T0DV6EutlEUdt4Xf/qdHyK1p7qloYu6YGPk8G+uws1+HBNYnhD23
 LWzg==
X-Gm-Message-State: ACrzQf0IDHitb14M9RDFmYedeVQQBBtZZv+kt2ZaSfitEDMbmaDOg7Cg
 iFv2Ilskq6alOTFG2mq14NbMUw==
X-Google-Smtp-Source: AMsMyM4DbOcH8T52s44Y0t4Ur0sebk5QTw9RJNQKJ+FFAkxJV0gLFIOVmBX/n1oFJJpAp4+llFExqQ==
X-Received: by 2002:a17:902:e848:b0:176:c746:1f69 with SMTP id
 t8-20020a170902e84800b00176c7461f69mr3892270plg.125.1663862268452; 
 Thu, 22 Sep 2022 08:57:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 p63-20020a625b42000000b005367c28fd32sm4575617pfb.185.2022.09.22.08.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 08:57:47 -0700 (PDT)
Date: Thu, 22 Sep 2022 08:57:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Alex Elder <elder@ieee.org>
Message-ID: <202209220857.A6EBCF031E@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-4-keescook@chromium.org>
 <4d75a9fd-1b94-7208-9de8-5a0102223e68@ieee.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d75a9fd-1b94-7208-9de8-5a0102223e68@ieee.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=DFca6W2geua6z8QZaei3L7obYL69ycUV+0eXMSxJFmM=;
 b=jvl2IXIRx3EhOhhqaTOf5Lt+fk9xx9Irq6xcu/7k7oCaAudZivnlCg4zfyCIBsgQa9
 qBtVWGjfuRNfAqWNaj6IsSNxrO0lvCUNMMis5T9m3env78npe1AQYwW4n7mGlSRQHwQP
 cG9vbxRd7c25yIHtYw1xafxyLneU1vdiRP2x0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=jvl2IXIR
Subject: Re: [Intel-wired-lan] [PATCH 03/12] net: ipa: Proactively round up
 to kmalloc bucket size
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
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 08:45:19AM -0500, Alex Elder wrote:
> On 9/21/22 10:10 PM, Kees Cook wrote:
> > Instead of discovering the kmalloc bucket size _after_ allocation, round
> > up proactively so the allocation is explicitly made for the full size,
> > allowing the compiler to correctly reason about the resulting size of
> > the buffer through the existing __alloc_size() hint.
> > 
> > Cc: Alex Elder <elder@kernel.org>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Eric Dumazet <edumazet@google.com>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: Paolo Abeni <pabeni@redhat.com>
> > Cc: netdev@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >   drivers/net/ipa/gsi_trans.c | 7 +++++--
> >   1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ipa/gsi_trans.c b/drivers/net/ipa/gsi_trans.c
> > index 18e7e8c405be..cec968854dcf 100644
> > --- a/drivers/net/ipa/gsi_trans.c
> > +++ b/drivers/net/ipa/gsi_trans.c
> > @@ -89,6 +89,7 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
> >   			u32 max_alloc)
> >   {
> >   	void *virt;
> > +	size_t allocate;
> 
> I don't care about this but the reverse Christmas tree
> convention would put the "allocate" variable definition
> above "virt".

Oops, yes; thank you!

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
