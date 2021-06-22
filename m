Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D15E23AFF52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 10:31:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10DAF40368;
	Tue, 22 Jun 2021 08:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3KC7GzyMyNp; Tue, 22 Jun 2021 08:31:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B23C4032A;
	Tue, 22 Jun 2021 08:31:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA70B1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 08:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A59E24015B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 08:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EC5XoqIaj53n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 08:31:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CC54400E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 08:31:36 +0000 (UTC)
IronPort-SDR: 1V942+04OkQ7E8CPI40c6FmcxgLKNvdPpwbebgleTVrmDSSzm9sB8uL3x4sp8eyLnGVCRmMslQ
 KfXhmiKHFMXA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="270856681"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="270856681"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 01:31:34 -0700
IronPort-SDR: JWFZFk1oPOMYrDwszmAKBB9hfqFqn3B9kATAqjc1YYWnE9dSSmT4N2lIRkf0QjbGCJ635WjV49
 1d5ilXF2yhqw==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="452528472"
Received: from unknown (HELO [10.185.169.18]) ([10.185.169.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 01:31:31 -0700
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 kuba@kernel.org, "Edri, Michael" <michael.edri@intel.com>
References: <2651bb1778490c45d963122619fe3403fdf6b9de.1623819901.git.christophe.jaillet@wanadoo.fr>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <9622d773-323a-3022-e447-0586defd3732@intel.com>
Date: Tue, 22 Jun 2021 11:31:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2651bb1778490c45d963122619fe3403fdf6b9de.1623819901.git.christophe.jaillet@wanadoo.fr>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Fix an error handling path in
 'e1000_probe()'
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/16/2021 08:05, Christophe JAILLET wrote:
> If an error occurs after a 'pci_enable_pcie_error_reporting()' call, it
> must be undone by a corresponding 'pci_disable_pcie_error_reporting()'
> call, as already done in the remove function.
> 
> Fixes: 111b9dc5c981 ("e1000e: add aer support")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 5435606149b0..c8aa69fd0405 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7662,6 +7662,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   err_ioremap:
>   	free_netdev(netdev);
>   err_alloc_etherdev:
> +	pci_disable_pcie_error_reporting(pdev);
>   	pci_release_mem_regions(pdev);
>   err_pci_reg:
>   err_dma:
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
