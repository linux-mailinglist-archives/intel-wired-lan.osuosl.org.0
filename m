Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1650A62BCF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 13:04:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9938F82026;
	Wed, 16 Nov 2022 12:04:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9938F82026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668600291;
	bh=qwNMVdeT81wiUtHp70E5io2xf2KYmMFNYidPp13WAmE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YMvoGvFnh5ruh/AUXMidqWjRR7DlG6heMLqu+XxJVkJGCo13F88zgxxyQtpx+jzw1
	 vnlTuv2n8sAgnliSB6emQJCotPrTtqmyLWl2g7IiapizNH17PMjHQ4r19nd0xsmjMX
	 Q2mIfoUTEoiM3x7pebK6an+l8Of6YNtW04LnOm769mX8MoaqEvwaqnadpzuqpR9gpE
	 hMQZZOEcKlbks5GO+LEViZKDgG6QG4ATAtlssUZ5+ZCJ+dwSoXcU5dau9kqKuCLrMO
	 +05GJ6F5/y2K+PNsB/V2WGAUwQuFWDN/XRi8Y0L14GUzE4y13e5sys2Uc3jxiTqyIK
	 q+ln95EFT7ifg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zu-0yv039mWN; Wed, 16 Nov 2022 12:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8768982012;
	Wed, 16 Nov 2022 12:04:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8768982012
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C80AC1BF576
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 12:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A1DB682012
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 12:04:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1DB682012
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R5sacn-0RCIj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 12:04:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5636B81FFA
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5636B81FFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 12:04:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="292918030"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="292918030"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 04:04:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="884380899"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="884380899"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 04:04:39 -0800
Date: Wed, 16 Nov 2022 13:04:36 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3TR1At4In5Q98OG@localhost.localdomain>
References: <Y3M79CuAQNLkFV0S@localhost.localdomain> <Y3NJnhxetoSIvqYV@unreal>
 <Y3NWMVF2LV/0lqJX@localhost.localdomain> <Y3NcnnNtmL+SSLU+@unreal>
 <Y3NnGk7DCo/1KfpD@localhost.localdomain> <Y3OCHLiCzOUKLlHa@unreal>
 <Y3OcAJBfzgggVll9@localhost.localdomain> <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
 <Y3R9iAMtkk8zGyaC@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3R9iAMtkk8zGyaC@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668600284; x=1700136284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=szQ+eh5iF6xXmafylI8uPZAw0AOvf0cuNVf12JThADM=;
 b=GzyuD6uSL/3+PUJaCy8y7wXbzkwFmN3Fn2vIe+5rWirXQWIseb1qlbTl
 mKztRy/Xdm7+fxsZ/Z0CZUbw2QH8vbxOTl5+IYHdj/txUOQ81H844/w2Y
 BHbvuAjbx9ePsMAGynQqhg2Pg91Hm0WLbST4iyj86DQlQgSV4bCK4F5NZ
 M9nJKRuI6GNFIF27n4T/nnY1McWP+wOKPqrNc/VXQn3loG3VcdXly84yw
 9GogTqFwy0gn1aZZ7FHhRI6phc81pW015XRdwbYyaQrFCW85o54+V3W5M
 gIOtrPgHSK0ocPN9HRqGitp+R/yc4AAAsF3QMh939bhWoiYw6sCm5DE2T
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GzyuD6uS
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

On Wed, Nov 16, 2022 at 08:04:56AM +0200, Leon Romanovsky wrote:
> On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> > On 11/15/2022 11:57 AM, Leon Romanovsky wrote:
> 
> <...>
> 
> > > > In case of ice driver lspci -vs shows:
> > > > Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> > > > 
> > > > so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> > > > total number of MSI-X in the devlink example from cover letter is 1024.
> > > > 
> > > > I see that mellanox shows:
> > > > Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> > > > 
> > > > I assume that 64 is in this case MSI-X ony for this one PF (it make
> > > > sense).
> > > Yes and PF MSI-X count can be changed through FW configuration tool, as
> > > we need to write new value when the driver is unbound and we need it to
> > > be persistent. Users are expecting to see "stable" number any time they
> > > reboot the server. It is not the case for VFs, as they are explicitly
> > > created after reboots and start "fresh" after every boot.
> > > 
> > > So we set large enough but not too large value as a default for PFs.
> > > If you find sane model of how to change it through kernel, you can count
> > > on our support.
> > 
> > I guess one main difference is that in case of ice, PF driver manager resources
> > for all its associated functions, not the FW. So the MSI-X count reported for PF
> > shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
> > to get their MSI-X vector information.
> 
> What is the output of lspci for ice VF when the driver is not bound?
> 
> Thanks
> 

It is the same after creating and after unbonding:
Capabilities: [70] MSI-X: Enable- Count=17 Masked-

17, because 16 for traffic and 1 for mailbox.

Thanks
> > 
> > 
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
