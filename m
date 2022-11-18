Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 051D462ED8D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 07:21:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00CB8417D9;
	Fri, 18 Nov 2022 06:21:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00CB8417D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668752467;
	bh=FVasq3xnpImLy3F6tRqbsMinloD15ErwPKrH4tWBgl4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SfNtG9t7jh1yQPYzjCZ5SA5UdNaqVKK+c27CPg5GGEZLYLU6bc/y9aU8cZ70WWHAc
	 YCk2gR09UognLcaRuRKg+HOCa5x0sYSCraXb0st4WQ217Oj8XRuUe49vuDCozQRYOo
	 UVcvLltNoNuGZDXD0N+fRYA8TUGZRt683tZ78CcvVhEuR91djYMLtG33SQCj+J5lPj
	 E1L5XSmprIgs7dKEbVn51uYbznMSTxpjmVraSWa0DIjOq2rI6b1uZlXfPlfgPFNdHK
	 1d5QMHZJZxAx1Xhi7s2MClYsVdKP6fcZjPQPKCbyQZr0FXD5FSHgRpgGSyUeDSxhhO
	 7OVaSQeyyigNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ixeRmcOxx4Dn; Fri, 18 Nov 2022 06:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2C4C4192F;
	Fri, 18 Nov 2022 06:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2C4C4192F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 262451BF831
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 06:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECC51417D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 06:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECC51417D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5s7BWZNwkOW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 06:20:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6D5F40333
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6D5F40333
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 06:20:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BEA816232B;
 Fri, 18 Nov 2022 06:20:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62729C433D6;
 Fri, 18 Nov 2022 06:20:57 +0000 (UTC)
Date: Fri, 18 Nov 2022 08:20:53 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y3ckRWtAtZU1BdXm@unreal>
References: <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
 <Y3UlD499Yxj77vh3@unreal> <Y3YWkT/lMmYU5T+3@localhost.localdomain>
 <Y3Ye4kwmtPrl33VW@unreal> <Y3Y5phsWzatdnwok@localhost.localdomain>
 <Y3ZxqAq3bR7jYc3H@unreal> <20221117193618.2cd47268@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117193618.2cd47268@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668752458;
 bh=IodHfmUR6fO5kf0oeVrpz+whtV7PIpFGfX3Bm2Xc+CM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jKXMcRmkRu+t5zEk3MOmLy0iFRD0PGNuMLw2dqD9ncKTczsnIDIDHbHjtlpM3w8lW
 oCH6slCSqbgwH9l45xih80d2vrg4qYcSzFbYkvFqWFlYvTnRi41NDlT20HMjqu43Q8
 RjsAq94HI+kgwq8ruGs+j6jvBPHFC5ZfVQqZdqIrxj3GvfkXFlip8k3ZJwtaLhwvTK
 9CX3M5D5mzcryF8PwecmfVFUM/48L12WS4pkxXmLo6GklmDhzyQtEUx5bAV5WDjLsd
 NfY2UuNG195xXHf1u6h9pUGacFVKoFgliwwvL+SDL7EC3y6Ju+RTVA50D8kBbXjCtX
 Szec802I8eQnQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jKXMcRmk
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 jiri@nvidia.com, leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com,
 edumazet@google.com, mustafa.ismail@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, shiraz.saleem@intel.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 17, 2022 at 07:36:18PM -0800, Jakub Kicinski wrote:
> On Thu, 17 Nov 2022 19:38:48 +0200 Leon Romanovsky wrote:
> > I don't think that management of PCI specific parameters in devlink is
> > right idea. PCI has his own subsystem with rules and assumptions, netdev
> > shouldn't mangle them.
> 
> Not netdev, devlink, which covers netdev, RDMA and others.

devlink is located in net/*, it is netdev.
Regarding RDMA, it is not fully accurate. We use devlink to convey
information to FW through pci device located in netdev. Some of such
parameters are RDMA related. However, we don't configure RDMA properties
through devlink, there is a special tool for that (rdmatool).

> 
> > In MSI-X case, this even more troublesome as users
> > sees these values through lspci without driver attached to it.
> 
> I'm no PCI expert either but FWIW to me the patch set seems reasonable.
> Whether management FW policies are configured via core PCI sysfs or
> subsystem-specific-ish APIs is a toss up. Adding Bjorn and please CC him
> on the next rev.

The thing is that it must be managed by FW. Earlier in this thread, I pointed
the pretty normal use case where you need to have valid PCI structure without
any driver involvement.

> 
> Link to the series:
> https://lore.kernel.org/all/20221114125755.13659-1-michal.swiatkowski@linux.intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
