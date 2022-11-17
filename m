Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C208D62D911
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 12:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B72460B43;
	Thu, 17 Nov 2022 11:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B72460B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668683442;
	bh=qOIvB81Vxt/h/gj2IXlvMZxiTlHqcmRdwNjWEQykfps=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gYkvIFYtD6GGZidH18610GcaoKXu72hm6hB8Iz0tEMT9e3SGA1L1g2RBDLN6seSvf
	 EKIv3xSjkQ0PVXdeUULG1q17jfZdv8qgdXGYhk6RWzQ3vU8+lieuvRJ+dmclE/nz8j
	 iXZHqVtpyU/M8NljJ9xT4nK76d/aMJaW/PnXojDH6p70YwAHJ5duoJ5fN30rUePN25
	 DyXiJHYtvdyvw9WyaaOcJBbUcWh5SBFPPFq3155cMqCYxcbHPkAPA9vGD8yQfjqusk
	 noWbxyBU0j6QapvmiEV5tPTKEhjlityTRbDLvpunV/wWlxCCEMwxelVcv1mrf3lP/W
	 8omdh7ONXvt2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lF-jJjOVm9mk; Thu, 17 Nov 2022 11:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32F5160B49;
	Thu, 17 Nov 2022 11:10:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32F5160B49
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 960111BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7091D81F4C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7091D81F4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPOk3XL-fBPa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 11:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8557281F48
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8557281F48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:10:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="313971989"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="313971989"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:10:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="728785804"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="728785804"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:10:30 -0800
Date: Thu, 17 Nov 2022 12:10:21 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3YWkT/lMmYU5T+3@localhost.localdomain>
References: <Y3NWMVF2LV/0lqJX@localhost.localdomain> <Y3NcnnNtmL+SSLU+@unreal>
 <Y3NnGk7DCo/1KfpD@localhost.localdomain> <Y3OCHLiCzOUKLlHa@unreal>
 <Y3OcAJBfzgggVll9@localhost.localdomain> <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
 <Y3UlD499Yxj77vh3@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3UlD499Yxj77vh3@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668683435; x=1700219435;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Oicqt3xt9r5vV+mIlVk/9Z5wT9dzFGt7KwKw3hvXFME=;
 b=JggWLo7bUPTIGQeerRi6/kg6YAPUQDHje7hrNqmdZPGzcPl+A8p9FWg1
 48P4tfuXu32k/J4BdjYgQhRw816/rf7brFK14dDcVM19Y5GRrfpyLNjL6
 BRtVBZ9QbZjZj33l3+Mu3j5p67HFWl0YUhdTtsCgPBMO+zUtaWC6LUqgA
 KRZKOkPJtZbphyEPKX4ab7DkpG7KHHoT9/gmfGtMQL6slMX7WsWGWyxBI
 TUPciSwCFPBO0xUMLSTPUDhSDFXUYeeIkz8Wo8VX+Itxx1ry1ft6iFiBx
 dkFMmwacSIatpNpjoANr6JU4Pn0v8+WaWlc6BoVN7/VjiXRDJ2PisUkVb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JggWLo7b
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

On Wed, Nov 16, 2022 at 07:59:43PM +0200, Leon Romanovsky wrote:
> On Wed, Nov 16, 2022 at 01:04:36PM +0100, Michal Swiatkowski wrote:
> > On Wed, Nov 16, 2022 at 08:04:56AM +0200, Leon Romanovsky wrote:
> > > On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> > > > On 11/15/2022 11:57 AM, Leon Romanovsky wrote:
> > > 
> > > <...>
> > > 
> > > > > > In case of ice driver lspci -vs shows:
> > > > > > Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> > > > > > 
> > > > > > so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> > > > > > total number of MSI-X in the devlink example from cover letter is 1024.
> > > > > > 
> > > > > > I see that mellanox shows:
> > > > > > Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> > > > > > 
> > > > > > I assume that 64 is in this case MSI-X ony for this one PF (it make
> > > > > > sense).
> > > > > Yes and PF MSI-X count can be changed through FW configuration tool, as
> > > > > we need to write new value when the driver is unbound and we need it to
> > > > > be persistent. Users are expecting to see "stable" number any time they
> > > > > reboot the server. It is not the case for VFs, as they are explicitly
> > > > > created after reboots and start "fresh" after every boot.
> > > > > 
> > > > > So we set large enough but not too large value as a default for PFs.
> > > > > If you find sane model of how to change it through kernel, you can count
> > > > > on our support.
> > > > 
> > > > I guess one main difference is that in case of ice, PF driver manager resources
> > > > for all its associated functions, not the FW. So the MSI-X count reported for PF
> > > > shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
> > > > to get their MSI-X vector information.
> > > 
> > > What is the output of lspci for ice VF when the driver is not bound?
> > > 
> > > Thanks
> > > 
> > 
> > It is the same after creating and after unbonding:
> > Capabilities: [70] MSI-X: Enable- Count=17 Masked-
> > 
> > 17, because 16 for traffic and 1 for mailbox.
> 
> Interesting, I think that your PF violates PCI spec as it always
> uses word "function" and not "device" while talks about MSI-X related
> registers.
> 
> Thanks
> 

I made mistake in one comment. 1024 isn't MSI-X amount for device. On
ice we have 2048 for the whole device. On two ports card each PF have
1024 MSI-X. Our control register mapping to the internal space looks
like that (Assuming two port card; one VF with 5 MSI-X created):
INT[PF0].FIRST	0
		1
		2
		
		.
		.
		.

		1019	INT[VF0].FIRST	__
		1020			  | interrupts used
		1021			  | by VF on PF0
		1022			  |
INT[PF0].LAST	1023	INT[VF0].LAST	__|
INT[PF1].FIRST	1024
		1025
		1026

		.
		.
		.
		
INT[PF1].LAST	2047

MSI-X entry table size for PF0 is 1024, but entry table for VF is a part
of PF0 physical space.

Do You mean that "sharing" the entry between PF and VF is a violation of
PCI spec? Sum of MSI-X count on all function within device shouldn't be
grater than 2048? It is hard to find sth about this in spec. I only read
that: "MSI-X supports a maximum table size of 2048 entries". I will
continue searching for information about that.

I don't think that from driver perspective we can change the table size
located in message control register.

I assume in mlnx the tool that You mentioned can modify this table size?

Thanks

> > 
> > Thanks
> > > > 
> > > > 
> > > > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
