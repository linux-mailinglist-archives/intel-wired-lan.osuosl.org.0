Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B3F3BAB95
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jul 2021 07:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 740696063F;
	Sun,  4 Jul 2021 05:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W25_lZwzcQYd; Sun,  4 Jul 2021 05:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 871246060F;
	Sun,  4 Jul 2021 05:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE9E21BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jul 2021 05:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B24E94058A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jul 2021 05:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 85h1sJBZWk9d for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jul 2021 05:37:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D71BF40583
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jul 2021 05:37:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10034"; a="196143138"
X-IronPort-AV: E=Sophos;i="5.83,323,1616482800"; d="scan'208";a="196143138"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2021 22:37:03 -0700
X-IronPort-AV: E=Sophos;i="5.83,323,1616482800"; d="scan'208";a="561502755"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.249.95.249])
 ([10.249.95.249])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2021 22:36:58 -0700
To: Aaron Ma <aaron.ma@canonical.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Edri, Michael" <michael.edri@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210702045120.22855-2-aaron.ma@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <613e2106-940a-49ed-6621-0bb00bc7dca5@intel.com>
Date: Sun, 4 Jul 2021 08:36:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210702045120.22855-2-aaron.ma@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: wait for the MAC copy when
 enabled MAC passthrough
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/2/2021 07:51, Aaron Ma wrote:
> Such as dock hot plug event when runtime, for hardware implementation,
> the MAC copy takes less than one second when BIOS enabled MAC passthrough.
> After test on Lenovo TBT4 dock, 600ms is enough to update the
> MAC address.
> Otherwise ethernet fails to work.
> 
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 606b72cb6193..c8bc5f089255 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5468,6 +5468,9 @@ static int igc_probe(struct pci_dev *pdev,
>   	memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
>   	memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));
>   
> +	if (pci_is_thunderbolt_attached(pdev) > +		msleep(600);
I believe it is a bit fragile. I would recommend here look for another 
indication instead of delay. Can we poll for a 'pci_channel_io_normal' 
state? (igc->pdev->error_state == pci_channel_io_normal)
> +
>   	/* Initialize skew-specific constants */
>   	err = ei->get_invariants(hw);
>   	if (err)
> 
Thanks Aaron,
sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
