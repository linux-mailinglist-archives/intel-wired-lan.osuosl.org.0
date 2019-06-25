Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FB655306
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 17:15:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B17E0855EA;
	Tue, 25 Jun 2019 15:15:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3RBhO7GfPIf; Tue, 25 Jun 2019 15:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC5A685754;
	Tue, 25 Jun 2019 15:15:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6311BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 15:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B0D520002
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 15:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNWRgeVwaCEB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 15:15:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 3282A20534
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 15:15:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:15:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="166706339"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2019 08:15:09 -0700
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20190625143911.37284-1-vitaly.lifshits@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <e54d6835-84bc-17bb-de59-d87c53bd5bb4@intel.com>
Date: Tue, 25 Jun 2019 18:15:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625143911.37284-1-vitaly.lifshits@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: PCIm function state support
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

On 6/25/2019 17:39, Vitaly Lifshits wrote:
> Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime
> 			pm for platform with D0i3")
> When disconnecting the cable and reconnecting it the NIC
> enters DMoff state. This caused wrong link indication
> and duplex mismatch. This bug is described in:
> https://bugzilla.redhat.com/show_bug.cgi?id=1689436
> 
> Checking PCIm function state and performing PHY reset after a
> timeout in watchdog task solves this issue.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> 
> V2: Fixed typos in commit massage
> V3: Fixed minor typo
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++-
>   2 files changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index fd550dee4982..13877fe300f1 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -222,6 +222,9 @@
>   #define E1000_STATUS_PHYRA      0x00000400      /* PHY Reset Asserted */
>   #define E1000_STATUS_GIO_MASTER_ENABLE	0x00080000	/* Master Req status */
>   
> +/* PCIm function state */
> +#define E1000_STATUS_PCIM_STATE         0x40000000
> +
>   #define HALF_DUPLEX 1
>   #define FULL_DUPLEX 2
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b081a1ef6859..c6a10fd30e4e 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5173,8 +5173,9 @@ static void e1000_watchdog_task(struct work_struct *work)
>   	struct e1000_mac_info *mac = &adapter->hw.mac;
>   	struct e1000_phy_info *phy = &adapter->hw.phy;
>   	struct e1000_ring *tx_ring = adapter->tx_ring;
> +	u32 dmoff_exit_timeout = 100, tries = 0;
>   	struct e1000_hw *hw = &adapter->hw;
> -	u32 link, tctl;
> +	u32 link, tctl, pcim_state;
>   
>   	if (test_bit(__E1000_DOWN, &adapter->state))
>   		return;
> @@ -5199,6 +5200,21 @@ static void e1000_watchdog_task(struct work_struct *work)
>   			/* Cancel scheduled suspend requests. */
>   			pm_runtime_resume(netdev->dev.parent);
>   
> +			/* Checking if MAC is in DMoff state*/
> +			pcim_state = er32(STATUS);
> +			while (pcim_state & E1000_STATUS_PCIM_STATE) {
> +				if (tries++ == dmoff_exit_timeout) {
> +					e_dbg("Error in exiting dmoff\n");
> +					break;
> +				}
> +				usleep_range(10000, 20000);
> +				pcim_state = er32(STATUS);
> +
> +				/* Checking if MAC exited DMoff state */
> +				if (!(pcim_state & E1000_STATUS_PCIM_STATE))
> +					e1000_phy_hw_reset(&adapter->hw);
> +			}
> +
>   			/* update snapshot of PHY registers on LSC */
>   			e1000_phy_read_status(adapter);
>   			mac->ops.get_link_up_info(&adapter->hw,
> 
Thanks Vitalik
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
