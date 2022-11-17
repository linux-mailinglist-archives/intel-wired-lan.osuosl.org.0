Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69E962DCF9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 14:40:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6907B40B90;
	Thu, 17 Nov 2022 13:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6907B40B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668692406;
	bh=nvQZ40DbNjCnmmFXNMxPF6OLk13OGQVg56gdxP0IM40=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z3A2q0iN/SXXKjH3aB2LhiFdgqVqIqrXcUutNAqMC+AtjfppPCmjVkJfmWr/3me/R
	 L8u4vMh6SzbN5jHkjXBqYHPRiUXBAwmhddLmq+Z3NzbrzloUKNLc63Xi5mJu3m9C2c
	 7zvAOTzlIjSikIxYbxUVv1Xni6xiumJniOqC0mZ1jFIiKExo68GA5vm+Joed+Ik8AA
	 CkQsXhZ4S/wnXYvDAWoa0YnfkgQ3fU2wB8eXglDzsyx0XxtAsAiaQj6g2ilADnHlGk
	 TJnUGVbndwshcNYpir0fP+MYxQBqjGSlPGQTMHEnJzNNqlQsMfSX6UTuS5UP2XA1KT
	 Oed/IpVk6ainA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z787VwhZ0Z8q; Thu, 17 Nov 2022 13:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CCA640AA3;
	Thu, 17 Nov 2022 13:40:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CCA640AA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19AD61BF580
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 13:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2AAB40AA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 13:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2AAB40AA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AfkQn3Garuu8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 13:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BAA8404C1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BAA8404C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 13:39:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="374982707"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="374982707"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 05:39:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="672811666"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="672811666"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 05:39:53 -0800
Date: Thu, 17 Nov 2022 14:39:50 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3Y5phsWzatdnwok@localhost.localdomain>
References: <Y3NnGk7DCo/1KfpD@localhost.localdomain> <Y3OCHLiCzOUKLlHa@unreal>
 <Y3OcAJBfzgggVll9@localhost.localdomain> <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal> <Y3TR1At4In5Q98OG@localhost.localdomain>
 <Y3UlD499Yxj77vh3@unreal> <Y3YWkT/lMmYU5T+3@localhost.localdomain>
 <Y3Ye4kwmtPrl33VW@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3Ye4kwmtPrl33VW@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668692399; x=1700228399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=njO9KSSV6lGnBxqXX8AND9QDlSELRUY4rMWrJlvnUSs=;
 b=LEq00oPLLQiklYS9tmSg3oDzM7xZjQDvYGwrGm597rqupqw9wCofxwH2
 LHIG8ZSihszicnIHIFE/oaOzOxKu/4wCwGSb9AdMOBZSdIDtat2xZvVzU
 skSo6An2ATjHdCO8fLUrS0MJKjwvQuIhq2BQ9bSTj6CQUaFZU1a9NAzVw
 M74sS1UtZLvoEMa2hZayTGhtz99nx+6/dwbGRv5q3Phzvp1xcxxt7cO/g
 4sx53mS3/CKMIiAL4clf7RfRCkY2hUBWP8rbJnmWH2m8MiY2VSuD3MO6W
 43SRuGR6V9z1bjJkckUKXJ5wx6OYQ/suSdJlY5wzFH5wq9HjQ7RoaGwbj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LEq00oPL
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

On Thu, Nov 17, 2022 at 01:45:38PM +0200, Leon Romanovsky wrote:
> On Thu, Nov 17, 2022 at 12:10:21PM +0100, Michal Swiatkowski wrote:
> > On Wed, Nov 16, 2022 at 07:59:43PM +0200, Leon Romanovsky wrote:
> > > On Wed, Nov 16, 2022 at 01:04:36PM +0100, Michal Swiatkowski wrote:
> > > > On Wed, Nov 16, 2022 at 08:04:56AM +0200, Leon Romanovsky wrote:
> > > > > On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> > > > > > On 11/15/2022 11:57 AM, Leon Romanovsky wrote:
> > > > > 
> > > > > <...>
> > > > > 
> > > > > > > > In case of ice driver lspci -vs shows:
> > > > > > > > Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> > > > > > > > 
> > > > > > > > so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> > > > > > > > total number of MSI-X in the devlink example from cover letter is 1024.
> > > > > > > > 
> > > > > > > > I see that mellanox shows:
> > > > > > > > Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> > > > > > > > 
> > > > > > > > I assume that 64 is in this case MSI-X ony for this one PF (it make
> > > > > > > > sense).
> > > > > > > Yes and PF MSI-X count can be changed through FW configuration tool, as
> > > > > > > we need to write new value when the driver is unbound and we need it to
> > > > > > > be persistent. Users are expecting to see "stable" number any time they
> > > > > > > reboot the server. It is not the case for VFs, as they are explicitly
> > > > > > > created after reboots and start "fresh" after every boot.
> > > > > > > 
> > > > > > > So we set large enough but not too large value as a default for PFs.
> > > > > > > If you find sane model of how to change it through kernel, you can count
> > > > > > > on our support.
> > > > > > 
> > > > > > I guess one main difference is that in case of ice, PF driver manager resources
> > > > > > for all its associated functions, not the FW. So the MSI-X count reported for PF
> > > > > > shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
> > > > > > to get their MSI-X vector information.
> > > > > 
> > > > > What is the output of lspci for ice VF when the driver is not bound?
> > > > > 
> > > > > Thanks
> > > > > 
> > > > 
> > > > It is the same after creating and after unbonding:
> > > > Capabilities: [70] MSI-X: Enable- Count=17 Masked-
> > > > 
> > > > 17, because 16 for traffic and 1 for mailbox.
> > > 
> > > Interesting, I think that your PF violates PCI spec as it always
> > > uses word "function" and not "device" while talks about MSI-X related
> > > registers.
> > > 
> > > Thanks
> > > 
> > 
> > I made mistake in one comment. 1024 isn't MSI-X amount for device. On
> > ice we have 2048 for the whole device. On two ports card each PF have
> > 1024 MSI-X. Our control register mapping to the internal space looks
> > like that (Assuming two port card; one VF with 5 MSI-X created):
> > INT[PF0].FIRST	0
> > 		1
> > 		2
> > 		
> > 		.
> > 		.
> > 		.
> > 
> > 		1019	INT[VF0].FIRST	__
> > 		1020			  | interrupts used
> > 		1021			  | by VF on PF0
> > 		1022			  |
> > INT[PF0].LAST	1023	INT[VF0].LAST	__|
> > INT[PF1].FIRST	1024
> > 		1025
> > 		1026
> > 
> > 		.
> > 		.
> > 		.
> > 		
> > INT[PF1].LAST	2047
> > 
> > MSI-X entry table size for PF0 is 1024, but entry table for VF is a part
> > of PF0 physical space.
> > 
> > Do You mean that "sharing" the entry between PF and VF is a violation of
> > PCI spec? 
> 
> You should consult with your PCI specification experts. It was my
> spec interpretation, which can be wrong.
> 

Sure, I will

> 
> > Sum of MSI-X count on all function within device shouldn't be
> > grater than 2048? 
> 
> No, it is 2K per-control message/per-function.
> 
> 
> > It is hard to find sth about this in spec. I only read
> > that: "MSI-X supports a maximum table size of 2048 entries". I will
> > continue searching for information about that.
> > 
> > I don't think that from driver perspective we can change the table size
> > located in message control register.
> 
> No, you can't, unless you decide explicitly violate spec.
> 
> > 
> > I assume in mlnx the tool that You mentioned can modify this table size?
> 
> Yes, it is FW configuration tool.
>

Thanks for clarification.
In summary, if this is really violation of PCI spec we for sure will
have to fix that and resource managment implemented in this patchset
will not make sense (as config for PF MSI-X amount will have to happen
in FW).

If it isn't, is it still NACK from You? I mean, if we implement the
devlink resources managment (maybe not generic one, only define in ice)
and sysfs for setting VF MSI-X, will You be ok with that? Or using
devlink to manage MSI-X resources isn't in general good solution?

Our motivation here is to allow user to configure MSI-X allocation for
his own use case. For example giving only 1 MSI-X for ethernet and RDMA
and spending rest on VFs. If I understand correctly, on mlnx card user
can set PF MSI-X to 1 in FW configuration tool and achieve the same.
Currently we don't have other mechanism to change default number of
MSI-X on ethernet.

> Thanks
> 
> > 
> > Thanks
> > 
> > > > 
> > > > Thanks
> > > > > > 
> > > > > > 
> > > > > > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
