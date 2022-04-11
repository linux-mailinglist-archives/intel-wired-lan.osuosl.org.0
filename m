Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61914FBB57
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Apr 2022 13:51:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ADCF40A03;
	Mon, 11 Apr 2022 11:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkLYKPqKkQhx; Mon, 11 Apr 2022 11:51:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56CD7405D1;
	Mon, 11 Apr 2022 11:51:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEC761BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 11:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CF19840AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 11:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcwgf7MpY06m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 11:50:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD88A8409A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 11:50:56 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae91f.dynamic.kabel-deutschland.de
 [95.90.233.31])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 14CC861EA1923;
 Mon, 11 Apr 2022 13:50:53 +0200 (CEST)
Message-ID: <019c889a-35be-a443-38a0-113e094d68b4@molgen.mpg.de>
Date: Mon, 11 Apr 2022 13:50:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20220405205437.29829-1-vinicius.gomes@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220405205437.29829-1-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix suspending when
 PTM is active
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
Cc: roots@gmx.de, intel-wired-lan@lists.osuosl.org, andre.roeder@hetzner.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vinicius,


Thank you for your patch.

Am 05.04.22 um 22:54 schrieb Vinicius Costa Gomes:
> Some mainboard/CPU combinations have shown problems with
> suspend/resume when PCIe PTM is enabled and active.

Please give a concrete example of a mainboard/CPU combination with that 
problem, and document exactly what the problem is (system hangs, when, 
where, just no network device)?

Also, please use 75 characters per line in commit messages.

> The best we can do is to stop PTM dialogs from the downstream/device
> side before the interface is brought down. PCIe PTM will be
> re-enabled when the interface is being brought up.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> Stefan,
> 
> I believe that this should be a more general solution to the problem you reported in
> https://lore.kernel.org/all/924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de/
> 
> Would it be possible for you revert commit 1e81dcc1ab7d ("igc: Do not
> enable crosstimestamping for i225-V models") and apply this one, and
> see if it works for you? I don't have your exact setup.
> 
> Cheers,
> 
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 0d6e3215e98f..653e9f1e35b5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -992,6 +992,17 @@ static void igc_ptp_time_restore(struct igc_adapter *adapter)
>   	igc_ptp_write_i225(adapter, &ts);
>   }
>   
> +static void igc_ptm_stop(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 ctrl;
> +
> +	ctrl = rd32(IGC_PTM_CTRL);
> +	ctrl &= ~IGC_PTM_CTRL_EN;
> +
> +	wr32(IGC_PTM_CTRL, ctrl);
> +}
> +
>   /**
>    * igc_ptp_suspend - Disable PTP work items and prepare for suspend
>    * @adapter: Board private structure
> @@ -1009,8 +1020,10 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
>   	adapter->ptp_tx_skb = NULL;
>   	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
>   
> -	if (pci_device_is_present(adapter->pdev))
> +	if (pci_device_is_present(adapter->pdev)) {
>   		igc_ptp_time_save(adapter);
> +		igc_ptm_stop(adapter);
> +	}
>   }
>   
>   /**

Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
