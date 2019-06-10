Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8181F3B6FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2019 16:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B912863E0;
	Mon, 10 Jun 2019 14:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2rgWd23+vOL; Mon, 10 Jun 2019 14:12:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C00DD87082;
	Mon, 10 Jun 2019 14:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D5591BF41D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 14:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49C24863E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 14:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSJBxTOv+sEx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2019 14:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 784AE86361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 14:12:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 07:12:28 -0700
X-ExtLoop1: 1
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2019 07:12:27 -0700
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20190610112657.10952-1-vitaly.lifshits@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <8e516df0-4883-7e35-0928-473ab47662bf@intel.com>
Date: Mon, 10 Jun 2019 17:12:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190610112657.10952-1-vitaly.lifshits@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: PCIm function state
 support
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

On 6/10/2019 14:26, Vitaly Lifshits wrote:
> Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime
> 			pm for platform with D0i3")
> When disconnecting the cable and reconnecting it the NIC
> enters DMoff state. This caused wring link indication
> and duplex mismatch. This bug is decribed in:
> https://bugzilla.redhat.com/show_bug.cgi?id=1689436
> 
> Checking PCIm function state and performing PHY reset after a
> timeout in watchdog task solves this issue.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
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
