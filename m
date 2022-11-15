Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110C5629300
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 09:11:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C0244051D;
	Tue, 15 Nov 2022 08:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C0244051D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668499888;
	bh=XUk20qlVqbgvW3C+P525ufqshoB+7m0tsm57AN963dg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H2zs3RgeWQyHFrRR7IbVyWtcMiejefiGNOqKKnY23Jf1lrj/FLspM1WLEskZYpt4j
	 J7Swvw0PjdEsmjQ2Bqyok6e9p3Lh3ivcvIGpbqm8LcyJpfNLEY66YBnmF5ya9RXQiU
	 QIinmB1RsEX5pPacIG+ljrk3G81TAbYcc4fuqqoB8bmL71W6XtUuPpU0ancaOJqago
	 x4Nf4pRgfQsX4x0QqoufSkCzitxsl24jGuUfqVQAi/mRC4w+iac7WCe4dGJBOiKDnB
	 au6q13XYWkUIdOgZK2NH4ziwkXVdJwzxHDPMAigXO9kKgNJjXQn0Ivn51mgEsATrby
	 5peu4h+QqYOmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1WIaXWb0oaY6; Tue, 15 Nov 2022 08:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 803EC4010F;
	Tue, 15 Nov 2022 08:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 803EC4010F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC3CD1BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 08:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91E0C60BD2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 08:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91E0C60BD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b6qX8eKUE7Ic for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 08:11:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AE2C60AE5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AE2C60AE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 08:11:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2385961566;
 Tue, 15 Nov 2022 08:11:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3F70C433C1;
 Tue, 15 Nov 2022 08:11:18 +0000 (UTC)
Date: Tue, 15 Nov 2022 10:11:10 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3NJnhxetoSIvqYV@unreal>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <Y3J16ueuhwYeDaww@unreal> <Y3M79CuAQNLkFV0S@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3M79CuAQNLkFV0S@localhost.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668499879;
 bh=YU9O8BXzL5RZdjnkaA1Jic3PC7zvof9cNShn8gDmYcs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OPLoMgeNlwWr3z4BmGuQ4CyiSn5/iKfrTLg11E4+FYQC4WlUq7aYSJOGq0ZAx5r/L
 KKRGV3cGmDLVZsW2H+HWTats3YoXtWX3M9/uqoMxqYNRzyGVC1SyvgEklt+XCAFcYX
 I0f0UduvmgDmLkpsq/ijyjIcP00mo5Eq4MkRuElPTtnhwCCjKp/dlRAzPL5xLKswK8
 EwSnYr5PD+chq3m7BJ8a3vT6IfkgFd4vdOBfdsyTUL3QF4ph9U5FTLMHyXosBG9Z0b
 tTQXWS5+3U1W9exj7enmTqPm1iAK2rCVrkmjy0Uui7E3ipOpHr7fSLqKlPRmoyTWUh
 MyT6iRkATKjig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OPLoMgeN
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

On Tue, Nov 15, 2022 at 08:12:52AM +0100, Michal Swiatkowski wrote:
> On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
> > On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
> > > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > > > Currently the default value for number of PF vectors is number of CPUs.
> > > > > Because of that there are cases when all vectors are used for PF
> > > > > and user can't create more VFs. It is hard to set default number of
> > > > > CPUs right for all different use cases. Instead allow user to choose
> > > > > how many vectors should be used for various features. After implementing
> > > > > subdevices this mechanism will be also used to set number of vectors
> > > > > for subfunctions.
> > > > > 
> > > > > The idea is to set vectors for eth or VFs using devlink resource API.
> > > > > New value of vectors will be used after devlink reinit. Example
> > > > > commands:
> > > > > $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > > > $ sudo devlink dev reload pci/0000:31:00.0
> > > > > After reload driver will work with 16 vectors used for eth instead of
> > > > > num_cpus.
> > > > By saying "vectors", are you referring to MSI-X vectors?
> > > > If yes, you have specific interface for that.
> > > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > > 
> > > This patch series is exposing a resources API to split the device level MSI-X vectors
> > > across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
> > > in future subfunctions). Today this is all hidden in a policy implemented within
> > > the PF driver.
> > 
> > Maybe we are talking about different VFs, but if you refer to PCI VFs,
> > the amount of MSI-X comes from PCI config space for that specific VF.
> > 
> > You shouldn't set any value through netdev as it will cause to
> > difference in output between lspci (which doesn't require any driver)
> > and your newly set number.
> 
> If I understand correctly, lspci shows the MSI-X number for individual
> VF. Value set via devlink is the total number of MSI-X that can be used
> when creating VFs. 

Yes and no, lspci shows how much MSI-X vectors exist from HW point of
view. Driver can use less than that. It is exactly as your proposed
devlink interface.


> As Jake said I will fix the code to track both values. Thanks for pointing the patch.
> 
> > 
> > Also in RDMA case, it is not clear what will you achieve by this
> > setting too.
> >
> 
> We have limited number of MSI-X (1024) in the device. Because of that
> the amount of MSI-X for each feature is set to the best values. Half for
> ethernet, half for RDMA. This patchset allow user to change this values.
> If he wants more MSI-X for ethernet, he can decrease MSI-X for RDMA.

RDMA devices doesn't have PCI logic and everything is controlled through
you main core module. It means that when you create RDMA auxiliary device,
it will be connected to netdev (RoCE and iWARP) and that netdev should
deal with vectors. So I still don't understand what does it mean "half
for RDMA".

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
