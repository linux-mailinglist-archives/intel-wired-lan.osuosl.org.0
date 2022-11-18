Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 465DF62FBA7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 18:31:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 996F060BB6;
	Fri, 18 Nov 2022 17:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 996F060BB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668792687;
	bh=a8MvRSISRVfhOiIMVj3rm1hraAiijnX8LDtUMjQJ45s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a/cmrhx388+yrgEQVSpqqvkIbzulZTXO1ZOOCkSeGSIlYrdglMy8FazT8YYizix+2
	 x3/PKgCAlffqP0t8lY/hcEdgB5CwWjc1Mkzi9uyAEJHpoWTTMYf/FUy7dFwIP/I54C
	 knfFld81ALfucaijbV/udddXF7EpYRcZZhfV3qs3LvDURINPuu0mh9NjvgCgefMxYl
	 VJ0bg5r9Y+WQoTfwVz69NVWAERTN111oBrAjFeESDAlFHREJ98Ho5TvSDOfK8C12oX
	 Hs48rhjYWeHWfVoCbVVWHik+wFywTnKT73uyHqPs9lueJM3OuHl4c7YVD+1pKPQxQB
	 CpWkiAxksVSYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-0Q-25pAvWZ; Fri, 18 Nov 2022 17:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB6C460BA4;
	Fri, 18 Nov 2022 17:31:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB6C460BA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 305E41BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 17:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AA7582266
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 17:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AA7582266
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nCJcjPng6-Ze for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 17:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04D6182265
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04D6182265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 17:31:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DED9562691;
 Fri, 18 Nov 2022 17:31:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C293C433D6;
 Fri, 18 Nov 2022 17:31:17 +0000 (UTC)
Date: Fri, 18 Nov 2022 19:31:13 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>
Message-ID: <Y3fBYXclZbNsiE1J@unreal>
References: <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
 <Y3UlD499Yxj77vh3@unreal> <Y3YWkT/lMmYU5T+3@localhost.localdomain>
 <Y3Ye4kwmtPrl33VW@unreal> <Y3Y5phsWzatdnwok@localhost.localdomain>
 <Y3ZxqAq3bR7jYc3H@unreal> <20221117193618.2cd47268@kernel.org>
 <Y3ckRWtAtZU1BdXm@unreal>
 <MWHPR11MB002998FAA385731E21E20868E9099@MWHPR11MB0029.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MWHPR11MB002998FAA385731E21E20868E9099@MWHPR11MB0029.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668792678;
 bh=YUMZTiR2BSL9KNrQOfhCVO4wu38lNiw1qRPb9aJ4w5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7W2K0H3db6yLqd5Fj/Fe6kvQxS7GPM4bpm1kes5aaUN77/gflTLQ4HmtGueNPySE
 29XksfPom5VQWikAzvNT4MgjYPPUNZrvPZJWiP8MVSfvYzatiBOKktK7GD4mX8KPHx
 I4Gv6XQNQDHkBbu48KDIKZnLXHEV40dvoAGFz1sORcpN6va1V9HfGBaUEKy693TjsQ
 ijHpnpu0fkEvUgLWIgJt0EeoUofNV/LZwQnDi6eGi4kvXvI4T8I60EXQ07JP1bl/aX
 RvnDaV5sRZhqt4/Q+h2U8qdhquxC6XZfgjD2aWdN73xfB1I+41i6zxOMpUYs3kbznp
 B1NqZzxhrC1gg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S7W2K0H3
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, "jiri@nvidia.com" <jiri@nvidia.com>,
 "Kaliszczuk, Leszek" <leszek.kaliszczuk@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Ismail,
 Mustafa" <mustafa.ismail@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 18, 2022 at 02:23:50PM +0000, Saleem, Shiraz wrote:
> > Subject: Re: [PATCH net-next 00/13] resource management using devlink reload
> > 
> > On Thu, Nov 17, 2022 at 07:36:18PM -0800, Jakub Kicinski wrote:
> > > On Thu, 17 Nov 2022 19:38:48 +0200 Leon Romanovsky wrote:
> > > > I don't think that management of PCI specific parameters in devlink
> > > > is right idea. PCI has his own subsystem with rules and assumptions,
> > > > netdev shouldn't mangle them.
> > >
> > > Not netdev, devlink, which covers netdev, RDMA and others.
> > 
> > devlink is located in net/*, it is netdev.
> > Regarding RDMA, it is not fully accurate. We use devlink to convey information to
> > FW through pci device located in netdev. Some of such parameters are RDMA
> > related. However, we don't configure RDMA properties through devlink, there is a
> > special tool for that (rdmatool).
> 
> rdmatool though is usable only once the rdma driver probe() completes and the ib_device is registered.
> And cannot be used for any configurations at driver init time.

Like I said, we use devlink to configure FW and "core" device to which
ib_device is connected. We don't configure RDMA specific properties, but
only device specific ones.

> 
> Don't we already have PCI specific parameters managed through devlink today?
> 
> https://docs.kernel.org/networking/devlink/devlink-params.html
> enable_sriov
> ignore_ari
> msix_vec_per_pf_max
> msix_vec_per_pf_min
> 
> How are these in a different bracket from what Michal is trying to do? Or were these ones a bad idea in hindsight?

Yes as it doesn't belong to net/* and it exists there just because of
one reason: ability to write to FW of specific device.

At least for ARI, I don't see that bnxt driver masked ARI Extended Capability
and informed PCI subsystem about it, so PCI core will recreate device.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
