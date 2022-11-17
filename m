Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6D962D9BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 12:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1AA682088;
	Thu, 17 Nov 2022 11:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1AA682088
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668685552;
	bh=8mdb4rP153VodQ3QoOjumWWzrRNfQgrBq+hGhEhsacs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wd5sgwdHHTJ9MX3KMDmtQoAN8iGnR4llghjkdef0nbgB62DKdpvnZM2FSMsZ0eg55
	 YNJ/ibwrb6qWKEjxJ21e7IFp94qJ+m0M0BK512gLeH2AwgCWxGspfIZWhF8rPLp7en
	 ZNbzFwWVKQl/gnZuiCsD/VQIOCpDlTwvW/Bs45/Mso2o+sLq67i9GxQbrOEZX4CVCx
	 b26e/jLo71pDVLcI1a4aCdqlh6OwDFN5nS5m1P4EQwHny26YwbsVhYXbIUX02aUl34
	 B7hkQefkFCY77XPj5vDbu5cOaq16RxOrI94GaZAJHCL9hgyADel0PnXj8uuEjMkBhw
	 mhkyFTOXN18CQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxpOiRVmyIuQ; Thu, 17 Nov 2022 11:45:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B34C68207D;
	Thu, 17 Nov 2022 11:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B34C68207D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 153D81BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3C9D40154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3C9D40154
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EDX9jG6ZdnKL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 11:45:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F19E3400C4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F19E3400C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:45:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3FB14613E9;
 Thu, 17 Nov 2022 11:45:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6B7FC433C1;
 Thu, 17 Nov 2022 11:45:41 +0000 (UTC)
Date: Thu, 17 Nov 2022 13:45:38 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3Ye4kwmtPrl33VW@unreal>
References: <Y3NcnnNtmL+SSLU+@unreal> <Y3NnGk7DCo/1KfpD@localhost.localdomain>
 <Y3OCHLiCzOUKLlHa@unreal> <Y3OcAJBfzgggVll9@localhost.localdomain>
 <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
 <Y3UlD499Yxj77vh3@unreal> <Y3YWkT/lMmYU5T+3@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3YWkT/lMmYU5T+3@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668685542;
 bh=n8ULLxOjtzLBSAcRlVkEAznvxfo0rZ7CDIdUFmtIgaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CkaREezB1nvadw1x6sKQuO5Fw3w+f8epdD66RHZ3pbXEYg6BvGuBeeVgnHr/fVzn4
 CIJF0YbMmvFmVvQLgVFXhxuJ5ofR+IyavcknAy5RFwak0818C/ZNAJyaHlhZP9ymiH
 izJ4fzzGTy1McS9uJMzvqdQVwrgvd6T8z7juBShemz3CTa6Me3rmFy8aWvoZZulzVT
 4DtlpjeZL3GW3ESYXNxBKI/w1LTOe0Q70gUqoSMB0wFb2aREtK+W09DT5mpoun35Zw
 9Fi5LJAYe9uYjJ5gvpi+2/iikvJPtRp7aOMoDmrdAtofR5yFsjqGIsj3ggUt5qhI+9
 rXaP1LFu+9k0w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CkaREezB
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

On Thu, Nov 17, 2022 at 12:10:21PM +0100, Michal Swiatkowski wrote:
> On Wed, Nov 16, 2022 at 07:59:43PM +0200, Leon Romanovsky wrote:
> > On Wed, Nov 16, 2022 at 01:04:36PM +0100, Michal Swiatkowski wrote:
> > > On Wed, Nov 16, 2022 at 08:04:56AM +0200, Leon Romanovsky wrote:
> > > > On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> > > > > On 11/15/2022 11:57 AM, Leon Romanovsky wrote:
> > > > 
> > > > <...>
> > > > 
> > > > > > > In case of ice driver lspci -vs shows:
> > > > > > > Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> > > > > > > 
> > > > > > > so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> > > > > > > total number of MSI-X in the devlink example from cover letter is 1024.
> > > > > > > 
> > > > > > > I see that mellanox shows:
> > > > > > > Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> > > > > > > 
> > > > > > > I assume that 64 is in this case MSI-X ony for this one PF (it make
> > > > > > > sense).
> > > > > > Yes and PF MSI-X count can be changed through FW configuration tool, as
> > > > > > we need to write new value when the driver is unbound and we need it to
> > > > > > be persistent. Users are expecting to see "stable" number any time they
> > > > > > reboot the server. It is not the case for VFs, as they are explicitly
> > > > > > created after reboots and start "fresh" after every boot.
> > > > > > 
> > > > > > So we set large enough but not too large value as a default for PFs.
> > > > > > If you find sane model of how to change it through kernel, you can count
> > > > > > on our support.
> > > > > 
> > > > > I guess one main difference is that in case of ice, PF driver manager resources
> > > > > for all its associated functions, not the FW. So the MSI-X count reported for PF
> > > > > shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
> > > > > to get their MSI-X vector information.
> > > > 
> > > > What is the output of lspci for ice VF when the driver is not bound?
> > > > 
> > > > Thanks
> > > > 
> > > 
> > > It is the same after creating and after unbonding:
> > > Capabilities: [70] MSI-X: Enable- Count=17 Masked-
> > > 
> > > 17, because 16 for traffic and 1 for mailbox.
> > 
> > Interesting, I think that your PF violates PCI spec as it always
> > uses word "function" and not "device" while talks about MSI-X related
> > registers.
> > 
> > Thanks
> > 
> 
> I made mistake in one comment. 1024 isn't MSI-X amount for device. On
> ice we have 2048 for the whole device. On two ports card each PF have
> 1024 MSI-X. Our control register mapping to the internal space looks
> like that (Assuming two port card; one VF with 5 MSI-X created):
> INT[PF0].FIRST	0
> 		1
> 		2
> 		
> 		.
> 		.
> 		.
> 
> 		1019	INT[VF0].FIRST	__
> 		1020			  | interrupts used
> 		1021			  | by VF on PF0
> 		1022			  |
> INT[PF0].LAST	1023	INT[VF0].LAST	__|
> INT[PF1].FIRST	1024
> 		1025
> 		1026
> 
> 		.
> 		.
> 		.
> 		
> INT[PF1].LAST	2047
> 
> MSI-X entry table size for PF0 is 1024, but entry table for VF is a part
> of PF0 physical space.
> 
> Do You mean that "sharing" the entry between PF and VF is a violation of
> PCI spec? 

You should consult with your PCI specification experts. It was my
spec interpretation, which can be wrong.


> Sum of MSI-X count on all function within device shouldn't be
> grater than 2048? 

No, it is 2K per-control message/per-function.


> It is hard to find sth about this in spec. I only read
> that: "MSI-X supports a maximum table size of 2048 entries". I will
> continue searching for information about that.
> 
> I don't think that from driver perspective we can change the table size
> located in message control register.

No, you can't, unless you decide explicitly violate spec.

> 
> I assume in mlnx the tool that You mentioned can modify this table size?

Yes, it is FW configuration tool.

Thanks

> 
> Thanks
> 
> > > 
> > > Thanks
> > > > > 
> > > > > 
> > > > > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
