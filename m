Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5200F7CC9DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A4AA821D6;
	Tue, 17 Oct 2023 17:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A4AA821D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563573;
	bh=FJ83ZF1/fARZsLfqjs5MS/ddtBXGU5LzT86lOVtHweo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SF/LUeNTXjgJnD9WxqzmE8V86wXHcf3u/Uw5UW6jX5tRQkd09Mpg+qdvHAq8V9wvh
	 pV1UCzti9ULV6yFRsr228rJh+QzpGxLjyVUean4sWFzquoKDc9cSQ8rBi1PKCoK37Z
	 1aNCdT0RbTalSuU+f05b/vG/mST1Q47j6tZ2PEKT1GMpwU6j9VOUGkeaU5QfaKZby5
	 NJyWkSkkXlU+BjQEY0JWYuK3oj3dPOqNJEWRM3m6jPzPFAaCs1DjyChlemBhzY54Xm
	 NeQ/Fx6CNMu2BYTkyNCxlG3A9Vnw5CcYETRTdNK69DVwcCJCGFUEswkL/LeotZOX1w
	 wxRERsGG5yKZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JGusFChyyqoX; Tue, 17 Oct 2023 17:26:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0ECB482188;
	Tue, 17 Oct 2023 17:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ECB482188
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98B4C1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 12:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F71C611CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 12:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F71C611CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdc1h0CBRoZu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 12:57:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DA0F611C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 12:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DA0F611C8
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="4130585"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; 
   d="scan'208";a="4130585"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 05:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="1087063948"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="1087063948"
Received: from rhaeussl-mobl.ger.corp.intel.com (HELO
 bhoerz-mobl1.ger.corp.intel.com) ([10.252.59.103])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 05:57:07 -0700
Date: Mon, 16 Oct 2023 15:57:05 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20231013164850.GA1118214@bhelgaas>
Message-ID: <9da430a3-9336-8e75-7385-3d5ddcb6cb7@linux.intel.com>
References: <20231013164850.GA1118214@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1750157713-1697461032=:1986"
X-Mailman-Approved-At: Tue, 17 Oct 2023 17:25:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697461035; x=1728997035;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=33VN831uWAKG7f4eIn44PpDJgWUV0McuEtJM+oSWIh4=;
 b=lp+N0iDegos1KqT0YHUk8zJeCMUF891HPeNecMLT7Z88naTNfHsSkcgx
 QxsDd2OdH3NF6sY33CXGJ4W+CGAtBN77FUNwqpiuOt87MfgdZkxRN9Bet
 RFydGD5hSKrn3dlXzv3QToJkFQYsOY3JgFlyLabT2FGG2lDaFscvR9Jkj
 +2CDwF9J9ZAqUy/r21UPBBeql4cOU2JxUlKDVIdLMrB+C5+Hszkz+1P5/
 ErO19JsuND5+5Y1ETsrzEzVJLcoUFVaRi7yVk5ahk0RznzNH82YU9Bn+H
 uRMz7/OESAn0Ioe7hyo4wV0qlPQZ/AMsLSvgfPGb32Xu+fssy3JVhbOQF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lp+N0iDe
Subject: Re: [Intel-wired-lan] [PATCH v2 05/13] PCI/ASPM: Add
 pci_enable_link_state()
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

--8323329-1750157713-1697461032=:1986
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Fri, 13 Oct 2023, Bjorn Helgaas wrote:

> On Thu, Oct 12, 2023 at 03:53:39PM +0300, Ilpo Järvinen wrote:
> > On Wed, 11 Oct 2023, Bjorn Helgaas wrote:
> > > On Mon, Sep 18, 2023 at 04:10:55PM +0300, Ilpo Järvinen wrote:
> > > > pci_disable_link_state() lacks a symmetric pair. Some drivers want to
> > > > disable ASPM during certain phases of their operation but then
> > > > re-enable it later on. If pci_disable_link_state() is made for the
> > > > device, there is currently no way to re-enable the states that were
> > > > disabled.
> > > 
> > > pci_disable_link_state() gives drivers a way to disable specified ASPM
> > > states using a bitmask (PCIE_LINK_STATE_L0S, PCIE_LINK_STATE_L1,
> > > PCIE_LINK_STATE_L1_1, etc), but IIUC the driver can't tell exactly
> > > what changed and can't directly restore the original state, e.g.,
> > > 
> > >   - PCIE_LINK_STATE_L1 enabled initially
> > >   - driver calls pci_disable_link_state(PCIE_LINK_STATE_L0S)
> > >   - driver calls pci_enable_link_state(PCIE_LINK_STATE_L0S)
> > >   - PCIE_LINK_STATE_L0S and PCIE_LINK_STATE_L1 are enabled now
> > > 
> > > Now PCIE_LINK_STATE_L0S is enabled even though it was not initially
> > > enabled.  Maybe that's what we want; I dunno.
> > > 
> > > pci_disable_link_state() currently returns success/failure, but only
> > > r8169 and mt76 even check, and only rtl_init_one() (r8169) has a
> > > non-trivial reason, so it's conceivable that it could return a bitmask
> > > instead.
> > 
> > It's great that you suggested this since it's actually what also I've been 
> > started to think should be done instead of this straightforward approach
> > I used in V2. 
> > 
> > That is, don't have the drivers to get anything directly from LNKCTL
> > but they should get everything through the API provided by the 
> > disable/enable calls which makes it easy for the driver to pass the same
> > value back into the enable call.
> > 
> > > > Add pci_enable_link_state() to remove ASPM states from the state
> > > > disable mask.
> > > > 
> > > > Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> > > > ---
> > > >  drivers/pci/pcie/aspm.c | 42 +++++++++++++++++++++++++++++++++++++++++
> > > >  include/linux/pci.h     |  2 ++
> > > >  2 files changed, 44 insertions(+)
> > > > 
> > > > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> > > > index 91dc95aca90f..f45d18d47c20 100644
> > > > --- a/drivers/pci/pcie/aspm.c
> > > > +++ b/drivers/pci/pcie/aspm.c
> > > > @@ -1117,6 +1117,48 @@ int pci_disable_link_state(struct pci_dev *pdev, int state)
> > > >  }
> > > >  EXPORT_SYMBOL(pci_disable_link_state);
> > > >  
> > > > +/**
> > > > + * pci_enable_link_state - Re-enable device's link state
> > > > + * @pdev: PCI device
> > > > + * @state: ASPM link states to re-enable
> > > > + *
> > > > + * Enable device's link state that were previously disable so the link is
> > > 
> > > "state[s] that were previously disable[d]" alludes to the use case you
> > > have in mind, but I don't think it describes how this function
> > > actually works.  This function just makes it possible to enable the
> > > specified states.  The @state parameter may have nothing to do with
> > > any previously disabled states.
> > 
> > Yes, it's what I've been thinking between the lines. But I see your point 
> > that this API didn't make it easy/obvious as is.
> > 
> > Would you want me to enforce it too besides altering the API such that the 
> > states are actually returned from disable call? (I don't personally find
> > that necessary as long as the API pair itself makes it obvious what the 
> > driver is expect to pass there.)
> 
> This was just a comment about the doc not matching the function
> behavior.
> 
> I think we have to support pci_enable_link_state() even if the driver
> hasn't previously called pci_disable_link_state(), so drivers have to
> be able to specify the pci_enable_link_state() @state from scratch.
> 
> Does that answer the enforcement question?

Yes.

-- 
 i.

> I don't think we can
> really enforce anything other than that @state specifies valid ASPM
> states.
> 
> Bjorn
> 

--8323329-1750157713-1697461032=:1986
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-1750157713-1697461032=:1986--
