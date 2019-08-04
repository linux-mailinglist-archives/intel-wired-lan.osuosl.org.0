Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E980580B32
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Aug 2019 15:45:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 531472042B;
	Sun,  4 Aug 2019 13:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUKzRiGjwFpM; Sun,  4 Aug 2019 13:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D4F420406;
	Sun,  4 Aug 2019 13:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D472F1BF616
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2019 13:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D05F587A5E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2019 13:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7nsAt49rOouc for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Aug 2019 13:44:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2984C87A4F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2019 13:44:57 +0000 (UTC)
Received: from [10.0.101.109] (unknown [62.214.191.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DD3F8201A3C22;
 Sun,  4 Aug 2019 15:44:54 +0200 (CEST)
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20190804074026.25198-1-vitaly.lifshits@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <8829b684-518d-2233-d618-4f1367c2dbbd@molgen.mpg.de>
Date: Sun, 4 Aug 2019 15:44:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804074026.25198-1-vitaly.lifshits@intel.com>
Content-Language: de-DE
Subject: Re: [Intel-wired-lan] [PATCH v4] e1000e: PCIm function state support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for the updated version.

On 04.08.19 09:40, Vitaly Lifshits wrote:
> Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime
> pm for platform with D0i3")
> when disconnecting the cable and reconnecting it the NIC
> enters DMoff state. This caused wrong link indication
> and duplex mismatch.

*and* should fit on the line above.

> Checking PCIm function state and performing PHY reset after
> exiting DMoff state in watchdog task, solves this issue.
> 
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=1689436
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> 
> V2: Fix typos in commit message
> V3: Fix minor typo
> V4: Address community comments
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h |  4 ++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 20 +++++++++++++++++++-
>   2 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index fd550dee4982..4cff73cbd032 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -222,6 +222,10 @@
>   #define E1000_STATUS_PHYRA      0x00000400      /* PHY Reset Asserted */
>   #define E1000_STATUS_GIO_MASTER_ENABLE	0x00080000	/* Master Req status */
>   
> +/* PCIm function state */
> +#define E1000_STATUS_PCIM_STATE	0x40000000
> +#define PCIM_DMOFF_EXIT_TIMEOUT 100

Align the values?

> +
>   #define HALF_DUPLEX 1
>   #define FULL_DUPLEX 2
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b5fed6177ad6..2d29c0d0be1b 100644
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
> +			/* Checking if MAC is in DMoff state*/

s/Checking/Check/

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

I still believe, the if statement should be moved *outside* the loop.

> +			}
> +
>   			/* update snapshot of PHY registers on LSC */
>   			e1000_phy_read_status(adapter);
>   			mac->ops.get_link_up_info(&adapter->hw,


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
