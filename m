Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917162C712
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 19:00:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDE7341811;
	Wed, 16 Nov 2022 18:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDE7341811
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668621601;
	bh=+++v+dL/3e1Ot8O5Z78sxHZXSdMvnRnvnTapdpqiqRw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yVCPeHed0X4ezSANaHUde4wKlymAPWwtZLj4Z5EAcPSq28Fw4l3YsAO7+IuiIKQ66
	 6Z5Z21fErsPu7FuQNmaRlLycktCk0ZI/RkpXtquIk8/m8K1Oj05jt2e9XDOaYl/xbJ
	 g19eAd6ik9hzv6D0aF0kV5Cy0+P3Un+RCPdIXbKxLHj4/afGPPIq8BfgDa+x339S/Y
	 hnpg0NXpSgNu7/IP3l15lLHfjX5xjsz6r0PTF1xasz0gFeTo0KtqHLGxfg5FsDwEf8
	 NLRVe/3MJhWly6rSDgRh38FD+qQX/cnDliWI+9YujjlVN6nE+o5TY1duCyJDJ+7O1u
	 0UThvu0pxxGvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YB_Ys0tt6th2; Wed, 16 Nov 2022 18:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F0B7417B1;
	Wed, 16 Nov 2022 18:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F0B7417B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58AD11BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 17:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 371EA40BFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 17:59:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 371EA40BFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MEPVXeI2akit for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 17:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E0C140BF9
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E0C140BF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 17:59:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 56CEDCE1C20;
 Wed, 16 Nov 2022 17:59:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DBA9C433D6;
 Wed, 16 Nov 2022 17:59:46 +0000 (UTC)
Date: Wed, 16 Nov 2022 19:59:43 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3UlD499Yxj77vh3@unreal>
References: <Y3NJnhxetoSIvqYV@unreal> <Y3NWMVF2LV/0lqJX@localhost.localdomain>
 <Y3NcnnNtmL+SSLU+@unreal> <Y3NnGk7DCo/1KfpD@localhost.localdomain>
 <Y3OCHLiCzOUKLlHa@unreal> <Y3OcAJBfzgggVll9@localhost.localdomain>
 <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3TR1At4In5Q98OG@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668621587;
 bh=HDy1AeCUgxJgWKhlqn9M+wP+QBZnFiLRftvKizI5/XE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g2OAJSHR2wdmrmBE8jaV4JIuwX0ijR/QHQ1Qm6ipgVCzBadVXiHbuMTe/nbywKfqy
 rXkQkbuxoPUcRQoZ7uep3rRYexh5zEl5bX0kXKOVVYQfAqKwKowXZdUjd7VC/cNcJp
 HjUoUcQZ3+lKlQ7Bnc6cNX6K0s0x8auex1P7XswIFnb4/V/rH6PeBKRoXhVkjcevgX
 1Yo/aZvEESEecVPvhwKfbxnOT5JxrsZhWREwoF6qwq29xYaXBwpd+8SoSTQtMzhn0n
 B3gYZ20rMFQSUqkaN2dLV9QlocTCHtbB879vSlZYA6+ECvrYb9snN+d6RxnmiMjGCr
 aYReyjvMOdUYg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=g2OAJSHR
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

On Wed, Nov 16, 2022 at 01:04:36PM +0100, Michal Swiatkowski wrote:
> On Wed, Nov 16, 2022 at 08:04:56AM +0200, Leon Romanovsky wrote:
> > On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> > > On 11/15/2022 11:57 AM, Leon Romanovsky wrote:
> > 
> > <...>
> > 
> > > > > In case of ice driver lspci -vs shows:
> > > > > Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> > > > > 
> > > > > so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> > > > > total number of MSI-X in the devlink example from cover letter is 1024.
> > > > > 
> > > > > I see that mellanox shows:
> > > > > Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> > > > > 
> > > > > I assume that 64 is in this case MSI-X ony for this one PF (it make
> > > > > sense).
> > > > Yes and PF MSI-X count can be changed through FW configuration tool, as
> > > > we need to write new value when the driver is unbound and we need it to
> > > > be persistent. Users are expecting to see "stable" number any time they
> > > > reboot the server. It is not the case for VFs, as they are explicitly
> > > > created after reboots and start "fresh" after every boot.
> > > > 
> > > > So we set large enough but not too large value as a default for PFs.
> > > > If you find sane model of how to change it through kernel, you can count
> > > > on our support.
> > > 
> > > I guess one main difference is that in case of ice, PF driver manager resources
> > > for all its associated functions, not the FW. So the MSI-X count reported for PF
> > > shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
> > > to get their MSI-X vector information.
> > 
> > What is the output of lspci for ice VF when the driver is not bound?
> > 
> > Thanks
> > 
> 
> It is the same after creating and after unbonding:
> Capabilities: [70] MSI-X: Enable- Count=17 Masked-
> 
> 17, because 16 for traffic and 1 for mailbox.

Interesting, I think that your PF violates PCI spec as it always
uses word "function" and not "device" while talks about MSI-X related
registers.

Thanks

> 
> Thanks
> > > 
> > > 
> > > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
