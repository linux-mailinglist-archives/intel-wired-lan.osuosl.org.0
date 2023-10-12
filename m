Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDF57C7663
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0AE461373;
	Thu, 12 Oct 2023 19:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0AE461373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137749;
	bh=AtmMTWEEE9/TjsHVJ+mts8acOpITqsMyD+NiGZZj5HM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qrUlIZaDb3TN5Huym6anFfaqwyawajGrS48N5xRwQu7/WhuAn2VUhYKKQRCiGcSII
	 JfaBXQ16xO9T1H34LD26mMXmjJ6riFM6GGA6OCZAWpqYs2tK6+cIaqNETwUrmhqn/8
	 4dHWyndJDbr0hwhMOxBvzoztxMu/oP9+yvz/6yesiGH03ydJwqN39PJ5d1LJlyncmW
	 YCBlB1cIUGr7wiN/C15Vyynv7QlwlMvstxa9vCo29msNdnkH5/GBk/1OtfuNGnX8dp
	 P2UEIg+2YjGyAlV/gco6AEjvlruBh9eVvLnlnZslcqzJdqo4vQFXe7TBg1rRWgezcP
	 0PfFH+CZgarWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uxpf4_B-NrBk; Thu, 12 Oct 2023 19:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D87A610B6;
	Thu, 12 Oct 2023 19:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D87A610B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 627F41BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39BD5405FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39BD5405FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qqc-S3NfW2j8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 10:56:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 727D7404B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 727D7404B9
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3483258"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3483258"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="789349717"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="789349717"
Received: from asroczyn-mobl.ger.corp.intel.com ([10.249.36.107])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:56:18 -0700
Date: Thu, 12 Oct 2023 13:56:16 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>, 
 "Rafael J . Wysocki" <rafael@kernel.org>
In-Reply-To: <20231011212206.GA1043224@bhelgaas>
Message-ID: <aa3386a4-c22d-6d5d-112d-f36b22cda6d3@linux.intel.com>
References: <20231011212206.GA1043224@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1326969328-1697108183=:1692"
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697108185; x=1728644185;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=ncUYHUPUudbeDBu1X+DbOYSPV06JH2dv47rcK32PQ+0=;
 b=CYclsOvOPtH3Q8m1wMMmDYUHx/L6vQrIQRlGlDiTpobaSJ/SD8nZa1yQ
 lmY9YqnctCNWpDlmbqOQfO8u3cwjxe1sBLbcfgWfX7nJ+ZrNDZ4y23gAX
 HbkMANv6j4C80UF4fY2QznF81/dmYLkDw/KG2IiTPs7jbdaRuZ4TdQFxh
 wlLZwCWV8LmydShMWfIj8HsKLUGGxyKHhIL2h8Yd4USZuVsQsWxWUShau
 izP+1118O9PObYimo3ulINXAXq9pIBJWoqzKEwS/rGrv3vJAdEgdjHiSQ
 VeVAmvpuDHBN7XAu6gEJd7JD4Cb/HMGDGmdPiPIXwKpyDJUTvWKLeg2qw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CYclsOvO
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
 Rob Herring <robh@kernel.org>, ath12k@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org, Netdev <netdev@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-mediatek@lists.infradead.org,
 ath11k@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1326969328-1697108183=:1692
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
> > ...
> 
> > +#ifndef CONFIG_PCIEASPM
> > +/*
> > + * Always disable ASPM when requested, even when CONFIG_PCIEASPM is
> > + * not build to avoid drivers adding code to do it on their own
> > + * which caused issues when core does not know about the out-of-band
> > + * ASPM state changes.
> > + */
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
> 
> P.S. I think this should look the same to the user (same dmesg log and
> same taint, if we do that) as the CONFIG_PCIEASPM=y case.

Okay.

> > +	ret = pcie_capability_read_word(parent, PCI_EXP_LNKCTL, &linkctl);
> > +	if (ret != PCIBIOS_SUCCESSFUL)
> > +		return pcibios_err_to_errno(ret);
> > +	aspm_enabled = linkctl & PCI_EXP_LNKCTL_ASPMC;
> > +
> > +	ret = pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &linkctl);
> > +	if (ret != PCIBIOS_SUCCESSFUL)
> > +		return pcibios_err_to_errno(ret);
> > +	aspm_enabled |= linkctl & PCI_EXP_LNKCTL_ASPMC;
> > +
> > +	/* If no states need to be disabled, don't touch LNKCTL */
> > +	if (state & aspm_enabled)
> > +		return 0;
> > +
> > +	ret = pcie_capability_clear_word(parent, PCI_EXP_LNKCTL, PCI_EXP_LNKCTL_ASPMC);
> > +	if (ret != PCIBIOS_SUCCESSFUL)
> > +		return pcibios_err_to_errno(ret);
> > +	list_for_each_entry(child, &linkbus->devices, bus_list)
> > +		pcie_capability_clear_word(child, PCI_EXP_LNKCTL, PCI_EXP_LNKCTL_ASPMC);
> 
> This disables *all* ASPM states, unlike the version when
> CONFIG_PCIEASPM is enabled.  I suppose there's a reason, and maybe a
> comment could elaborate on it?
>
> When CONFIG_PCIEASPM is not enabled, I don't think we actively
> *disable* ASPM in the hardware; we just leave it as-is, so firmware
> might have left it enabled.

This whole trickery is intended for drivers that do not want to have ASPM 
because the devices are broken with it. So leaving it as-is is not really 
an option (as demonstrated by the custom workarounds).

> > +
> > +	return 0;
> > +}
> 
> Conceptually it seems like the LNKCTL updates here should be the same
> whether CONFIG_PCIEASPM is enabled or not (subject to the question
> above).
> 
> When CONFIG_PCIEASPM is enabled, we might need to do more stuff, but
> it seems like the core should be the same.

So you think it's safer to partially disable ASPM (as per driver's 
request) rather than disable it completely? I got the impression that the 
latter might be safer from what Rafael said earlier but I suppose I might 
have misinterpreted him since he didn't exactly say that it might be safer 
to _completely_ disable it.

-- 
 i.

--8323329-1326969328-1697108183=:1692
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-1326969328-1697108183=:1692--
