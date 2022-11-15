Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7B062924B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 08:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7754540A45;
	Tue, 15 Nov 2022 07:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7754540A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668496389;
	bh=+mNpGhV9vemYceFeyKxnUGXSiorgIZMB8lECrMPfRd0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=37qsJg+oe0JhI+HZapn19jLX6Ds2twW2g2E2Xz9/GQRMUzysFdNig5JUH7FVZ91IS
	 E11mreYxbRWjst5IFZJHRi/n7JH+bVffJtB506oebRb3stDNIVg9dcrkBeQn7tMlmx
	 NxYHS0Of/+oo8I4CD5tPFrNKlwKM4EGw5xW8Gj96XVApfCWTREe7WXruMJUtcWIehV
	 dcVWyYiXlVVkHcv/qbMRKdMuveMuUhq+QfBvQqBOfw/fr5SJXaPcrZsXI9vBfVmcDV
	 1YPVzLREaO7C/ZjFHpBaXBTRtQq+e6SUq5SyOf9hbuVd8ZRxKQM/qUuJwXIlKEydBL
	 IB1tuDfdmkoJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g_O__Muo_thh; Tue, 15 Nov 2022 07:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E0B97405A6;
	Tue, 15 Nov 2022 07:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0B97405A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCE391BF293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 07:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C124860B0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 07:13:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C124860B0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQYA0chWz-px for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 07:13:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5F3460B0E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5F3460B0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 07:13:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="376450460"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="376450460"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:13:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="883850552"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="883850552"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:12:56 -0800
Date: Tue, 15 Nov 2022 08:12:52 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3M79CuAQNLkFV0S@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <Y3J16ueuhwYeDaww@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3J16ueuhwYeDaww@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668496381; x=1700032381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=U0cuLmTVT0o6Qnp0FZRYpkRPVW6YaC5U9TAwsuoNBTk=;
 b=YliNckUVbpoY+5AxEOjTAC4qW67aAgjahw5wxT/kNaiTg3VPHGscIMTz
 vtCSxes3pND9bfoRMEXVk4R+bSmG2XVpLHH4xksL10XjA2YiJ59BinAyq
 +gOXfKTnNhBoevOl3z4gmAkUO7cDFsKGYPUW+ZFI5/NAt3BGjgLVehHkC
 bAWtLsW+pWTP+cOWhE0/Cg8X7B0ahuAEo1BAxuMVRMwF69r1V44HV3ruX
 cSbtkcHx8bOaixUd/p8Qfn2pEx0vI7hVDxuE+C+t3iNitDCeAxyYupQAu
 QUt7LOUEBSodDsDQ/0miqR+Ur/sBYITkTaIKTRQEqkpTUg/78J6YophBW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YliNckUV
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

On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
> On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
> > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > > Currently the default value for number of PF vectors is number of CPUs.
> > > > Because of that there are cases when all vectors are used for PF
> > > > and user can't create more VFs. It is hard to set default number of
> > > > CPUs right for all different use cases. Instead allow user to choose
> > > > how many vectors should be used for various features. After implementing
> > > > subdevices this mechanism will be also used to set number of vectors
> > > > for subfunctions.
> > > > 
> > > > The idea is to set vectors for eth or VFs using devlink resource API.
> > > > New value of vectors will be used after devlink reinit. Example
> > > > commands:
> > > > $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > > $ sudo devlink dev reload pci/0000:31:00.0
> > > > After reload driver will work with 16 vectors used for eth instead of
> > > > num_cpus.
> > > By saying "vectors", are you referring to MSI-X vectors?
> > > If yes, you have specific interface for that.
> > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > 
> > This patch series is exposing a resources API to split the device level MSI-X vectors
> > across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
> > in future subfunctions). Today this is all hidden in a policy implemented within
> > the PF driver.
> 
> Maybe we are talking about different VFs, but if you refer to PCI VFs,
> the amount of MSI-X comes from PCI config space for that specific VF.
> 
> You shouldn't set any value through netdev as it will cause to
> difference in output between lspci (which doesn't require any driver)
> and your newly set number.

If I understand correctly, lspci shows the MSI-X number for individual
VF. Value set via devlink is the total number of MSI-X that can be used
when creating VFs. As Jake said I will fix the code to track both
values. Thanks for pointing the patch.

> 
> Also in RDMA case, it is not clear what will you achieve by this
> setting too.
>

We have limited number of MSI-X (1024) in the device. Because of that
the amount of MSI-X for each feature is set to the best values. Half for
ethernet, half for RDMA. This patchset allow user to change this values.
If he wants more MSI-X for ethernet, he can decrease MSI-X for RDMA.

> Thanks

Thanks for reviewing
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
