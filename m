Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD26E7C7662
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EAA66129B;
	Thu, 12 Oct 2023 19:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EAA66129B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137745;
	bh=DQZ8E3ujyWGTxf2dD/hXh0TgUJ64mnUo9ePqa3nPDzQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BZt91rOtQRRIskmczG21x9Xmox8YUWgmUxPQkCGa3lDaZKifAtQyCKiKbz5lJuuTM
	 0vmrh9H3GgED4Li03cZoE9H+UW0TlTnI8vvOpSAR5pAdFdEXdqknD3fYvZVEwSoCU2
	 lMO/HtQyeKHZn+RTJJy/XezS8S1OpviJNnIB/KHgiJ+C8gzmzwUrfouH+h3IuadRRG
	 cuO9NBdCmwIzIoRKMIhto33Oq9gH9WpmakH2dYssTIRSUI7/BOqciYC1Xb/hNd1BTM
	 at4CvZe7gRFq506yGaoXlM+ZqvaCfhxJgsdGhW94i3VLRzMqjdIFKkzc/Qr8Icznsk
	 geVKPRoJf/l+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilSqdWu3jE3v; Thu, 12 Oct 2023 19:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D8B46128D;
	Thu, 12 Oct 2023 19:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D8B46128D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D40BB1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3C24405EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3C24405EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIXWRSctiVPf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 10:48:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B395404B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B395404B9
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="449077619"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="449077619"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:48:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="898050323"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="898050323"
Received: from asroczyn-mobl.ger.corp.intel.com ([10.249.36.107])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:46:10 -0700
Date: Thu, 12 Oct 2023 13:47:55 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20231011200442.GA1040348@bhelgaas>
Message-ID: <9be4c096-5af5-da3b-b1c6-f028865910da@linux.intel.com>
References: <20231011200442.GA1040348@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-225321872-1697107682=:1692"
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697107691; x=1728643691;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=Q4YhpEkRU/cH/nbWZGVWLLUqkzKXNYUzhpe7dZUuDeI=;
 b=Bf3rYg/q2cY2panvHmSfJwjqCi22cSIOeaSPxvU03zrw1MXxaG8NRokQ
 x8+fNgX0rVUhsdflcTcsXPv28EG19uDSQBCQFeoptLTE+5dH8RhSjip4B
 f7fKIcgzV3zB4CheP6rl+vqJBqTULRc8e6d2J6MzDLoeHrxEdb9d2HrnD
 m3wllHBOqyQcUPVN+E3eit+Nyxnkdx1k8ijzyVfXS/1yNaCSVSKRUZP2S
 3WC4FQsnQIm8bjYrPX9wkPvQHSaZ286Qsf5gqp1XBmEHLYS5kbXJ1u9ec
 N/FoOiiTtEzTTKS6L/vXlVM/boW/FIfnkjAEf5SLdvg4OygCJWb5f3Kpx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bf3rYg/q
Subject: Re: [Intel-wired-lan] [PATCH v2 03/13] PCI/ASPM: Disable ASPM when
 driver requests it
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
Cc: =?ISO-8859-2?Q?Krzysztof_Wilczy=F1ski?= <kw@linux.com>,
 linux-rdma@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, ath12k@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 ath11k@lists.infradead.org, Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org, Netdev <netdev@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-mediatek@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-225321872-1697107682=:1692
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Wed, 11 Oct 2023, Bjorn Helgaas wrote:

> On Mon, Sep 18, 2023 at 04:10:53PM +0300, Ilpo Järvinen wrote:
> > PCI core/ASPM service driver allows controlling ASPM state through
> > pci_disable_link_state() and pci_enable_link_state() API. It was
> > decided earlier (see the Link below), to not allow ASPM changes when OS
> > does not have control over it but only log a warning about the problem
> > (commit 2add0ec14c25 ("PCI/ASPM: Warn when driver asks to disable ASPM,
> > but we can't do it")). Similarly, if ASPM is not enabled through
> > config, ASPM cannot be disabled.
> > 
> > A number of drivers have added workarounds to force ASPM off with own
> > writes into the Link Control Register (some even with comments
> > explaining why PCI core does not disable it under some circumstances).
> > According to the comments, some drivers require ASPM to be off for
> > reliable operation.
> > 
> > Having custom ASPM handling in drivers is problematic because the state
> > kept in the ASPM service driver is not updated by the changes made
> > outside the link state management API.
> > 
> > As the first step to address this issue, make pci_disable_link_state()
> > to unconditionally disable ASPM so the motivation for drivers to come
> > up with custom ASPM handling code is eliminated.
> > 
> > Place the minimal ASPM disable handling into own file as it is too
> > complicated to fit into a header as static inline and it has almost no
> > overlap with the existing, more complicated ASPM code in
> > drivers/pci/pce/aspm.c.
> > 
> > Make pci_disable_link_state() function comment to comply kerneldoc
> > formatting while changing the description.
> > 
> > Link: https://lore.kernel.org/all/CANUX_P3F5YhbZX3WGU-j1AGpbXb_T9Bis2ErhvKkFMtDvzatVQ@mail.gmail.com/
> > Link: https://lore.kernel.org/all/20230511131441.45704-1-ilpo.jarvinen@linux.intel.com/
> > Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> > ---
> >  drivers/pci/pcie/Makefile       |  1 +
> >  drivers/pci/pcie/aspm.c         | 33 ++++++++++-------
> >  drivers/pci/pcie/aspm_minimal.c | 66 +++++++++++++++++++++++++++++++++
> >  include/linux/pci.h             |  6 +--
> >  4 files changed, 88 insertions(+), 18 deletions(-)
> >  create mode 100644 drivers/pci/pcie/aspm_minimal.c
> > 
> > diff --git a/drivers/pci/pcie/Makefile b/drivers/pci/pcie/Makefile
> > index 8de4ed5f98f1..ec7f04037b01 100644
> > --- a/drivers/pci/pcie/Makefile
> > +++ b/drivers/pci/pcie/Makefile
> > @@ -6,6 +6,7 @@ pcieportdrv-y			:= portdrv.o rcec.o
> >  
> >  obj-$(CONFIG_PCIEPORTBUS)	+= pcieportdrv.o
> >  
> > +obj-y				+= aspm_minimal.o
> 
> Can we put this code in drivers/pci/pci.c instead of creating a new
> file for it?  pci.c is kind of a dumping ground and isn't ideal
> either, but we do have a few other things there that we *always* want
> even though they're related to a separate Kconfig feature, e.g.,
> pci_bridge_reconfigure_ltr(), pcie_clear_device_status(),
> pcie_clear_root_pme_status().
> 
> >  obj-$(CONFIG_PCIEASPM)		+= aspm.o
> 
> Or maybe it would be better to just put it in aspm.c, drop this
> compilation guard, and wrap the rest of the file in #ifdef
> CONFIG_PCIEASPM.  Then everything would be in one file, which is a
> major boon for code readers.
> 
> What do you think?

I was not sure which was the best place for such "reverse config trickery"  
so I just picked one of the possible ones (it's easy to tweak it anyway).

I think I'll now go with aspm.c but then I'll have to change aspm.o to 
obj-y which is really CONFIG_PCI because of the dir.

> >  obj-$(CONFIG_PCIEAER)		+= aer.o err.o
> >  obj-$(CONFIG_PCIEAER_INJECT)	+= aer_inject.o
> > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> > index 860bc94974ec..ec6d7a092ac1 100644
> > --- a/drivers/pci/pcie/aspm.c
> > +++ b/drivers/pci/pcie/aspm.c
> > @@ -1042,16 +1042,23 @@ static int __pci_disable_link_state(struct pci_dev *pdev, int state, bool sem)
> >  		return -EINVAL;
> >  	/*
> >  	 * A driver requested that ASPM be disabled on this device, but
> > -	 * if we don't have permission to manage ASPM (e.g., on ACPI
> > +	 * if we might not have permission to manage ASPM (e.g., on ACPI
> >  	 * systems we have to observe the FADT ACPI_FADT_NO_ASPM bit and
> > -	 * the _OSC method), we can't honor that request.  Windows has
> > -	 * a similar mechanism using "PciASPMOptOut", which is also
> > -	 * ignored in this situation.
> > +	 * the _OSC method), previously we chose to not honor disable
> > +	 * request in that case. Windows has a similar mechanism using
> > +	 * "PciASPMOptOut", which is also ignored in this situation.
> > +	 *
> > +	 * Not honoring the requests to disable ASPM, however, led to
> > +	 * drivers forcing ASPM off on their own. As such changes of ASPM
> > +	 * state are not tracked by this service driver, the state kept here
> > +	 * became out of sync.
> > +	 *
> > +	 * Therefore, honor ASPM disable requests even when OS does not have
> > +	 * ASPM control. Plain disable for ASPM is assumed to be slightly
> > +	 * safer than fully managing it.
> >  	 */
> > -	if (aspm_disabled) {
> > -		pci_warn(pdev, "can't disable ASPM; OS doesn't have ASPM control\n");
> > -		return -EPERM;
> > -	}
> > +	if (aspm_disabled)
> > +		pci_warn(pdev, "OS doesn't have ASPM control, disabling ASPM anyway\n");
> 
> I think this is better than the previous situation, but I think we
> should taint the kernel here because it's possible the firmware had a
> reason for retaining ASPM control, so we might be stepping on
> something.  Arguably the message is already enough of a signal, but
> checking for a taint is potentially a little more automatable.

That's probably a good idea, yes.

> > +int pci_disable_link_state_locked(struct pci_dev *pdev, int state)
> > +{
> > +	struct pci_dev *parent = pdev->bus->self;
> > +	struct pci_bus *linkbus = pdev->bus;
> > +	struct pci_dev *child;
> > +	u16 aspm_enabled, linkctl;
> > +	int ret;
> > +
> > +	if (!parent)
> > +		return -ENODEV;
> > +
> > +	ret = pcie_capability_read_word(parent, PCI_EXP_LNKCTL, &linkctl);
> > +	if (ret != PCIBIOS_SUCCESSFUL)
> > +		return pcibios_err_to_errno(ret);
> > +	aspm_enabled = linkctl & PCI_EXP_LNKCTL_ASPMC;
> 
> In this case, we don't care about the shift offset of the
> PCI_EXP_LNKCTL_ASPMC bitfield, but if we use FIELD_GET() in most/all
> other cases where we look at PCI_EXP_LNKCTL, maybe it would be worth
> using it here as well?

I can take a look at that.

> Tangent, but I'm always dubious about the idea that e1000e is so
> special that only there do we need the "_locked" variant of this
> function.  No suggestion though; no need to do anything about it in
> this series ;)

There was some case where it was needed based on the history search
but perhaps e1000e could do something to avoid calling it while still 
under the lock, it doesn't seem something that would immediately blow up
if that state adjustment is delayed slightly.

-- 
 i.

--8323329-225321872-1697107682=:1692
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-225321872-1697107682=:1692--
