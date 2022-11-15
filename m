Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B44762A0CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 18:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46FDC60E5D;
	Tue, 15 Nov 2022 17:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46FDC60E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668535045;
	bh=zqBruil9++Jp5S6QTA12jtDpFUKf3aX5DESoPq9x2H0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z3RBN5GnBxfdSlWG7H/xFGtT2yd7y3EdTMSi6I/66RU7HjaLYiFq8f1ZIi5XDNKX4
	 g70dwdUq9nKR27BwaB/nDoSWC3fjoNoPzfim+OZ4b9c+DAi0rVMWFQBEltt9d+KnLO
	 z/PaVk5K6H+TnwAsBqqVcqlsR6wtjAJmzO5ZJ9I4niUO8khw/NuTorN4bwU44oYDQw
	 4GIsxtSv2ukVAGgo8vKSxgQCde5nUU5q00ubfTFnbV3QudKSVPANpKDJu0iF/tb1tU
	 5jhbjXQHykkxqZYxottLrixru5iamsUzxR2++RHdcZWhOhTZJPzEl9zej1ljv62yP5
	 lHgBE2s1FKAPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQlDzsVAtM3e; Tue, 15 Nov 2022 17:57:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF1D560C1F;
	Tue, 15 Nov 2022 17:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF1D560C1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAD691BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 17:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A41D460C1F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 17:57:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A41D460C1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5DtmfJIHDnQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 17:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FE8360709
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FE8360709
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 17:57:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 47970B81A58;
 Tue, 15 Nov 2022 17:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14661C433B5;
 Tue, 15 Nov 2022 17:57:13 +0000 (UTC)
Date: Tue, 15 Nov 2022 19:57:09 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3PS9e9MJEZo++z5@unreal>
References: <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <Y3J16ueuhwYeDaww@unreal> <Y3M79CuAQNLkFV0S@localhost.localdomain>
 <Y3NJnhxetoSIvqYV@unreal> <Y3NWMVF2LV/0lqJX@localhost.localdomain>
 <Y3NcnnNtmL+SSLU+@unreal> <Y3NnGk7DCo/1KfpD@localhost.localdomain>
 <Y3OCHLiCzOUKLlHa@unreal> <Y3OcAJBfzgggVll9@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3OcAJBfzgggVll9@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668535033;
 bh=ytdtL8Krb2Fy+/2ovCnOJ064N/5g/txm0wO9lFhbuEM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Drq5vCtOJRGwbRZCxWide6MhePg2ScL3R5k+u9p6hnOHu8D4qr/jFiWcjJXcsRDqJ
 Nk9oW4pWOjxHVrx1dWQtW0O75Xju4XkMrqEhqgFoVgNjs96jK274/vq+6KI9KHgWvk
 rkHH2ajFs2Yr/JvszpCtsd4eVgjQlGaj5FleJDRJAdkA++JhRohUXX8vfAQ5CaCHm1
 I0+d9j1wOglnZgEk36o2vFGRJztKi0oKzUmArduQQCtMq+x1vLGC52kpeOnfIkR+4L
 hAp8SNBfExwmmOm3lcUcXy7XGtdoe/X5T78eXWjUVbdkzY2nrhIcQvbHzdVNwf/Gol
 FKOWlsEqIfG7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Drq5vCtO
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

On Tue, Nov 15, 2022 at 03:02:40PM +0100, Michal Swiatkowski wrote:
> On Tue, Nov 15, 2022 at 02:12:12PM +0200, Leon Romanovsky wrote:
> > On Tue, Nov 15, 2022 at 11:16:58AM +0100, Michal Swiatkowski wrote:
> > > On Tue, Nov 15, 2022 at 11:32:14AM +0200, Leon Romanovsky wrote:
> > > > On Tue, Nov 15, 2022 at 10:04:49AM +0100, Michal Swiatkowski wrote:
> > > > > On Tue, Nov 15, 2022 at 10:11:10AM +0200, Leon Romanovsky wrote:
> > > > > > On Tue, Nov 15, 2022 at 08:12:52AM +0100, Michal Swiatkowski wrote:
> > > > > > > On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
> > > > > > > > On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
> > > > > > > > > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > > > > > > > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > > > > > > > > > Currently the default value for number of PF vectors is number of CPUs.
> > > > > > > > > > > Because of that there are cases when all vectors are used for PF
> > > > > > > > > > > and user can't create more VFs. It is hard to set default number of
> > > > > > > > > > > CPUs right for all different use cases. Instead allow user to choose
> > > > > > > > > > > how many vectors should be used for various features. After implementing
> > > > > > > > > > > subdevices this mechanism will be also used to set number of vectors
> > > > > > > > > > > for subfunctions.
> > > > > > > > > > > 
> > > > > > > > > > > The idea is to set vectors for eth or VFs using devlink resource API.
> > > > > > > > > > > New value of vectors will be used after devlink reinit. Example
> > > > > > > > > > > commands:
> > > > > > > > > > > $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > > > > > > > > > $ sudo devlink dev reload pci/0000:31:00.0
> > > > > > > > > > > After reload driver will work with 16 vectors used for eth instead of
> > > > > > > > > > > num_cpus.
> > > > > > > > > > By saying "vectors", are you referring to MSI-X vectors?
> > > > > > > > > > If yes, you have specific interface for that.
> > > > > > > > > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > > > > > > > > 
> > > > > > > > > This patch series is exposing a resources API to split the device level MSI-X vectors
> > > > > > > > > across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
> > > > > > > > > in future subfunctions). Today this is all hidden in a policy implemented within
> > > > > > > > > the PF driver.
> > > > > > > > 
> > > > > > > > Maybe we are talking about different VFs, but if you refer to PCI VFs,
> > > > > > > > the amount of MSI-X comes from PCI config space for that specific VF.
> > > > > > > > 
> > > > > > > > You shouldn't set any value through netdev as it will cause to
> > > > > > > > difference in output between lspci (which doesn't require any driver)
> > > > > > > > and your newly set number.
> > > > > > > 
> > > > > > > If I understand correctly, lspci shows the MSI-X number for individual
> > > > > > > VF. Value set via devlink is the total number of MSI-X that can be used
> > > > > > > when creating VFs. 
> > > > > > 
> > > > > > Yes and no, lspci shows how much MSI-X vectors exist from HW point of
> > > > > > view. Driver can use less than that. It is exactly as your proposed
> > > > > > devlink interface.
> > > > > > 
> > > > > > 
> > > > > 
> > > > > Ok, I have to take a closer look at it. So, are You saing that we should
> > > > > drop this devlink solution and use sysfs interface fo VFs or are You
> > > > > fine with having both? What with MSI-X allocation for subfunction?
> > > > 
> > > > You should drop for VFs and PFs and keep it for SFs only.
> > > > 
> > > 
> > > I understand that MSI-X for VFs can be set via sysfs interface, but what
> > > with PFs? 
> > 
> > PFs are even more tricker than VFs, as you are changing that number
> > while driver is bound. This makes me wonder what will be lspci output,
> > as you will need to show right number before driver starts to load.
> > 
> > You need to present right value if user decided to unbind driver from PF too.
> >
> 
> In case of ice driver lspci -vs shows:
> Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> 
> so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> total number of MSI-X in the devlink example from cover letter is 1024.
> 
> I see that mellanox shows:
> Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> 
> I assume that 64 is in this case MSI-X ony for this one PF (it make
> sense).

Yes and PF MSI-X count can be changed through FW configuration tool, as
we need to write new value when the driver is unbound and we need it to
be persistent. Users are expecting to see "stable" number any time they
reboot the server. It is not the case for VFs, as they are explicitly
created after reboots and start "fresh" after every boot.

So we set large enough but not too large value as a default for PFs.
If you find sane model of how to change it through kernel, you can count
on our support.

> To be honest I don't know why we show maximum MSI-X for the device
> there, but because of that the value will be the same afer changing
> allocation of MSI-X across features.
> 
> Isn't the MSI-X capabilities read from HW register?

Yes, it comes from Message Control register.

> 
> > > Should we always allow max MSI-X for PFs? So hw_max - used -
> > > sfs? Is it save to call pci_enable_msix always with max vectors
> > > supported by device?
> > 
> > I'm not sure. I think that it won't give you much if you enable
> > more than num_online_cpu().
> > 
> 
> Oh, yes, correct, I missed that.
> 
> > > 
> > > I added the value for PFs, because we faced a problem with MSI-X
> > > allocation on 8 port device. Our default value (num_cpus) was too big
> > > (not enough vectors in hw). Changing the amount of vectors that can be
> > > used on PFs was solving the issue.
> > 
> > We had something similar for mlx5 SFs, where we don't have enough vectors.
> > Our solution is simply to move to automatic shared MSI-X mode. I would
> > advocate for that for you as well. 
> >
> 
> Thanks for proposing solution, I will take a look how this work in mlx5.

BTW, PCI spec talks about something like that in short paragraph
"Handling MSI-X Vector Shortages".

<...>

> > > 
> > > Assuming that I gave 64 MSI-X for RDMA by setting num_comp_vectors to
> > > 64, how I will know if I can or can't use these vectors in ethernet?
> > 
> > Why should you need to know? Vectors are not exclusive and they can be
> > used by many applications at the same time. The thing is that it is far
> > fetch to except that high performance RDMA applications and high
> > performance ethernet can coexist on same device at the same time.
> >
> 
> Yes, but after loading aux device part of vectors (num_comp_vectors) are
> reserved for only RDMA use case (at least in ice driver). We though that
> devlink resource interface can be a good way to change the
> num_comp_vectors in this case.

It can be, but is much better to save from users devlink magic. :)

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
