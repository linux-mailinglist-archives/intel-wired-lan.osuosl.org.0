Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C4867D980
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 00:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1772D408BC;
	Thu, 26 Jan 2023 23:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1772D408BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674774938;
	bh=aEuJ2z+Z7lDKwtrZlAo946K03fFCyY2rVQgI6K3CjAg=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=eBTM9oX73WnNeKKx/CNGY/yCw6rwChipPyqPi495U0N6mu3Il5NzG0SriZlQNY8Ag
	 Bz3sodphseU5gY6YPrViGhhve0v0n+h48N1wK9Fo/FVyep+9fByw5Ut+Bt/gFfA+Om
	 URnPjgqTshNOx4zyAsOcT3D3NBp6Y3ar6pQ5msev60s4egXh3wFHxF1VelZhc0J5Ap
	 0JRMLahMkNLOtGli5986rgspjOWBpy9qwqNk0O4XACXg03QiwnQrq3MR/9G2ALWkFP
	 EFrpF5mFtPyfbsFgaQ6YJAb7WFB/4X0Z9ryxJedRgJHs0IJ7DFr3Ulv19xr3ccaZW3
	 tzGOeThL3OFfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUymdwIGGLKP; Thu, 26 Jan 2023 23:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02E144057C;
	Thu, 26 Jan 2023 23:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02E144057C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77D301BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 23:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C7DE611D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 23:15:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C7DE611D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YvrqQqylsJDa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 23:15:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD0CE6118B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD0CE6118B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 23:15:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 989396199C;
 Thu, 26 Jan 2023 23:15:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B504CC433EF;
 Thu, 26 Jan 2023 23:15:28 +0000 (UTC)
Date: Thu, 26 Jan 2023 17:15:27 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Message-ID: <20230126231527.GA1322015@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230118234612.272916-1-helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674774929;
 bh=yLxfhl2XeMsnGXh8m4CYuImOEZKgrEUslX63nDnPLrc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=VPk1P6ShqdMJdgOLDXfAg3hmy8SL4IAesCX9ibxD3BDdaupVSCJa7vRBe9x1k72s3
 0WT3de7uDz1Kh7XfvLBViNk61oDrsMXN3jDJ09HhctMhpqHlfJ81OdtfBE+PohHfd4
 tw+89BwTzSlRTG8QDGtuRInId/FBPYFZd6NTyYImd89YX/3OfczFjJj4qstBXsQrRh
 9Ede9P3N6bh8AVRHs4Hg7Qyumb+wJn3pVA0l3XyLzekrglV+HU1C6A/7KeCFZypUD2
 XMOBOd5CEzMzRNhi3tlSuHqf1WLHI2Os2wURhy0PtV93Cg6KqWu3qHavIsmPzpQGf+
 GH4IkWzOisVbQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VPk1P6Sh
Subject: Re: [Intel-wired-lan] [PATCH 0/9] PCI/AER: Remove redundant Device
 Control Error Reporting Enable
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
Cc: Sathyanarayanan Kuppuswamy <sathyanarayanan.kuppuswamy@linux.intel.com>,
 Ashok Raj <ashok.raj@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Keith Busch <kbusch@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Stefan Roese <sr@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+cc all the folks I forgot to cc when sending the original cover
letter, sorry about that, plus the folks who very generously tested
the driver patches]

On Wed, Jan 18, 2023 at 05:46:03PM -0600, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is native"),
> ths PCI core sets the Device Control bits that enable error reporting for
> PCIe devices.
> 
> This series removes redundant calls to pci_enable_pcie_error_reporting()
> that do the same thing from the AER driver and several NIC drivers.
> 
> There are several more drivers where this should be removed; I started with
> just the Intel drivers here.
> 
> Bjorn Helgaas (9):
>   PCI/AER: Remove redundant Device Control Error Reporting Enable
>   e1000e: Remove redundant pci_enable_pcie_error_reporting()
>   fm10k: Remove redundant pci_enable_pcie_error_reporting()
>   i40e: Remove redundant pci_enable_pcie_error_reporting()
>   iavf: Remove redundant pci_enable_pcie_error_reporting()
>   ice: Remove redundant pci_enable_pcie_error_reporting()
>   igb: Remove redundant pci_enable_pcie_error_reporting()
>   igc: Remove redundant pci_enable_pcie_error_reporting()
>   ixgbe: Remove redundant pci_enable_pcie_error_reporting()

Thank you very much for reviewing and testing these.  I applied the
first (PCI/AER) patch to the PCI tree.

I think Jakub is planning to merge the rest via the netdev tree.
There are no dependencies, so they can be squashed if desired.  Let me
know if you'd prefer me to merge them or squash them.

>  drivers/net/ethernet/intel/e1000e/netdev.c    |  7 ---
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c  |  5 --
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 --
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  5 --
>  drivers/net/ethernet/intel/ice/ice_main.c     |  3 --
>  drivers/net/ethernet/intel/igb/igb_main.c     |  5 --
>  drivers/net/ethernet/intel/igc/igc_main.c     |  5 --
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  5 --
>  drivers/pci/pcie/aer.c                        | 48 -------------------
>  9 files changed, 87 deletions(-)
> 
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
