Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 679D07C7661
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECCB161031;
	Thu, 12 Oct 2023 19:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECCB161031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137741;
	bh=00E7rzHex9RbKRBdGVPqiB232Od4WoUVcZG1mZy//7U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mWU/LSTaHzLODtJwkm3pUe/Bs7IoU2hYLD7B+k4TS4LBwEZ0GT7NqvAL5mWVq2pHj
	 5wnY3RhLrM0gZ2ukMqSbGpxZX8djC2Rt3jYC5Xc65uBWFTrnUVRH4iWC8ZVBeWLPsq
	 5jppuw0ghm6a4gyTFNJH4ILPim9quNMYL1CBnBTQKB8A99uFWfNlTYLqR0qvlzSpl8
	 1HasrcQOxboONFzWwP79y3q/K30EiQnfqE5A2PFisBQUy7v+qCPBoowpWg03uiBgvy
	 tN2eC0XWImDmxXBlOirtblAUK1dYsFS5lWeZchCoZzhQ+eCsnCTSoojVeFVy/9uqox
	 OOzzp/wNtqQEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s8_6pEWOyuL1; Thu, 12 Oct 2023 19:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE3566103B;
	Thu, 12 Oct 2023 19:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE3566103B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 915481BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7677782240
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7677782240
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbHz0X0f9Bvi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 10:34:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B28D682211
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B28D682211
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="388748396"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="388748396"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:34:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="870527710"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="870527710"
Received: from asroczyn-mobl.ger.corp.intel.com ([10.249.36.107])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:34:00 -0700
Date: Thu, 12 Oct 2023 13:29:49 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20231011193206.GA1039708@bhelgaas>
Message-ID: <bcecb577-bf69-e854-6f59-f4cb26c4b354@linux.intel.com>
References: <20231011193206.GA1039708@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1380828921-1697106845=:1692"
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697106846; x=1728642846;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=ji8x2F8u0U0ggxefEbWPL9IJWQlQGGYyAuJIBploLj8=;
 b=bN3f4Qk6kxsqtiPEdc7hozzc/lHyjyLmT9hB1THfw7cBEeXlPkp2ydv4
 A5RWqQuNNWZM4AHxz7lFg/5vYZlLPnq3fbNSRje7q8fucWjt+5h6iHSUq
 lV2n0tt63s27D4mcreO06tcglJUm++kPYTWNkmUiUTT9Su1BNqB0btepP
 v2x/eCjoYn4Z/KmXkMXUfrnzCL0uqLlTPy7VYz2lRVcyCOX1YVtOgi8hz
 PXk3wjIBqd57RZhJI714m3FQ9sIPDHK0wEz4wFbNmHdxX/NDdcpf5ZU/a
 IrodtZrjUd3H3whvPsp1yjwKL187hu6QXV/0zKS3Pt5cD0Ws99XtR3TbB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bN3f4Qk6
Subject: Re: [Intel-wired-lan] [PATCH v2 04/13] PCI/ASPM: Move L0S/L1/sub
 states mask calculation into a helper
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

--8323329-1380828921-1697106845=:1692
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Wed, 11 Oct 2023, Bjorn Helgaas wrote:

> On Mon, Sep 18, 2023 at 04:10:54PM +0300, Ilpo Järvinen wrote:
> > ASPM service driver does the same L0S / L1S / sub states allowed
> > calculation in __pci_disable_link_state() and
> > pci_set_default_link_state().
> 
> Is there a typo or something here?  This patch only adds a call to
> __pci_disable_link_state(), not to pci_set_default_link_state().

This was because one of the changes that got included in the meantime made 
the state handling in those two functions to differ so I removed the call 
from the code but forgot to update the changelog to match the code. I'll 
fix the changelog.

-- 
 i.


> > Create a helper to calculate the mask for the allowed states.
> > 
> > Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> > ---
> >  drivers/pci/pcie/aspm.c | 33 +++++++++++++++++++++------------
> >  1 file changed, 21 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> > index ec6d7a092ac1..91dc95aca90f 100644
> > --- a/drivers/pci/pcie/aspm.c
> > +++ b/drivers/pci/pcie/aspm.c
> > @@ -1034,6 +1034,26 @@ static struct pcie_link_state *pcie_aspm_get_link(struct pci_dev *pdev)
> >  	return bridge->link_state;
> >  }
> >  
> > +static u8 pci_link_state_mask(int state)
> > +{
> > +	u8 result = 0;
> > +
> > +	if (state & PCIE_LINK_STATE_L0S)
> > +		result |= ASPM_STATE_L0S;
> > +	if (state & PCIE_LINK_STATE_L1)
> > +		result |= ASPM_STATE_L1;
> > +	if (state & PCIE_LINK_STATE_L1_1)
> > +		result |= ASPM_STATE_L1_1;
> > +	if (state & PCIE_LINK_STATE_L1_2)
> > +		result |= ASPM_STATE_L1_2;
> > +	if (state & PCIE_LINK_STATE_L1_1_PCIPM)
> > +		result |= ASPM_STATE_L1_1_PCIPM;
> > +	if (state & PCIE_LINK_STATE_L1_2_PCIPM)
> > +		result |= ASPM_STATE_L1_2_PCIPM;
> > +
> > +	return result;
> > +}
> > +
> >  static int __pci_disable_link_state(struct pci_dev *pdev, int state, bool sem)
> >  {
> >  	struct pcie_link_state *link = pcie_aspm_get_link(pdev);
> > @@ -1063,18 +1083,7 @@ static int __pci_disable_link_state(struct pci_dev *pdev, int state, bool sem)
> >  	if (sem)
> >  		down_read(&pci_bus_sem);
> >  	mutex_lock(&aspm_lock);
> > -	if (state & PCIE_LINK_STATE_L0S)
> > -		link->aspm_disable |= ASPM_STATE_L0S;
> > -	if (state & PCIE_LINK_STATE_L1)
> > -		link->aspm_disable |= ASPM_STATE_L1;
> > -	if (state & PCIE_LINK_STATE_L1_1)
> > -		link->aspm_disable |= ASPM_STATE_L1_1;
> > -	if (state & PCIE_LINK_STATE_L1_2)
> > -		link->aspm_disable |= ASPM_STATE_L1_2;
> > -	if (state & PCIE_LINK_STATE_L1_1_PCIPM)
> > -		link->aspm_disable |= ASPM_STATE_L1_1_PCIPM;
> > -	if (state & PCIE_LINK_STATE_L1_2_PCIPM)
> > -		link->aspm_disable |= ASPM_STATE_L1_2_PCIPM;
> > +	link->aspm_disable |= pci_link_state_mask(state);
> >  	pcie_config_aspm_link(link, policy_to_aspm_state(link));
> >  
> >  	if (state & PCIE_LINK_STATE_CLKPM)


--8323329-1380828921-1697106845=:1692
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-1380828921-1697106845=:1692--
