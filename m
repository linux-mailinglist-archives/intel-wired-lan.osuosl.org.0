Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCA0846EF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2019 10:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EA2B881D9;
	Wed,  7 Aug 2019 08:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v11sHlnC063I; Wed,  7 Aug 2019 08:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E468881EC;
	Wed,  7 Aug 2019 08:16:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 929361BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 08:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E83A8746D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 08:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibHj3tXJwoVe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 08:16:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BE3987475
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 08:16:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 01:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,356,1559545200"; d="scan'208";a="373690015"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga005.fm.intel.com with ESMTP; 07 Aug 2019 01:16:06 -0700
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20190807073611.21733-1-vitaly.lifshits@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <75aae517-972f-0636-6d53-52d12400a1a9@intel.com>
Date: Wed, 7 Aug 2019 11:16:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190807073611.21733-1-vitaly.lifshits@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5] e1000e: PCIm function state support
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

On 8/7/2019 10:36, Vitaly Lifshits wrote:
> Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime pm for
> platform with D0i3"), when the cable is disconnect and reconnected,
> the NIC can enter a DMoff state.  The DMoff state will cause incorrect
> link indication and duplex setting mismatch.
> 
> To resolve this, we need to check the PCIm function state and perform
> a PHY reset after exiting the DMoff state in our watchdog service task.
> 
> Fixes: 5d8682588605 ("[misc] mei: me: allow runtime pm for platform with D0i3")
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=1689436
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> 
> V2: Fix typos in commit message
> V3: Fix minor typo
> V4: Address community comments
> V5: Address community comments
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h |  4 ++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 20 +++++++++++++++++++-
>   2 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index fd550dee4982..11452eaac233 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -222,6 +222,10 @@
>   #define E1000_STATUS_PHYRA      0x00000400      /* PHY Reset Asserted */
>   #define E1000_STATUS_GIO_MASTER_ENABLE	0x00080000	/* Master Req status */
>   
> +/* PCIm function state */
> +#define E1000_STATUS_PCIM_STATE	0x40000000
> +#define PCIM_DMOFF_EXIT_TIMEOUT	100
> +
>   #define HALF_DUPLEX 1
>   #define FULL_DUPLEX 2
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b5fed6177ad6..639266485c15 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5162,7 +5162,7 @@ static void e1000_watchdog_task(struct work_struct *work)
>   	struct e1000_phy_info *phy = &adapter->hw.phy;
>   	struct e1000_ring *tx_ring = adapter->tx_ring;
>   	struct e1000_hw *hw = &adapter->hw;
> -	u32 link, tctl;
> +	u32 link, tctl, pcim_state, tries = 0;
>   
>   	if (test_bit(__E1000_DOWN, &adapter->state))
>   		return;
> @@ -5187,6 +5187,24 @@ static void e1000_watchdog_task(struct work_struct *work)
>   			/* Cancel scheduled suspend requests. */
>   			pm_runtime_resume(netdev->dev.parent);
>   
> +			/* Check if MAC is in DMoff state */
> +			pcim_state = er32(STATUS);
> +			while (pcim_state & E1000_STATUS_PCIM_STATE) {
> +				if (tries++ == PCIM_DMOFF_EXIT_TIMEOUT) {
> +					e_dbg("Error in exiting dmoff\n");
> +					e_err("PCIm DMoff timeout expired\n");
> +					break;
> +				}
> +				usleep_range(10000, 20000);
> +				pcim_state = er32(STATUS);
> +
> +				/* If MAC entered DMoff state, PHY reset is
> +				 * needed after exiting it
> +				 */
> +				if (!(pcim_state & E1000_STATUS_PCIM_STATE))
> +					e1000_phy_hw_reset(&adapter->hw);
> +			}
> +
>   			/* update snapshot of PHY registers on LSC */
>   			e1000_phy_read_status(adapter);
>   			mac->ops.get_link_up_info(&adapter->hw,
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
