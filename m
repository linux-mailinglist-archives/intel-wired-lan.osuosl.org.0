Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A2043294F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 23:51:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 524BA827D8;
	Mon, 18 Oct 2021 21:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nl3XMJrExRyy; Mon, 18 Oct 2021 21:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F84080FDE;
	Mon, 18 Oct 2021 21:51:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19BB61BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 21:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 138AD402AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 21:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwI6eSFn0U7w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 21:50:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3142740154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 21:50:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66F5E6108E;
 Mon, 18 Oct 2021 21:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634593849;
 bh=dt3MSeiRt5AB2vSPHXjLfcp5bM2lLSUVx63oQi8vToQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=VeuvmacIvYL9IMSRGYDE1FBQuwvFqvBnTCajrHldlrgBzL1sXsAH+9uhPE2pHG487
 NvYriGozxDhha+VKANql+j0andbbkgb91zmIdSlKsyC1Pt3y6dlvdcLuL//Baz82fj
 Qr3gq3ip6xLkDigfAvySsJvPH/McfT0qy2zOsTW/+Iml7/qLIMHA6N6wvcTbB6W+Ai
 wxxAoUw5gCd/OLU77uVvG3KOP+N4YMUsGdssjtePDHVUR81TQoIO+RdXYG480M0+9e
 Rp/1USfHd1YXRlRTBWize16a3J4ZelsYCYxrEF2PY9r2Jrn1zQsRBaobmR3eFryZtY
 DUSul52ithVhw==
Date: Mon, 18 Oct 2021 16:50:47 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Barry Song <21cnbao@gmail.com>
Message-ID: <20211018215047.GA2265015@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210825102636.52757-1-21cnbao@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 0/3] PCI/MSI: Clarify the IRQ sysfs
 ABI for PCI devices
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, leon@kernel.org, corbet@lwn.net,
 mchehab+huawei@kernel.org, maz@kernel.org, schnelle@linux.ibm.com,
 linux-pci@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, Jonathan.Cameron@huawei.com,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org, tglx@linutronix.de,
 luzmaximilian@gmail.com, bilbao@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 25, 2021 at 06:26:33PM +0800, Barry Song wrote:
> From: Barry Song <song.bao.hua@hisilicon.com>
> 
> 
> /sys/bus/pci/devices/.../irq has been there for many years but it has never
> been documented. This patchset is trying to clarify it.
> 
> -v3:
>   - Don't attempt to modify the current behaviour of IRQ ABI for MSI-X
>   - Make MSI IRQ ABI more explicit(return 1st IRQ of the IRQ vector)
>   - Add Marc's patch of removing default_irq from the previous comment to
>     the series.
>   Note patch 3/3 indirectly changed the code of pci_restore_msi_state(),
>   drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c is the only driver
>   calling this API. I would appreciate testing done from this driver's
>   maintainers.
> 
> -v2:
>   - split into two patches according to Bjorn's comments;
>   - Add Greg's Acked-by, thanks for reviewing!
>   https://lore.kernel.org/lkml/20210820223744.8439-1-21cnbao@gmail.com/
> 
> -v1:
>   https://lore.kernel.org/lkml/20210813122650.25764-1-21cnbao@gmail.com/#t
> 
> Barry Song (2):
>   Documentation: ABI: sysfs-bus-pci: Add description for IRQ entry
>   PCI/sysfs: Don't depend on pci_dev.irq for IRQ entry

I applied the first two (above) to pci/msi for v5.16, thanks!

As far as I can tell from the discussion so far, they should be safe
and should preserve all existing behavior.  The second patch should
remove the sysfs dependency on the PCI core to swap the INTx and first
MSI IRQ values in dev->irq.

Marc's patch below is certainly desirable but my understanding is that
it requires some driver updates first.

> Marc Zyngier (1):
>   PCI/MSI: remove msi_attrib.default_irq in msi_desc
> 
>  Documentation/ABI/testing/sysfs-bus-pci | 10 ++++++++++
>  drivers/pci/msi.c                       | 12 +++++-------
>  drivers/pci/pci-sysfs.c                 | 23 ++++++++++++++++++++++-
>  include/linux/msi.h                     |  2 --
>  4 files changed, 37 insertions(+), 10 deletions(-)
> 
> -- 
> 1.8.3.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
