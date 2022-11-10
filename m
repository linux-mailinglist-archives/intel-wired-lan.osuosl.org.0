Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D10F6247E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 18:07:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7644881E98;
	Thu, 10 Nov 2022 17:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7644881E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668100038;
	bh=FJvDIn8vg0MXlBVwTC0F+TzpWepAKRnuv4/U5JJUiVQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f8am0hDd49LcplEHZJcBrEz0oUyMZVbnBbtQhyk3Gq6D0TSN+b3Ok6+BkWktvwnaf
	 OdVR0NtYzrnLezafj19eG1axWc9uiqMhkANs1CSbahgZVkSZB0OF93rXcqmX1rQRGm
	 nXaHDRF9sGnR9hhS+knScks5ucjOl/M3zMtR4GbwLvHHUQOPx3dLcWYi9Zc+Ns5KRb
	 jZ8uUI0NQmoJkB7NPvQjWGqxOM//PgIO7aqna42ZYw6/QIBmd7a6ho+kQKg4wIN/IG
	 VVU0H2tIZS6w7ixxX4/7VJnoXHifP2dCvWI6lJ8oHGxKeaSdhOz5CRhI6hV9bBFMeP
	 OGyR6VHNEIX2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0YLnmOFf2LyK; Thu, 10 Nov 2022 17:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83CEA81EA3;
	Thu, 10 Nov 2022 17:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83CEA81EA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08A331BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 17:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6394417CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 17:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6394417CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MVP6OLVJzhF9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 17:07:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78DD3417C0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78DD3417C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 17:07:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5967CB82261;
 Thu, 10 Nov 2022 17:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35FEFC433D6;
 Thu, 10 Nov 2022 17:07:05 +0000 (UTC)
Date: Thu, 10 Nov 2022 19:07:02 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <Y20vtqd6raqg8iwy@unreal>
References: <20221108102502.2147389-1-ivecera@redhat.com>
 <Y2vvbwkvAIOdtZaA@unreal>
 <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20221110155147.1a2c57f6@p1.luc.cera.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110155147.1a2c57f6@p1.luc.cera.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668100027;
 bh=rj3ISQCkCco2AbbC4p5BztsDjwUFjBW0QWdyLsCUyq8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YmORyJ0NKtlSVkovWmaabP0b9SgZQ1lh3Ym059adNM78LU2bsgoG9df90eYdUQt6y
 k5/I4sdiGRMTPgbuueWayNeCIFe7KTk/TZ3peRxCj2E06LfextPj/54SM2gxmQXcMQ
 vD3KG6xUxHxX0UrhgDmrbngWgKGqifl8Y2mII+FTvFHb4O0p1rEEloGAW+GMdeGmSP
 yjzhvbl01cvkHE7xniSFg1ZkB8+Mso5xNAiMAEbufp+1hbujiFnUm9JPgQ/P8ErZnl
 HKizbNHytdfuWh8htn10atiLOK274b5fWq2H9LamSj/xx8Mflu7htI2Rz87eg5x4Pu
 0KsWK8sqe1oGQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YmORyJ0N
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 10, 2022 at 03:51:47PM +0100, Ivan Vecera wrote:
> On Wed, 9 Nov 2022 20:11:55 +0000
> "Keller, Jacob E" <jacob.e.keller@intel.com> wrote:
> 
> > > Sorry for my naive question, I see this pattern a lot (including RDMA),
> > > so curious. Everyone checks netif_running() outside of rtnl_lock, while
> > > dev_close() changes state bit __LINK_STATE_START. Shouldn't rtnl_lock()
> > > placed before netif_running()?  
> > 
> > Yes I think you're right. A ton of people check it without the lock but I think thats not strictly safe. Is dev_close safe to call when netif_running is false? Why not just remove the check and always call dev_close then.
> > 
> > Thanks,
> > Jake
> 
> Check for a bit value (like netif_runnning()) is much cheaper than unconditionally
> taking global lock like RTNL.

This cheap operation is racy and performed in non-performance critical path.

Thanks

> 
> Ivan
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
