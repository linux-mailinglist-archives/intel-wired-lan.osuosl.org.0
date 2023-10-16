Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA5D7CC9DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3024821E9;
	Tue, 17 Oct 2023 17:26:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3024821E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563577;
	bh=pWnRJ00lGIuaYvaHO2mTB2IfXaaHtW6sKS5+2hC/YAU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aCMQr+UVkv7vZ8rH3fEBpnTjjkxxH2HjRfCJmn1YVu2IewYIQiADzWHFTn0SLR45T
	 hG1hh5BjKA1WOYSy2ZKpj83FPt3FAjdNR2F33/1ldCQjAk6Q2ey69JaFQ6YXvHydX8
	 n5zvg0jtLU1n353fYTY6Pwa3cFq3JTPKiguVhiO58vsJgkkOU4pbBc+hqQetqAnY6Z
	 i/AwElRA9vGos6ZV0Q1rSHc23boz3V83vL9ZTii2mOmJhNsELI6KTGaOW72Mqvm1VZ
	 0IHk8RCap/Gu5MBPIjy69gkjAGxQE8gnLLdEcqkQ/9DizCxGWXKEP5wgGAUhpKQqnu
	 shwXcCFU8+wdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1z_uruhpftzc; Tue, 17 Oct 2023 17:26:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 518A082188;
	Tue, 17 Oct 2023 17:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 518A082188
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D61691BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 14:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEAA481F16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 14:27:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEAA481F16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Om_dswjGKAYv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 14:27:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6DFB81EE8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 14:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6DFB81EE8
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="388396815"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="388396815"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 07:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759416190"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="759416190"
Received: from rhaeussl-mobl.ger.corp.intel.com ([10.252.59.103])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 07:27:40 -0700
Date: Mon, 16 Oct 2023 17:27:37 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>, 
 "Rafael J . Wysocki" <rafael@kernel.org>
In-Reply-To: <20231013164228.GA1117889@bhelgaas>
Message-ID: <a434d9f-48ec-cfe5-900-8923361798a9@linux.intel.com>
References: <20231013164228.GA1117889@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-158890400-1697462044=:1986"
Content-ID: <58c8d854-b57c-582-1ba0-efeb857febe@linux.intel.com>
X-Mailman-Approved-At: Tue, 17 Oct 2023 17:25:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697466469; x=1729002469;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=WAHtEU+QRIIV0hjjctV4dFUOMA87lFSZZckv/e6FmbI=;
 b=OufOnZrvvyE1EFjz2aoL107j51mw+MlBz2TFVCRqpCfgUt85f4ijc/pP
 j/9ecFLSccMKEYoA567fzz9qaGY00PhiO+HDPSvfjkBHiVjyIm14KTizG
 Fb44jlk17oT5pusE1CkTJFjOnuJeFumjO1IuU0UVxMPLbXrrKDR7t07UE
 2Fd6e0+ZI+Rve8FfhwYDwBOoOnLDxdnFqIPab+8IptCjJvKNNWFu+grAN
 GqGkxvAIOQEead+a8eeKv91/reJGhd6IePsZa+D23bSBVI7SXV4P+20tS
 ShiT5vK+/Wh6PTZpZCxkas9Nty1A3Wui/wodkt5FhPfcowBf3i6Eh2xV2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OufOnZrv
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

--8323329-158890400-1697462044=:1986
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <a321263b-cac2-11d0-6cb1-43cc78d1c6d1@linux.intel.com>

On Fri, 13 Oct 2023, Bjorn Helgaas wrote:
> On Thu, Oct 12, 2023 at 01:56:16PM +0300, Ilpo Järvinen wrote:
> > On Wed, 11 Oct 2023, Bjorn Helgaas wrote:
> > > On Mon, Sep 18, 2023 at 04:10:53PM +0300, Ilpo Järvinen wrote:
> > > > PCI core/ASPM service driver allows controlling ASPM state through
> > > > pci_disable_link_state() and pci_enable_link_state() API. It was
> > > > decided earlier (see the Link below), to not allow ASPM changes when OS
> > > > does not have control over it but only log a warning about the problem
> > > > (commit 2add0ec14c25 ("PCI/ASPM: Warn when driver asks to disable ASPM,
> > > > but we can't do it")). Similarly, if ASPM is not enabled through
> > > > config, ASPM cannot be disabled.
> > ...
> 
> > > This disables *all* ASPM states, unlike the version when
> > > CONFIG_PCIEASPM is enabled.  I suppose there's a reason, and maybe a
> > > comment could elaborate on it?
> > >
> > > When CONFIG_PCIEASPM is not enabled, I don't think we actively
> > > *disable* ASPM in the hardware; we just leave it as-is, so firmware
> > > might have left it enabled.
> > 
> > This whole trickery is intended for drivers that do not want to have ASPM 
> > because the devices are broken with it. So leaving it as-is is not really 
> > an option (as demonstrated by the custom workarounds).
> 
> Right.
> 
> > > Conceptually it seems like the LNKCTL updates here should be the same
> > > whether CONFIG_PCIEASPM is enabled or not (subject to the question
> > > above).
> > > 
> > > When CONFIG_PCIEASPM is enabled, we might need to do more stuff, but
> > > it seems like the core should be the same.
> > 
> > So you think it's safer to partially disable ASPM (as per driver's 
> > request) rather than disable it completely? I got the impression that the 
> > latter might be safer from what Rafael said earlier but I suppose I might 
> > have misinterpreted him since he didn't exactly say that it might be safer 
> > to _completely_ disable it.
> 
> My question is whether the state of the device should depend on
> CONFIG_PCIEASPM.  If the driver does this:
> 
>   pci_disable_link_state(PCIE_LINK_STATE_L0S)
> 
> do we want to leave L1 enabled when CONFIG_PCIEASPM=y but disable L1
> when CONFIG_PCIEASPM is unset?
> 
> I can see arguments both ways.  My thought was that it would be nice
> to end up with a single implementation of pci_disable_link_state()
> with an #ifdef around the CONFIG_PCIEASPM-enabled stuff because it
> makes the code easier to read.

Hi Bjorn,

Thanks a lot for all your feedback so far, it has been very helpful.

I think there's still one important thing to discuss and none of the 
comments have covered that area so far.

The drivers that have workaround are not going to turn more dangerous than 
they're already without this change, so we're mostly within charted waters 
there even with what you propose. However, I think the bigger catch and 
potential source of problems, with both this v2 and your alternative, are 
the drivers that do not have the workarounds around CONFIG_PCIEASPM=n 
and/or _OSC permissions. Those code paths just call 
pci_disable_link_state() and do nothing else.

Do you think it's okay to alter the behavior for those drivers too 
(disable ASPM where it previously was a no-op)?

I'm okay with going the direction you indicated but I just wanted to ask
this in advance before reworking the behavior so I can take that detail 
also into account.


-- 
 i.
--8323329-158890400-1697462044=:1986
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-158890400-1697462044=:1986--
