Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C99B95D7DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 22:32:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62EE6412FA;
	Fri, 23 Aug 2024 20:32:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eBYe3A8G6_rF; Fri, 23 Aug 2024 20:32:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5976B41302
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724445173;
	bh=8lhpz0OM60XCDN+GihJcVVYpuKfqUGXT2/kXiBiv6BA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mIOHFxKA2krLAgZBTf/fsHmTCOho6pq8UcveRRO8hAC1LwvHGZVmvt4VULEOXjGnz
	 hcKO8anWgSkh0Qh06REolIx4ssM8sOyHwSgsMQ3jJ+NP1GYs5KspoT1TkgwxFOB6g8
	 RGH28dGzL/Rpg+cZcPvbYkg0ynm5eGsOa/9J/is1HgmIa9HibC7VmlaUtcOZcFKxC5
	 5hN95uhmht9HCgeWaFVG4ZpMvHsS0MvbKmtJ8odnIDpgw/+tbU+nT6mEopX9uH0dOP
	 cK8RgsIoBk5XSL3rLCbOkESe1PGmZr0/xjU83uQbJ7hc/lnRC8fhjc15fPgyk48SUk
	 nnfEPracMxx7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5976B41302;
	Fri, 23 Aug 2024 20:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B7B11BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87A09840CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:32:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cruDPIri38sf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 20:32:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2D917840AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D917840AC
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D917840AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:32:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id DFD65CE125F;
 Fri, 23 Aug 2024 20:32:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA631C32786;
 Fri, 23 Aug 2024 20:32:43 +0000 (UTC)
Date: Fri, 23 Aug 2024 21:32:41 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240823203241.GG2164@kernel.org>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
 <20240820102402.576985-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820102402.576985-12-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724445165;
 bh=JQ5JOZzwdnT0+kxGtvfHEPjKZb5ojwItdamZxhU5O7E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oEknBgB+FrWd4YSfzQrsmKvoTzieo/Wjv01t4wP1RNGQ7QQAHfeGM8cF9uxJm/m+E
 GrF6jX5AvUCHMU98ZTrUbV0hQ07BxKVYj9eHuZi8HLP9VRJ0C5wqS44igUi/w2Gh2p
 iaWuY5bmNo8zJR7AhHazxrDlsTqhhRQXCfB2eV4N/O1USfm++0MRiSXdktPrpv6UX7
 dIOv/gGoET5HWOUlh8CIfHr+kCzJhKs4Du6+JiVBc9sInIQoBNNvw+IMf8/xbheM2W
 e9E5OdeKzv7fdp4yXQl0HfeVyG1IYwTNwGBiMLrY1+sgjT2YDma199LlIJ3Tfo9Ztq
 zm2qauuRfbypg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oEknBgB+
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 4/6] ice: Process TSYN IRQ
 in a separate function
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 20, 2024 at 12:21:51PM +0200, Karol Kolacinski wrote:
> Simplify TSYN IRQ processing by moving it to a separate function and
> having appropriate behavior per PHY model, instead of multiple
> conditions not related to HW, but to specific timestamping modes.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index cf3b02d14b19..861f6224540a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2760,6 +2760,65 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
>  	}
>  }
>  
> +/**
> + * ice_ptp_ts_irq - Process the PTP Tx timestamps in IRQ context
> + * @pf: Board private structure
> + *
> + * Return: IRQ_WAKE_THREAD if Tx timestamp read has to be handled in the bottom
> + *         half of the interrupt and IRQ_HANDLED otherwise.
> + */
> +irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
> +{
> +	struct ice_hw *hw = &pf->hw;
> +
> +	switch (hw->mac_type) {
> +	case ICE_MAC_E810:
> +		/* E810 capable of low latency timestamping with interrupt can
> +		 * request a single timestamp in the top half and wait for
> +		 * a second LL TS interrupt from the FW when it's ready.
> +		 */
> +		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
> +			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
> +			u8 idx;
> +
> +			if (!ice_pf_state_is_nominal(pf))
> +				return IRQ_HANDLED;
> +
> +			spin_lock(&tx->lock);
> +			idx = find_next_bit_wrap(tx->in_use, tx->len,
> +						 tx->last_ll_ts_idx_read + 1);
> +			if (idx != tx->len)
> +				ice_ptp_req_tx_single_tstamp(tx, idx);
> +			spin_unlock(&tx->lock);
> +
> +			return IRQ_HANDLED;
> +		}
> +		fallthrough; /* non-LL_TS E810 */
> +	case ICE_MAC_GENERIC:
> +	case ICE_MAC_GENERIC_3K_E825:
> +		/* All other devices process timestamps in the bottom half due
> +		 * to sleeping or polling.
> +		 */
> +		if (!ice_ptp_pf_handles_tx_interrupt(pf))
> +			return IRQ_HANDLED;
> +
> +		set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
> +		return IRQ_WAKE_THREAD;
> +	case ICE_MAC_E830:
> +		/* E830 can read timestamps in the top half using rd32() */
> +		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
> +			/* Process outstanding Tx timestamps. If there
> +			 * is more work, re-arm the interrupt to trigger again.
> +			 */
> +			wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
> +			ice_flush(hw);
> +		}
> +		return IRQ_HANDLED;

I think it would be better to split out adding E830 support into a separate
patch, leaving this patch as strictly refactoring of existing code.

> +	default:
> +		return IRQ_HANDLED;
> +	}
> +}
> +
>  /**
>   * ice_ptp_maybe_trigger_tx_interrupt - Trigger Tx timstamp interrupt
>   * @pf: Board private structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h

...

> @@ -360,6 +361,11 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
>  	return true;
>  }
>  
> +static inline irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
> +{
> +	return IRQ_HANDLED;
> +}

This no-op implementation is in effect if CONFIG_PTP_1588_CLOCK is not
enabled. Whereas previously the fuller implementation would have run.
I think that deserves some coverage in the patch description.

> +
>  static inline u64
>  ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
>  		    const struct ice_pkt_ctx *pkt_ctx)
> -- 
> 2.46.0
> 
> 
