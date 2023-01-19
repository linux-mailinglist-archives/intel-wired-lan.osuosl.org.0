Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FF367411E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 19:40:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28CE66118C;
	Thu, 19 Jan 2023 18:40:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28CE66118C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674153656;
	bh=O8bCxTeLOI/WdqC356JyjY16dc9ci0Z0XWNGo4MpI30=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=KRlFtyNCeGH2hldWUkX7QqOnfPcm1CnsUtgbxvsQrp/oxuqWYcwkUGfjQ3uKb5nrl
	 e0BNj3UgSRQx0H5dNQHfNNkB8WMSwfZCogkufn9yhfUP3/PBCE98gOFqTbXRWwEgN6
	 A9doRivrMUrW4Jrx8nT4ZwrEzqgFkW/Sv50If0J3B5nx/xC2nWeY6SZbskUMCKOmwL
	 UPoXyHId6PW8zuyiyzQUBFZ6Q5S2j/LMlFSU40YI/ZN3hY0Pp6TdOy3ENFEMBKAihP
	 h2Ss4TXi2a71cXVwAdRdEg9zjt1ze03CgG3RNSgPorkQv/ttDAoSFR27owojQP1Zd7
	 eSkyXlX9438Vw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Up4PUiJj4Q4M; Thu, 19 Jan 2023 18:40:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CAC961109;
	Thu, 19 Jan 2023 18:40:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CAC961109
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48E6C1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31471401AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31471401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b5mG9KAaS-1h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 18:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D343400CC
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D343400CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:40:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6DFB661D12;
 Thu, 19 Jan 2023 18:40:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5CD0C433D2;
 Thu, 19 Jan 2023 18:40:46 +0000 (UTC)
Date: Thu, 19 Jan 2023 12:40:45 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20230119184045.GA482553@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4274cde6-3a64-e549-a833-3930732c756d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674153646;
 bh=GheWbXSmySnzBphtK+e1BAQMhvFJrqswnLr0pq7sCks=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=tnKpcCZTqFBf8z9XQyNMTe6d/NvPOIR3jwBR9YtVK3zPAzFgJe52jb/gOmYWzRSt/
 UN4WtvMYVHy1T7GpHbvTbZ+ACQAySX75cmiRbPii98b7s87tvDD/jypLJ4ikgW3WOf
 l/fQX4Ma+jh7Jnn14+bncoW8SiERq4OTZZTr0NNueZRheAwFrGP+r5kPXuoKG/2KBW
 dVipueMcE6lrix5cWeUzkadeIJRa7d2ZlU/8Rs1esGZBs3vHigUwnA9mT6ViKN7y2L
 nD8Dmk4HbnugSeN3Na9sPucu3RgLtlV3mWFtcgRZip8db+cY0yfUqjgGU2qyxhT4l8
 Lxbp9YWPrFRGQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tnKpcCZT
Subject: Re: [Intel-wired-lan] [PATCH 2/9] e1000e: Remove redundant
 pci_enable_pcie_error_reporting()
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
 linux-pci@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+cc Sathy]

On Thu, Jan 19, 2023 at 10:28:16AM -0800, Tony Nguyen wrote:
> On 1/18/2023 3:46 PM, Bjorn Helgaas wrote:
> > From: Bjorn Helgaas <bhelgaas@google.com>
> > 
> > pci_enable_pcie_error_reporting() enables the device to send ERR_*
> > Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> > native"), the PCI core does this for all devices during enumeration.
> > 
> > Remove the redundant pci_enable_pcie_error_reporting() call from the
> > driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> > from the driver .remove() path.
> > 
> > Note that this doesn't control interrupt generation by the Root Port; that
> > is controlled by the AER Root Error Command register, which is managed by
> > the AER service driver.
> > 
> > Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org
> > ---
> >   drivers/net/ethernet/intel/e1000e/netdev.c | 7 -------
> >   1 file changed, 7 deletions(-)
> 
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Thanks a million for taking a look at these, Tony!

These driver patches are all independent and have no dependency on the
1/9 PCI/AER patch.  What's your opinion on merging these?  Should they
go via netdev?  Should they be squashed into a single patch that does
all the Intel drivers at once?

I'm happy to squash them and/or merge them via the PCI tree, whatever
is easiest.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
