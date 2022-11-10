Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7A8624C8F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 22:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A75A81E65;
	Thu, 10 Nov 2022 21:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A75A81E65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668114456;
	bh=Y6Uf1IBOI/hpJoozkpFAtWpEqxHYF+TFSmSHgeAOWVM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S/AL+fmhZ7AbGZjBSu2aYGuoyTuP79BaHqPou1gUxKXBnMFMudb/5LHQNskQkqFHU
	 XqqVKqMRklPmlz5ognp1L6Dnpmi5r85P1aibr5TlElXnVVJyYZqp8DDpW5/INlw0kG
	 WnPYG3rFTnNFM++zEcidelDjzje4Z+HBlUXOOiPUMR9rkJq5VcNYtTXDbziR4RMO/W
	 3BXS7SsGoOvMCEoQpKkGXaPL4TCb34oq+jpuMLJCu1FJotXYJMYYpMuxg24vCMbCWN
	 wYxlfLjiy5tUXHxmw2YyVBQTwUTeRsIXsVEs9O8BCzCHgoxLLOzSjrQ7dtsPWCrXYh
	 YHSJ8e1+BzF2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DpV4_NnLH1Uv; Thu, 10 Nov 2022 21:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 240D481EBC;
	Thu, 10 Nov 2022 21:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 240D481EBC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 599F31BF391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 21:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A24081EBC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 21:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A24081EBC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id baQ4lL0ZpuDd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 21:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E8F481E65
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E8F481E65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 21:07:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 60E89B8238F;
 Thu, 10 Nov 2022 21:07:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39865C433D6;
 Thu, 10 Nov 2022 21:07:24 +0000 (UTC)
Date: Thu, 10 Nov 2022 23:07:21 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y21oCUjEHEMr9HGb@unreal>
References: <20221108102502.2147389-1-ivecera@redhat.com>
 <Y2vvbwkvAIOdtZaA@unreal>
 <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20221110155147.1a2c57f6@p1.luc.cera.cz> <Y20vtqd6raqg8iwy@unreal>
 <20221110122418.32414666@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110122418.32414666@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668114446;
 bh=SvL0tC1tE3nUW82Ug4o+iFeGBWUfd1ASGwxtRRbRBIY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X6yt9egAXwk6xG2LbJRgSeQmEklIyWZA5SD6g3i1mbm/msswMh+cNIlufSBE1fnEP
 IR8NXRPq/4lBDssPB1ryholDBQqqVPgD0B8e/AesPMnTanXCPFU8xi2brMcWnulkzp
 lw+FsY5Gmj/CisaT3DjixrbxKgA53rk3HLi+Bnb8hGVMMBA+cDeYCr332lSbl41UxO
 uytQUD8vnYD8xdCha3JHV2fftWkXYlsO4yb7fEwxnhDgaobuF3LNZ5bWVxk1UT59/h
 M5K2hQ0mwVjh2h7PIqFEdDT4TkfdhjKVcUC8VV4DgQeNqAltlxc+QodOyapY4K2qVL
 Edpf9kQpRmwqA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=X6yt9egA
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues
 after reset task failure
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
Cc: Ivan Vecera <ivecera@redhat.com>, SlawomirX Laba <slawomirx.laba@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 10, 2022 at 12:24:18PM -0800, Jakub Kicinski wrote:
> On Thu, 10 Nov 2022 19:07:02 +0200 Leon Romanovsky wrote:
> > > > Yes I think you're right. A ton of people check it without the
> > > > lock but I think thats not strictly safe. Is dev_close safe to
> > > > call when netif_running is false? Why not just remove the check
> > > > and always call dev_close then.
> > > 
> > > Check for a bit value (like netif_runnning()) is much cheaper than
> > > unconditionally taking global lock like RTNL.  
> > 
> > This cheap operation is racy and performed in non-performance
> > critical path.
> 
> To be clear - the rtnl_lock around the entire if is still racy 
> in the grand scheme of things, no? What's stopping someone from
> bringing the device right back up after you drop the lock?

I want to believe what there is some sort of state machine that won't
allow simple toggling of dev_close/dev_open. If it doesn't, rtnl_lock
users should audit their code for possible toggling right after that
lock is dropped.

Anyway, this discussion reminds me our devl_lock debate where we had
completely opposite views if rtnl_lock model is the right one.
https://lore.kernel.org/netdev/20211101073259.33406da3@kicinski-fedora-PC1C0HJN/

Let's not start argue again, we had enough back then. :)

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
