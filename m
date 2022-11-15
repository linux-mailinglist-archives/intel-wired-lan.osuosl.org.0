Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C397562945C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 10:32:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8E6A40182;
	Tue, 15 Nov 2022 09:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8E6A40182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668504747;
	bh=kUvfesloYg62jpKVzyTWwaYp2HV8tKG3hdG5498+itk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vY/DZu/RR4ag/vT8Gg7x/T4hoC71HEgkMZleeZzda9v+bDFkPLE0nz+5u1j/IBxpN
	 XxAjuCKgoCfU4lMZ3VpPQ9qsTXSqOjf+JMzUYrNio68+oiVzkSSOTRhLG0OW96PYv3
	 Ggw/NKkpnxk+HfmnJAPY1vhSYwSQkUqlL27l2iDScGmijM7+wJYIvJLcocXCc6S0CR
	 BZX28x6Q1kY8P5/y/8zkra/Ii7GyXgrE1WJUEJ69npSAujGX38LkyBawDVSc/MiEE/
	 tzbjvagNwynrDAAHTbkbPwhhLRZzM64WcrRnVjtOIImBfp+WF5QzSp5O/9f3+RyFi5
	 CGmkaDNX5zC8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLkIDela6ccU; Tue, 15 Nov 2022 09:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78688400AF;
	Tue, 15 Nov 2022 09:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78688400AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDE01BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 337A7401B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 337A7401B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QH7JMW9YqbpD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 09:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B391400AF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B391400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:32:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D1A246159E;
 Tue, 15 Nov 2022 09:32:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7191EC433D6;
 Tue, 15 Nov 2022 09:32:18 +0000 (UTC)
Date: Tue, 15 Nov 2022 11:32:14 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3NcnnNtmL+SSLU+@unreal>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <Y3J16ueuhwYeDaww@unreal> <Y3M79CuAQNLkFV0S@localhost.localdomain>
 <Y3NJnhxetoSIvqYV@unreal> <Y3NWMVF2LV/0lqJX@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3NWMVF2LV/0lqJX@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668504739;
 bh=wPyDIlafVi9vwn2PVi5AiLba67I8BO9eLvWZrnYixeA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bc60fjHO2SboRDsO85q+8M7zLw9VYFXIlIZpVJtINa/lKO37dUEMMgxYX0RaEjS8K
 eJKoecQRnvNJWmg7qzvC7A/MuhAyC1+20pN/V4EkHLjaG3l1JPvTDpKiQvXlskekux
 XAdw+bO8H8PiamM/aPT9fTr/j9sw4Kn0ZqB7CljIS/J9QvGE+NHvV+4V4EM9LYgGik
 9GCZLXe8QHfwSWRUQYb/+3DyQ86zoyFd8s9+dW99zedlS46BbyT+lBPvAzxRlOnT/G
 EZzj7GM2ugb0GZ5Z18LJT9n0a3URunZQMyzO0p6YStyuX9ruk4dXq7TjE9WNeF7qSX
 dsboRdnVKznMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Bc60fjHO
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

On Tue, Nov 15, 2022 at 10:04:49AM +0100, Michal Swiatkowski wrote:
> On Tue, Nov 15, 2022 at 10:11:10AM +0200, Leon Romanovsky wrote:
> > On Tue, Nov 15, 2022 at 08:12:52AM +0100, Michal Swiatkowski wrote:
> > > On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
> > > > On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
> > > > > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > > > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > > > > > Currently the default value for number of PF vectors is number of CPUs.
> > > > > > > Because of that there are cases when all vectors are used for PF
> > > > > > > and user can't create more VFs. It is hard to set default number of
> > > > > > > CPUs right for all different use cases. Instead allow user to choose
> > > > > > > how many vectors should be used for various features. After implementing
> > > > > > > subdevices this mechanism will be also used to set number of vectors
> > > > > > > for subfunctions.
> > > > > > > 
> > > > > > > The idea is to set vectors for eth or VFs using devlink resource API.
> > > > > > > New value of vectors will be used after devlink reinit. Example
> > > > > > > commands:
> > > > > > > $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > > > > > $ sudo devlink dev reload pci/0000:31:00.0
> > > > > > > After reload driver will work with 16 vectors used for eth instead of
> > > > > > > num_cpus.
> > > > > > By saying "vectors", are you referring to MSI-X vectors?
> > > > > > If yes, you have specific interface for that.
> > > > > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > > > > 
> > > > > This patch series is exposing a resources API to split the device level MSI-X vectors
> > > > > across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
> > > > > in future subfunctions). Today this is all hidden in a policy implemented within
> > > > > the PF driver.
> > > > 
> > > > Maybe we are talking about different VFs, but if you refer to PCI VFs,
> > > > the amount of MSI-X comes from PCI config space for that specific VF.
> > > > 
> > > > You shouldn't set any value through netdev as it will cause to
> > > > difference in output between lspci (which doesn't require any driver)
> > > > and your newly set number.
> > > 
> > > If I understand correctly, lspci shows the MSI-X number for individual
> > > VF. Value set via devlink is the total number of MSI-X that can be used
> > > when creating VFs. 
> > 
> > Yes and no, lspci shows how much MSI-X vectors exist from HW point of
> > view. Driver can use less than that. It is exactly as your proposed
> > devlink interface.
> > 
> > 
> 
> Ok, I have to take a closer look at it. So, are You saing that we should
> drop this devlink solution and use sysfs interface fo VFs or are You
> fine with having both? What with MSI-X allocation for subfunction?

You should drop for VFs and PFs and keep it for SFs only.

> 
> > > As Jake said I will fix the code to track both values. Thanks for pointing the patch.
> > > 
> > > > 
> > > > Also in RDMA case, it is not clear what will you achieve by this
> > > > setting too.
> > > >
> > > 
> > > We have limited number of MSI-X (1024) in the device. Because of that
> > > the amount of MSI-X for each feature is set to the best values. Half for
> > > ethernet, half for RDMA. This patchset allow user to change this values.
> > > If he wants more MSI-X for ethernet, he can decrease MSI-X for RDMA.
> > 
> > RDMA devices doesn't have PCI logic and everything is controlled through
> > you main core module. It means that when you create RDMA auxiliary device,
> > it will be connected to netdev (RoCE and iWARP) and that netdev should
> > deal with vectors. So I still don't understand what does it mean "half
> > for RDMA".
> >
> 
> Yes, it is controlled by module, but during probe, MSI-X vectors for RDMA
> are reserved and can't be used by ethernet. For example I have
> 64 CPUs, when loading I get 64 vectors from HW for ethernet and 64 for
> RDMA. The vectors for RDMA will be consumed by irdma driver, so I won't
> be able to use it in ethernet and vice versa.
> 
> By saing it can't be used I mean that irdma driver received the MSI-X
> vectors number and it is using them (connected them with RDMA interrupts).
> 
> Devlink resource is a way to change the number of MSI-X vectors that
> will be reserved for RDMA. You wrote that netdev should deal with
> vectors, but how netdev will know how many vectors should go to RDMA aux
> device? Does there an interface for setting the vectors amount for RDMA
> device?

When RDMA core adds device, it calls to irdma_init_rdma_device() and
num_comp_vectors is actually the number of MSI-X vectors which you want
to give to that device.

I'm trying to say that probably you shouldn't reserve specific vectors
for both ethernet and RDMA and simply share same vectors. RDMA applications
that care about performance set comp_vector through user space verbs anyway.

Thanks

> 
> Thanks
> 
> > Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
