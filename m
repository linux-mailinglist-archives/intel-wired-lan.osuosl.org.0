Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E930617CBDE
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Mar 2020 05:07:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5804C2035B;
	Sat,  7 Mar 2020 04:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7OCuHJo7oUfU; Sat,  7 Mar 2020 04:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6E78B2038F;
	Sat,  7 Mar 2020 04:07:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 641081BF83C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2020 04:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5BD3F20364
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2020 04:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2GA3i7vMcecR for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2020 04:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 591F82035B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2020 04:07:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 20:07:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="259790932"
Received: from jdoman-desk.amr.corp.intel.com (HELO [10.254.10.205])
 ([10.254.10.205])
 by orsmga002.jf.intel.com with ESMTP; 06 Mar 2020 20:07:37 -0800
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20200306235403.18751-1-andre.guedes@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <66f9198b-9cdb-441b-b2e1-1a4254971274@intel.com>
Date: Fri, 6 Mar 2020 20:07:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306235403.18751-1-andre.guedes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix NFC queue redirection support
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

On 3/6/2020 15:54, Andre Guedes wrote:
> The support for ethtool Network Flow Classification (NFC) queue
> redirection based on destination MAC address is currently broken in IGC.
> For instance, if we add the following rule, matching frames aren't
> enqueued on the expected rx queue.
> 
> $ ethtool -N IFNAME flow-type ether dst 3c:fd:fe:9e:7f:71 queue 2
> 
> The issue here is due to the fact that igc_rar_set_index() is missing
> code to enable the queue selection feature from Receive Address High
> (RAH) register. This patch adds the missing code and fixes the issue.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++++-
>   drivers/net/ethernet/intel/igc/igc_main.c    | 11 ++++++++---
>   2 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index e5116337b68d..63d3d34763da 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -63,8 +63,11 @@
>    * (RAR[15]) for our directed address used by controllers with
>    * manageability enabled, allowing us room for 15 multicast addresses.
>    */
> +#define IGC_RAH_QSEL_MASK	0x000C0000
> +#define IGC_RAH_QSEL_SHIFT	18
> +#define IGC_RAH_QSEL_ENABLE	BIT(28)
>   #define IGC_RAH_AV		0x80000000 /* Receive descriptor valid */
> -#define IGC_RAH_POOL_1		0x00040000
> +
>   #define IGC_RAL_MAC_ADDR_LEN	4
>   #define IGC_RAH_MAC_ADDR_LEN	2
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 025f2e439aef..49a0d0bff727 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -780,13 +780,18 @@ static void igc_rar_set_index(struct igc_adapter *adapter, u32 index)
>   	rar_low = le32_to_cpup((__le32 *)(addr));
>   	rar_high = le16_to_cpup((__le16 *)(addr + 4));
>   
> +	if (adapter->mac_table[index].state & IGC_MAC_STATE_QUEUE_STEERING) {
> +		u8 queue = adapter->mac_table[index].queue;
> +		u32 qsel = IGC_RAH_QSEL_MASK & (queue << IGC_RAH_QSEL_SHIFT);
> +
> +		rar_high |= qsel;
> +		rar_high |= IGC_RAH_QSEL_ENABLE;
> +	}
> +
>   	/* Indicate to hardware the Address is Valid. */
>   	if (adapter->mac_table[index].state & IGC_MAC_STATE_IN_USE) {
>   		if (is_valid_ether_addr(addr))
>   			rar_high |= IGC_RAH_AV;
> -
> -		rar_high |= IGC_RAH_POOL_1 <<
> -			adapter->mac_table[index].queue;
>   	}
>   
>   	wr32(IGC_RAL(index), rar_low);
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
