Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6494523357
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 14:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57E2E4049D;
	Wed, 11 May 2022 12:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBX5bU5g63-V; Wed, 11 May 2022 12:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D9EC403CA;
	Wed, 11 May 2022 12:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6501BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 12:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4317283459
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 12:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frFt28mm7Ci6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 12:49:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86F5C82C7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 12:49:16 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2C05061E6478B;
 Wed, 11 May 2022 14:49:13 +0200 (CEST)
Message-ID: <6246d753-00cb-b5dc-f5fc-d041a8e78718@molgen.mpg.de>
Date: Wed, 11 May 2022 14:49:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20220511122806.2146847-1-kai.heng.feng@canonical.com>
 <20220511122806.2146847-2-kai.heng.feng@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220511122806.2146847-2-kai.heng.feng@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igb: Make DMA faster when CPU is
 active on the PCIe link
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Kai-Hang,


Thank you for the patch.


Am 11.05.22 um 14:28 schrieb Kai-Heng Feng:
> We found Intel I210 can only achieve ~750Mbps Tx speed on some
> platforms. The RR2DCDELAY shows around 0x2xxx DMA delay, which will be

Please give an example platform, where it works and where it does not.

How did you test transfer speed?

> significantly lower when 1) ASPM is disabled or 2) SoC package c-state
> stays above PC3. When the RR2DCDELAY is around 0x1xxx the Tx speed can
> reach to ~950Mbps.
> 
> According to the I210 datasheet "8.26.1 PCIe Misc. Register - PCIEMISC",
> "DMA Idle Indication" doesn't seem to tie to DMA coalesce anymore, so
> set it to 1b for "DMA is considered idle when there is no Rx or Tx AND
> when there are no TLPs indicating that CPU is active detected on the
> PCIe link (such as the host executes CSR or Configuration register read
> or write operation)" and performing Tx should also fall under "active
> CPU on PCIe link" case.
> 
> In addition to that, commit b6e0c419f040 ("igb: Move DMA Coalescing init
> code to separate function.") seems to wrongly changed from enabling
> E1000_PCIEMISC_LX_DECISION to disabling it, also fix that.

Please split this into a separate commit with Fixes tag, and maybe the 
commit author in Cc.


Kind regards,

Paul


> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++-------
>   1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 34b33b21e0dcd..eca797dded429 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -9897,11 +9897,10 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 dmac_thr;
>   	u16 hwm;
> +	u32 reg;
>   
>   	if (hw->mac.type > e1000_82580) {
>   		if (adapter->flags & IGB_FLAG_DMAC) {
> -			u32 reg;
> -
>   			/* force threshold to 0. */
>   			wr32(E1000_DMCTXTH, 0);
>   
> @@ -9934,7 +9933,6 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
>   			/* Disable BMC-to-OS Watchdog Enable */
>   			if (hw->mac.type != e1000_i354)
>   				reg &= ~E1000_DMACR_DC_BMC2OSW_EN;
> -
>   			wr32(E1000_DMACR, reg);
>   
>   			/* no lower threshold to disable
> @@ -9951,12 +9949,12 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
>   			 */
>   			wr32(E1000_DMCTXTH, (IGB_MIN_TXPBSIZE -
>   			     (IGB_TX_BUF_4096 + adapter->max_frame_size)) >> 6);
> +		}
>   
> -			/* make low power state decision controlled
> -			 * by DMA coal
> -			 */
> +		if (hw->mac.type >= e1000_i210 ||
> +		    (adapter->flags & IGB_FLAG_DMAC)) {
>   			reg = rd32(E1000_PCIEMISC);
> -			reg &= ~E1000_PCIEMISC_LX_DECISION;
> +			reg |= E1000_PCIEMISC_LX_DECISION;
>   			wr32(E1000_PCIEMISC, reg);
>   		} /* endif adapter->dmac is not disabled */
>   	} else if (hw->mac.type == e1000_82580) {
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
