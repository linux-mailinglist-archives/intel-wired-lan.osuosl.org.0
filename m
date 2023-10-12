Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC087C7664
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E421C61356;
	Thu, 12 Oct 2023 19:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E421C61356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137753;
	bh=oqsyDOeIddkvDIn/Z4WiHmi/cIKpgS/ai7lTyOhassI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3ICxvtmtudbl3/6AvQ+d86SNdlU7FCh5S5fShoDPfT6CB4q6RZXRfNvh7XmV6MX/s
	 rLSd3cy8ZaX8ir5OFC4K6P30l0pvIQkCq3YmcP7sDrr3t32H4Uvp/1mtw/qz8+Ubzp
	 zC37pVyHqSaOf4ue/u3efB4d2Obrfis5uyKDIk4xnc/PHw2c8YHgbgpmnX0vhXeASI
	 e2MrAB+6xfAjgufM3F8E67LofbK4tlA26HZXi01EK44uNmi2Iai7qKDh33x5dbGJxF
	 +Kp/M+wwBgF7LyYKxkNWZfeckY9+QxxYxBIKzTDiaCl2FMqV4CF0+C3M0txP5KeRkK
	 Fo44dw/OM8YWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhbpHrgAYdBU; Thu, 12 Oct 2023 19:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 952FD6105F;
	Thu, 12 Oct 2023 19:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 952FD6105F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFBBB1BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 12:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8765882001
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 12:53:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8765882001
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8J_o1zC-uJi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 12:53:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C33282149
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 12:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C33282149
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="471169651"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="471169651"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="783688889"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="783688889"
Received: from asroczyn-mobl.ger.corp.intel.com ([10.249.36.107])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:53:41 -0700
Date: Thu, 12 Oct 2023 15:53:39 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20231011215327.GA1043654@bhelgaas>
Message-ID: <afb4db5-5fe1-9f5d-a910-032adf195c@linux.intel.com>
References: <20231011215327.GA1043654@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1586418908-1697115226=:1692"
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697115230; x=1728651230;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=gNLNaEec64/5yPf43OhzXjxJ+9f0AwPObPN0gw90rTk=;
 b=P9azlUeX1mDd6T2hMq1h8Nzn4lcRhvLZ3X29PDZQUdMQH1vzAZjpKnaF
 VdqIi0tWwqWoDdbaYpyjJzfLVno08pwlZAVd04d+dOgDDC+BONWqlssqu
 f6SqLriq1oor2TSiREeVPMQsDuduuBRw81kK9+tbEEPy3W85Fe5vDMQpn
 hbap9xuM3wQhp1io64ZY2Taeu+Upf4Sc4aF8JC+YGQ89tJckgnpnfg186
 9feFoUhDj81fBl3amwUjcUm71tTg356BPkCiki1w15lIwpuLXiF2Tnrvz
 U48GSaCjEAoaXd4fShlmgxBop70ru0TnqJ0wVYcIzJYIvLHA8ICrEWMh6
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P9azlUeX
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

--8323329-1586418908-1697115226=:1692
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Wed, 11 Oct 2023, Bjorn Helgaas wrote:

> On Mon, Sep 18, 2023 at 04:10:55PM +0300, Ilpo Järvinen wrote:
> > pci_disable_link_state() lacks a symmetric pair. Some drivers want to
> > disable ASPM during certain phases of their operation but then
> > re-enable it later on. If pci_disable_link_state() is made for the
> > device, there is currently no way to re-enable the states that were
> > disabled.
> 
> pci_disable_link_state() gives drivers a way to disable specified ASPM
> states using a bitmask (PCIE_LINK_STATE_L0S, PCIE_LINK_STATE_L1,
> PCIE_LINK_STATE_L1_1, etc), but IIUC the driver can't tell exactly
> what changed and can't directly restore the original state, e.g.,
> 
>   - PCIE_LINK_STATE_L1 enabled initially
>   - driver calls pci_disable_link_state(PCIE_LINK_STATE_L0S)
>   - driver calls pci_enable_link_state(PCIE_LINK_STATE_L0S)
>   - PCIE_LINK_STATE_L0S and PCIE_LINK_STATE_L1 are enabled now
> 
> Now PCIE_LINK_STATE_L0S is enabled even though it was not initially
> enabled.  Maybe that's what we want; I dunno.
> 
> pci_disable_link_state() currently returns success/failure, but only
> r8169 and mt76 even check, and only rtl_init_one() (r8169) has a
> non-trivial reason, so it's conceivable that it could return a bitmask
> instead.

It's great that you suggested this since it's actually what also I've been 
started to think should be done instead of this straightforward approach
I used in V2. 

That is, don't have the drivers to get anything directly from LNKCTL
but they should get everything through the API provided by the 
disable/enable calls which makes it easy for the driver to pass the same
value back into the enable call.

> > Add pci_enable_link_state() to remove ASPM states from the state
> > disable mask.
> > 
> > Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> > ---
> >  drivers/pci/pcie/aspm.c | 42 +++++++++++++++++++++++++++++++++++++++++
> >  include/linux/pci.h     |  2 ++
> >  2 files changed, 44 insertions(+)
> > 
> > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> > index 91dc95aca90f..f45d18d47c20 100644
> > --- a/drivers/pci/pcie/aspm.c
> > +++ b/drivers/pci/pcie/aspm.c
> > @@ -1117,6 +1117,48 @@ int pci_disable_link_state(struct pci_dev *pdev, int state)
> >  }
> >  EXPORT_SYMBOL(pci_disable_link_state);
> >  
> > +/**
> > + * pci_enable_link_state - Re-enable device's link state
> > + * @pdev: PCI device
> > + * @state: ASPM link states to re-enable
> > + *
> > + * Enable device's link state that were previously disable so the link is
> 
> "state[s] that were previously disable[d]" alludes to the use case you
> have in mind, but I don't think it describes how this function
> actually works.  This function just makes it possible to enable the
> specified states.  The @state parameter may have nothing to do with
> any previously disabled states.

Yes, it's what I've been thinking between the lines. But I see your point 
that this API didn't make it easy/obvious as is.

Would you want me to enforce it too besides altering the API such that the 
states are actually returned from disable call? (I don't personally find
that necessary as long as the API pair itself makes it obvious what the 
driver is expect to pass there.)


-- 
 i.

--8323329-1586418908-1697115226=:1692
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-1586418908-1697115226=:1692--
