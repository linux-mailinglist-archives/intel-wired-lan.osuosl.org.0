Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B228629591
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 11:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AB3F409AC;
	Tue, 15 Nov 2022 10:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AB3F409AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668507436;
	bh=rLnHIj1Fb0YO+OnSropXtwHWqQ3/dM6vYXr0wODYulQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v5hhW5QUXt232jv0tCK/EYMzmzgevS8ZQ+t4kUNYLC8HtrpL0LKjCKdTYQKS0ozPp
	 bgUBZqefRfJQ9tOHgp2NFn5C8lDe8Sv08WcA3RHCmRLCXmeYeZWUEDR4Xm8jgVvMfm
	 kpSuZXn5pjjz+unDA7VgEeZ3Dgw5NN399T8FrXaZt948515aAG3PbLUSLAKwGj4J4c
	 XviILYsxtbCmJVANzQK1NaJkpPfqhP3Ecc+bSszjB63gmEfAehX1hrzE+ALv6pf6Tp
	 pIBgoeO/8GCWzQVFdoxMmyYzJKqJAnUb2cH7H2/jsRAXaahEIc6FEqyWi7mb8pPMX1
	 exbegW22Ng0gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLoej0-1rcPb; Tue, 15 Nov 2022 10:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 691C24003C;
	Tue, 15 Nov 2022 10:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 691C24003C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2CA1BF844
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 10:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 430A360B0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 10:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 430A360B0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aYoae_QqiZwD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 10:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1B8760B0E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1B8760B0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 10:17:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398506798"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="398506798"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 02:17:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="763863309"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="763863309"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 02:17:02 -0800
Date: Tue, 15 Nov 2022 11:16:58 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3NnGk7DCo/1KfpD@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <Y3J16ueuhwYeDaww@unreal> <Y3M79CuAQNLkFV0S@localhost.localdomain>
 <Y3NJnhxetoSIvqYV@unreal> <Y3NWMVF2LV/0lqJX@localhost.localdomain>
 <Y3NcnnNtmL+SSLU+@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3NcnnNtmL+SSLU+@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668507428; x=1700043428;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=g0QQplE9K9kcb4eEH9q04cPzpxec5Hg0hFXSRkHf44U=;
 b=Q6cKS+GK7VQ67BXZrRRglcSnTVHdPkuaEa6HPVH3C57aaZoDjtQiw4+A
 y3Dyv+xC1a+O+h2HETnMZHz3JmbvzBVmy/mzDHD3ueXUfCUIM2Y0HUnmM
 TwuoZvSig1bTe919XN1/rf8g6BzLHeA03wLcWBMa6F8biVzgZA9voHPPE
 j4A9ScmEBmsMZNkIl2CPnS0p5DlH5B9dHBdj+PJ4tKuvchSTqddu04sZC
 vNfusYgGVAf+RxaXSDqqFr/faqkQUZAq8XxKPyqzEyDdkbpsRmZk3oL1l
 ooUydruA/W3pVZ0eJWk8IM4vVU1Bpi56ms6V+S5LC5rwOflIRfcKOZuKp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q6cKS+GK
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

On Tue, Nov 15, 2022 at 11:32:14AM +0200, Leon Romanovsky wrote:
> On Tue, Nov 15, 2022 at 10:04:49AM +0100, Michal Swiatkowski wrote:
> > On Tue, Nov 15, 2022 at 10:11:10AM +0200, Leon Romanovsky wrote:
> > > On Tue, Nov 15, 2022 at 08:12:52AM +0100, Michal Swiatkowski wrote:
> > > > On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
> > > > > On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
> > > > > > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > > > > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > > > > > > Currently the default value for number of PF vectors is number of CPUs.
> > > > > > > > Because of that there are cases when all vectors are used for PF
> > > > > > > > and user can't create more VFs. It is hard to set default number of
> > > > > > > > CPUs right for all different use cases. Instead allow user to choose
> > > > > > > > how many vectors should be used for various features. After implementing
> > > > > > > > subdevices this mechanism will be also used to set number of vectors
> > > > > > > > for subfunctions.
> > > > > > > > 
> > > > > > > > The idea is to set vectors for eth or VFs using devlink resource API.
> > > > > > > > New value of vectors will be used after devlink reinit. Example
> > > > > > > > commands:
> > > > > > > > $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > > > > > > $ sudo devlink dev reload pci/0000:31:00.0
> > > > > > > > After reload driver will work with 16 vectors used for eth instead of
> > > > > > > > num_cpus.
> > > > > > > By saying "vectors", are you referring to MSI-X vectors?
> > > > > > > If yes, you have specific interface for that.
> > > > > > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > > > > > 
> > > > > > This patch series is exposing a resources API to split the device level MSI-X vectors
> > > > > > across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
> > > > > > in future subfunctions). Today this is all hidden in a policy implemented within
> > > > > > the PF driver.
> > > > > 
> > > > > Maybe we are talking about different VFs, but if you refer to PCI VFs,
> > > > > the amount of MSI-X comes from PCI config space for that specific VF.
> > > > > 
> > > > > You shouldn't set any value through netdev as it will cause to
> > > > > difference in output between lspci (which doesn't require any driver)
> > > > > and your newly set number.
> > > > 
> > > > If I understand correctly, lspci shows the MSI-X number for individual
> > > > VF. Value set via devlink is the total number of MSI-X that can be used
> > > > when creating VFs. 
> > > 
> > > Yes and no, lspci shows how much MSI-X vectors exist from HW point of
> > > view. Driver can use less than that. It is exactly as your proposed
> > > devlink interface.
> > > 
> > > 
> > 
> > Ok, I have to take a closer look at it. So, are You saing that we should
> > drop this devlink solution and use sysfs interface fo VFs or are You
> > fine with having both? What with MSI-X allocation for subfunction?
> 
> You should drop for VFs and PFs and keep it for SFs only.
> 

I understand that MSI-X for VFs can be set via sysfs interface, but what
with PFs? Should we always allow max MSI-X for PFs? So hw_max - used -
sfs? Is it save to call pci_enable_msix always with max vectors
supported by device?

I added the value for PFs, because we faced a problem with MSI-X
allocation on 8 port device. Our default value (num_cpus) was too big
(not enough vectors in hw). Changing the amount of vectors that can be
used on PFs was solving the issue.

Let me write an example. As default MSI-X for PF is set to num_cpus, the
platform have 128 CPUs, we have 8 port device installed there and still
have 1024 vectors in HW (I simplified because I don't count additional
interrupts). We run out of vectors, there is 0 vectors that can be used
for VFs. Sure, it is easy to handle, we can divide PFs interrupts by 2
and will end with 512 vectors for VFs. I assume that with current sysfs
interface in this situation MSI-X for VFs can be set from 0 to 512? What
if user wants more? If there is a PFs MSI-X value which can be set by
user, user can decrease the value and use more vectors for VFs. Is it
possible in current VFs sysfs interface? I mean, setting VFs MSI-X
vectors to value that will need to decrease MSI-X for PFs.

> > 
> > > > As Jake said I will fix the code to track both values. Thanks for pointing the patch.
> > > > 
> > > > > 
> > > > > Also in RDMA case, it is not clear what will you achieve by this
> > > > > setting too.
> > > > >
> > > > 
> > > > We have limited number of MSI-X (1024) in the device. Because of that
> > > > the amount of MSI-X for each feature is set to the best values. Half for
> > > > ethernet, half for RDMA. This patchset allow user to change this values.
> > > > If he wants more MSI-X for ethernet, he can decrease MSI-X for RDMA.
> > > 
> > > RDMA devices doesn't have PCI logic and everything is controlled through
> > > you main core module. It means that when you create RDMA auxiliary device,
> > > it will be connected to netdev (RoCE and iWARP) and that netdev should
> > > deal with vectors. So I still don't understand what does it mean "half
> > > for RDMA".
> > >
> > 
> > Yes, it is controlled by module, but during probe, MSI-X vectors for RDMA
> > are reserved and can't be used by ethernet. For example I have
> > 64 CPUs, when loading I get 64 vectors from HW for ethernet and 64 for
> > RDMA. The vectors for RDMA will be consumed by irdma driver, so I won't
> > be able to use it in ethernet and vice versa.
> > 
> > By saing it can't be used I mean that irdma driver received the MSI-X
> > vectors number and it is using them (connected them with RDMA interrupts).
> > 
> > Devlink resource is a way to change the number of MSI-X vectors that
> > will be reserved for RDMA. You wrote that netdev should deal with
> > vectors, but how netdev will know how many vectors should go to RDMA aux
> > device? Does there an interface for setting the vectors amount for RDMA
> > device?
> 
> When RDMA core adds device, it calls to irdma_init_rdma_device() and
> num_comp_vectors is actually the number of MSI-X vectors which you want
> to give to that device.
> 
> I'm trying to say that probably you shouldn't reserve specific vectors
> for both ethernet and RDMA and simply share same vectors. RDMA applications
> that care about performance set comp_vector through user space verbs anyway.
> 

Thanks for explanation, appriciate that. In our driver num_comp_vectors for
RDMA is set during driver probe. Do we have any interface to change
num_comp_vectors while driver is working?

Sorry, I am not fully familiar with RDMA. Can user app for RDMA set
comp_vector to any value or only to max which is num_comp_vectors given
for RDMA while creating aux device?

Assuming that I gave 64 MSI-X for RDMA by setting num_comp_vectors to
64, how I will know if I can or can't use these vectors in ethernet?

Thanks

> Thanks
> 
> > 
> > Thanks
> > 
> > > Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
