Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BC262E344
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 18:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9979181EFA;
	Thu, 17 Nov 2022 17:39:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9979181EFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668706740;
	bh=V+Wt7dqRXdN/qrkXMJzd/c47qwCPpukD5b2nwD0RRA0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0VHQW+WCl24g2dnYty3Vd1oWsK3KGI0RcO2SZZbRC0tHjs3IltyJxFdvW7m799rPv
	 7ztI52+LSM4hII5GJt6HD+uwuLIH/K5HJFUUhO5mfOcDNjUFPofmF5T4QgdwOERhNK
	 LTr6UkDSKbbhntxvxsCWvEg0GOaxKBvUiy41QNmltrv2rr3iyRSrmGRilhNa3BDgP/
	 ILnimXpiWRnjLU1SkUzSLpbRw+CyZwogu9wg0HGi3d+nLJ7kaNEEtWdqXvspNlOmu8
	 9Ln7JdAkgKAizb3P/FIrO22z2NLuMrxdweuIwQdhT5rimJSFhWZkbHRNo2C/aX+3cT
	 Kb8SGG5wnEu7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WNzn9PSXJkJd; Thu, 17 Nov 2022 17:38:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B54B81428;
	Thu, 17 Nov 2022 17:38:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B54B81428
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48FB21BF401
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 17:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F7D1403AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 17:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F7D1403AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H3c4pc4-eBtp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 17:38:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B860401F8
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B860401F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 17:38:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 47D21621C4;
 Thu, 17 Nov 2022 17:38:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1354C433C1;
 Thu, 17 Nov 2022 17:38:51 +0000 (UTC)
Date: Thu, 17 Nov 2022 19:38:48 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3ZxqAq3bR7jYc3H@unreal>
References: <Y3OCHLiCzOUKLlHa@unreal> <Y3OcAJBfzgggVll9@localhost.localdomain>
 <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
 <Y3UlD499Yxj77vh3@unreal> <Y3YWkT/lMmYU5T+3@localhost.localdomain>
 <Y3Ye4kwmtPrl33VW@unreal> <Y3Y5phsWzatdnwok@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3Y5phsWzatdnwok@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668706732;
 bh=fNyi35WylNrbKyWDiB2SrAEFPV26ngVAbGKAt0nDGkU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RCurv50iX8m02jRnW3roTKqoSdga15iVx9dufpWsALaoxkhwTLzKbxVhMrDrBLr/Q
 IbEbqTHFosjLtlnI03uflSbDKWq7SwRxKUSUNsVYPltDol77N0TYzZi5Ns/rAWmPLe
 XqcThhdSaFapgUD4XwD3bLphOwDIpl5mA0MqpPbUMeIy6ikpKLVitT/ecxkJzTivt8
 /PLG4zGb2mGonP2E7gPbApYhBOzfG0OjeKRtBTIAbRpppkYsSrFXOWPu5PwmOyZQOh
 LSkvg71vo5fKfmxADjdYezB/zJNVBGIlGJYoxq2+QpsyLTSgK4oJO7isX9IPqYzsLo
 073f58LoAsMyw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RCurv50i
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
Cc: jiri@nvidia.com, leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com,
 edumazet@google.com, mustafa.ismail@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 17, 2022 at 02:39:50PM +0100, Michal Swiatkowski wrote:
> On Thu, Nov 17, 2022 at 01:45:38PM +0200, Leon Romanovsky wrote:
> > On Thu, Nov 17, 2022 at 12:10:21PM +0100, Michal Swiatkowski wrote:
> > > On Wed, Nov 16, 2022 at 07:59:43PM +0200, Leon Romanovsky wrote:
> > > > On Wed, Nov 16, 2022 at 01:04:36PM +0100, Michal Swiatkowski wrote:
> > > > > On Wed, Nov 16, 2022 at 08:04:56AM +0200, Leon Romanovsky wrote:
> > > > > > On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> > > > > > > On 11/15/2022 11:57 AM, Leon Romanovsky wrote:

<...>

> 
> Thanks for clarification.
> In summary, if this is really violation of PCI spec we for sure will
> have to fix that and resource managment implemented in this patchset
> will not make sense (as config for PF MSI-X amount will have to happen
> in FW).
> 
> If it isn't, is it still NACK from You? I mean, if we implement the
> devlink resources managment (maybe not generic one, only define in ice)
> and sysfs for setting VF MSI-X, will You be ok with that? Or using
> devlink to manage MSI-X resources isn't in general good solution?

NACK/ACK question is not for me, it is not my decision :)

I don't think that management of PCI specific parameters in devlink is
right idea. PCI has his own subsystem with rules and assumptions, netdev
shouldn't mangle them. In MSI-X case, this even more troublesome as users
sees these values through lspci without driver attached to it.

For example (very popular case), users creates VFs, unbinds driver from
all functions (PF and VFs) and pass them to VMs (bind to vfio driver).

Your solution being in wrong layer won't work there.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
