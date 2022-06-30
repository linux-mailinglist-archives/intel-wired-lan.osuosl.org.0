Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC40561F20
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 17:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0702984633;
	Thu, 30 Jun 2022 15:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0702984633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656602480;
	bh=VMsEcmCqwQMGQwdTXvsysn7IchpjlSNvWeRe+f7OZAU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CnfrWhJSun6cXSFwz/m5fRtCwVsSeLdGF4c6idMElwtc7bbtzyR8k7PPeJt2c7PK0
	 Qcb0EhzZG+QrXBzoqM6htmKTxY4HVUcywOGIeW5iUC2IJo88glxZPcg+Won5w8UuBk
	 ViP0fF+EI6MDXeoyGvNs/Bk/Loc/JFFqOcSMN562hfjhROvsV/Ks6/OrCEvgLzCyxg
	 PzzdzjKQR5fCNReNmhh8qzltHn0v0l1qlqwXrdkzP8++qTUBPWpgnaCn22GzHCv1Z0
	 4ZHKQDxvYYmwotkV9pJDZO33qogqAFPJUZehDHhiNU6/Aok7+EhHCXQ2lgH7FKBnq1
	 /ERRkwQMxnbpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rBIW-5vG8i6E; Thu, 30 Jun 2022 15:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03A4984639;
	Thu, 30 Jun 2022 15:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03A4984639
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C05A81BF30E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9934C4039D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9934C4039D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2lVibXLh2Mg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 15:21:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6CEF40178
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6CEF40178
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:21:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="307887168"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="307887168"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="918087557"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jun 2022 08:21:09 -0700
Date: Thu, 30 Jun 2022 17:21:08 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <Yr2/ZAYgOAGQopZJ@boxer>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <Yr12jl1nEqqVI3TT@boxer>
 <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656602473; x=1688138473;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IV4NsOLZ4pseLjE+Zgo99/IZslsFn8JpLQVKMjQpu2s=;
 b=mWkAN/kVzTURRBM8V4BDAg3hUO9Nu8Lm4efh9/iesXOlkTL2xcIsqzz6
 SYnoH4yw/FF0a/VWICxdiTcCjBY9nEcMHZeNS8PKqBzmL7iELdoxGEeVL
 cNsZD+EVGy2YJGvjbcLvSlirGpirRpzEpsHjWWcPPTk01ukVly0A5BBgS
 Sg6W+sj+gpCBYvSg1wIkogwDN/+QDEke8MOCNy3qDHM0CSmNTdrTbHlMe
 A3CUtHlBq6tJJ1/d6A7TESXoCrMQlCwG0fgO6MZaN4soLd3dr/dvu55Zf
 BgVzJqWXwK45ZIGOPCd1GrvucFqMMjO4MRBAKY8Q/6L36LPa40Edag34v
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mWkAN/kV
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 30, 2022 at 08:17:24AM -0700, Alexander Duyck wrote:
> On Thu, Jun 30, 2022 at 3:10 AM Maciej Fijalkowski
> <maciej.fijalkowski@intel.com> wrote:
> >
> > On Wed, Jun 29, 2022 at 10:58:36AM +0200, Fabio M. De Francesco wrote:
> > > The use of kmap() is being deprecated in favor of kmap_local_page().
> > >
> > > With kmap_local_page(), the mapping is per thread, CPU local and not
> > > globally visible. Furthermore, the mapping can be acquired from any context
> > > (including interrupts).
> > >
> > > Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
> > > this mapping is per thread, CPU local, and not globally visible.
> >
> > Hi,
> >
> > I'd like to ask why kmap was there in the first place and not plain
> > page_address() ?
> >
> > Alex?
> 
> The page_address function only works on architectures that have access
> to all of physical memory via virtual memory addresses. The kmap
> function is meant to take care of highmem which will need to be mapped
> before it can be accessed.
> 
> For non-highmem pages kmap just calls the page_address function.
> https://elixir.bootlin.com/linux/latest/source/include/linux/highmem-internal.h#L40

I knew the second part but not the first, thanks.
So basically it is advised to convert the page_address() usage in similar
loopback testing code that other Intel drivers have, I'll do that later.

> 
> Thanks,
> 
> - Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
