Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D9A6293CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 10:05:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 707D060BD2;
	Tue, 15 Nov 2022 09:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 707D060BD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668503106;
	bh=NYz7yR8BCOyVJpY8l+BM1ZiuHfI/1IOXmDl4LLzmANU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fOiUxDk0Lql4wOgf1dLKaHIBr7JRibAEzYOXJzx2fvInmlxR/Lm8PJNpX/YP1YINz
	 fnrkxDvr8jBrIyYRMxXmoNTXxyUO7PleTaqStVOBgga2iMMUilVWduZOM4chwUV4Pv
	 wDpd2cWrQCS8ZKNhm2yjo67B199CvaSvdf3zxSYNPSj1P7hgio1iEnE2LtalVIBD7m
	 zxlBklsAHvyxkrybRqlNzdv4yQwgnsHZq6+qeVA2MkObMSkku34WyUAvKbCt9CO6Qq
	 OJoszKH0e+kuHq0QaV/XG8QNTG2DtTkPxzoNHTxp4q6a3Lg0oRnnnypGxmEtz3dO9D
	 TBTpaUU/aAQOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alxlsF4uoZpi; Tue, 15 Nov 2022 09:05:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FFC260BE9;
	Tue, 15 Nov 2022 09:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FFC260BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0C311BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 874A04025A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:05:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 874A04025A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rCu-6v9PreV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 09:04:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23A2C40250
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23A2C40250
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:04:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="299727799"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="299727799"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 01:04:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="671925437"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="671925437"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 01:04:53 -0800
Date: Tue, 15 Nov 2022 10:04:49 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3NWMVF2LV/0lqJX@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <Y3J16ueuhwYeDaww@unreal> <Y3M79CuAQNLkFV0S@localhost.localdomain>
 <Y3NJnhxetoSIvqYV@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3NJnhxetoSIvqYV@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668503099; x=1700039099;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6FkxS4cANWaUESfuMLdoZsrff3t5CTuLaCBcihgGJ8k=;
 b=ADCR9MOzcrStwUUc1oC4Qcn2KoQAo9y2tPla3egAp6PMmMleHT0s/gLB
 xwCM0bFQInYoMwnuc7kTma1mcpOSbqoed++pn0quyASsThbgEljOUTFpA
 Esng3I42AP+ylWUe6kqj4vwqV//gTetu6soiwz6lrcWa44ym9ZNirK8F/
 VJUUHt2DuPAbD1YdURbXWKpeMe2hbUCsf9VY8HaOCgySIQuwFdHBzgzRm
 5L1Vk0Y+1TGcqDL7V9+8o44B3LBJjCU9SIXSM4mBzv169F16TgKNW0Qpt
 4gmlyfcBjBOJH5eOlXRNoSEhMD4o2YPDmfOOyViJwi50zfmClIMEb7zl4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ADCR9MOz
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

On Tue, Nov 15, 2022 at 10:11:10AM +0200, Leon Romanovsky wrote:
> On Tue, Nov 15, 2022 at 08:12:52AM +0100, Michal Swiatkowski wrote:
> > On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
> > > On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
> > > > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > > > > Currently the default value for number of PF vectors is number of CPUs.
> > > > > > Because of that there are cases when all vectors are used for PF
> > > > > > and user can't create more VFs. It is hard to set default number of
> > > > > > CPUs right for all different use cases. Instead allow user to choose
> > > > > > how many vectors should be used for various features. After implementing
> > > > > > subdevices this mechanism will be also used to set number of vectors
> > > > > > for subfunctions.
> > > > > > 
> > > > > > The idea is to set vectors for eth or VFs using devlink resource API.
> > > > > > New value of vectors will be used after devlink reinit. Example
> > > > > > commands:
> > > > > > $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > > > > $ sudo devlink dev reload pci/0000:31:00.0
> > > > > > After reload driver will work with 16 vectors used for eth instead of
> > > > > > num_cpus.
> > > > > By saying "vectors", are you referring to MSI-X vectors?
> > > > > If yes, you have specific interface for that.
> > > > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > > > 
> > > > This patch series is exposing a resources API to split the device level MSI-X vectors
> > > > across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
> > > > in future subfunctions). Today this is all hidden in a policy implemented within
> > > > the PF driver.
> > > 
> > > Maybe we are talking about different VFs, but if you refer to PCI VFs,
> > > the amount of MSI-X comes from PCI config space for that specific VF.
> > > 
> > > You shouldn't set any value through netdev as it will cause to
> > > difference in output between lspci (which doesn't require any driver)
> > > and your newly set number.
> > 
> > If I understand correctly, lspci shows the MSI-X number for individual
> > VF. Value set via devlink is the total number of MSI-X that can be used
> > when creating VFs. 
> 
> Yes and no, lspci shows how much MSI-X vectors exist from HW point of
> view. Driver can use less than that. It is exactly as your proposed
> devlink interface.
> 
> 

Ok, I have to take a closer look at it. So, are You saing that we should
drop this devlink solution and use sysfs interface fo VFs or are You
fine with having both? What with MSI-X allocation for subfunction?

> > As Jake said I will fix the code to track both values. Thanks for pointing the patch.
> > 
> > > 
> > > Also in RDMA case, it is not clear what will you achieve by this
> > > setting too.
> > >
> > 
> > We have limited number of MSI-X (1024) in the device. Because of that
> > the amount of MSI-X for each feature is set to the best values. Half for
> > ethernet, half for RDMA. This patchset allow user to change this values.
> > If he wants more MSI-X for ethernet, he can decrease MSI-X for RDMA.
> 
> RDMA devices doesn't have PCI logic and everything is controlled through
> you main core module. It means that when you create RDMA auxiliary device,
> it will be connected to netdev (RoCE and iWARP) and that netdev should
> deal with vectors. So I still don't understand what does it mean "half
> for RDMA".
>

Yes, it is controlled by module, but during probe, MSI-X vectors for RDMA
are reserved and can't be used by ethernet. For example I have
64 CPUs, when loading I get 64 vectors from HW for ethernet and 64 for
RDMA. The vectors for RDMA will be consumed by irdma driver, so I won't
be able to use it in ethernet and vice versa.

By saing it can't be used I mean that irdma driver received the MSI-X
vectors number and it is using them (connected them with RDMA interrupts).

Devlink resource is a way to change the number of MSI-X vectors that
will be reserved for RDMA. You wrote that netdev should deal with
vectors, but how netdev will know how many vectors should go to RDMA aux
device? Does there an interface for setting the vectors amount for RDMA
device?

Thanks

> Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
