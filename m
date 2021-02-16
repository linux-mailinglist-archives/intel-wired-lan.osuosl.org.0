Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E4131C82F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 10:38:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81052867CD;
	Tue, 16 Feb 2021 09:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QutY0gG+g-HW; Tue, 16 Feb 2021 09:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 024C08677F;
	Tue, 16 Feb 2021 09:38:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 439811BF285
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 09:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4027E84FA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 09:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKEOtTUb-Ftb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Feb 2021 09:38:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AD87084F2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 09:38:07 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea7e.dynamic.kabel-deutschland.de
 [95.90.234.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 94E1820647912;
 Tue, 16 Feb 2021 10:38:04 +0100 (CET)
To: Ederson de Souza <ederson.desouza@intel.com>
References: <20210212014212.41570-1-ederson.desouza@intel.com>
 <20210212014212.41570-2-ederson.desouza@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <83c274f0-4b5a-b5d5-4722-5f0f79cb2c76@molgen.mpg.de>
Date: Tue, 16 Feb 2021 10:38:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212014212.41570-2-ederson.desouza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Enable
 internal i225 PPS
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

Dear Ederson,


Am 12.02.21 um 02:42 schrieb Ederson de Souza:
> The i225 device can produce one interrupt on the full second. This patch

Please reference the spec.

> allows using this interrupt to generate an internal PPS event for
> adjusting the kernel system time.

How can this be tested?

A more elaborate description of the implementation would be useful in 
commit messages.

> Signed-off-by: Ederson de Souza <ederson.desouza@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_main.c |  8 +++++++
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 28 ++++++++++++++++++++++-
>   3 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 415cfea27718..fa81cec80711 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -224,6 +224,8 @@ struct igc_adapter {
>   	char fw_version[32];
>   
>   	struct bpf_prog *xdp_prog;
> +
> +	bool pps_sys_wrap_on;
>   };
>   
>   void igc_up(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c363f7fd1aaa..5e3b6ac00b3a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4599,9 +4599,17 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
>   static void igc_tsync_interrupt(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> +	struct ptp_clock_event event;
>   	u32 tsicr = rd32(IGC_TSICR);
>   	u32 ack = 0;
>   
> +	if (tsicr & IGC_TSICR_SYS_WRAP) {
> +		event.type = PTP_CLOCK_PPS;
> +		if (adapter->ptp_caps.pps)
> +			ptp_clock_event(adapter->ptp_clock, &event);
> +		ack |= IGC_TSICR_SYS_WRAP;
> +	}
> +
>   	if (tsicr & IGC_TSICR_TXTS) {
>   		/* retrieve hardware timestamp */
>   		schedule_work(&adapter->ptp_tx_work);
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 7301a7b3fadc..868cd51909e9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -123,6 +123,29 @@ static int igc_ptp_settime_i225(struct ptp_clock_info *ptp,
>   static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
>   				       struct ptp_clock_request *rq, int on)
>   {
> +	struct igc_adapter *igc =
> +		container_of(ptp, struct igc_adapter, ptp_caps);
> +	struct igc_hw *hw = &igc->hw;
> +	unsigned long flags;
> +	u32 tsim;
> +
> +	switch (rq->type) {
> +	case PTP_CLK_REQ_PPS:
> +		spin_lock_irqsave(&igc->tmreg_lock, flags);
> +		tsim = rd32(IGC_TSIM);
> +		if (on)
> +			tsim |= IGC_TSICR_SYS_WRAP;
> +		else
> +			tsim &= ~IGC_TSICR_SYS_WRAP;
> +		igc->pps_sys_wrap_on = !!on;
> +		wr32(IGC_TSIM, tsim);
> +		spin_unlock_irqrestore(&igc->tmreg_lock, flags);
> +		return 0;
> +
> +	default:
> +		break;
> +	}
> +
>   	return -EOPNOTSUPP;
>   }
>   
> @@ -497,6 +520,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>   		adapter->ptp_caps.gettimex64 = igc_ptp_gettimex64_i225;
>   		adapter->ptp_caps.settime64 = igc_ptp_settime_i225;
>   		adapter->ptp_caps.enable = igc_ptp_feature_enable_i225;
> +		adapter->ptp_caps.pps = 1;
>   		break;
>   	default:
>   		adapter->ptp_clock = NULL;
> @@ -598,7 +622,9 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>   	case igc_i225:
>   		wr32(IGC_TSAUXC, 0x0);
>   		wr32(IGC_TSSDP, 0x0);
> -		wr32(IGC_TSIM, IGC_TSICR_INTERRUPTS);
> +		wr32(IGC_TSIM,
> +		     IGC_TSICR_INTERRUPTS |
> +		     (adapter->pps_sys_wrap_on ? IGC_TSICR_SYS_WRAP : 0));
>   		wr32(IGC_IMS, IGC_IMS_TS);
>   		break;
>   	default:

Otherwise, this looks good.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
