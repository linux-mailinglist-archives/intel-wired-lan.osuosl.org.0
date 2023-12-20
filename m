Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35090819DFC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 12:27:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A452D41C46;
	Wed, 20 Dec 2023 11:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A452D41C46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703071661;
	bh=yo1M5GB8g5AFrnhsZqPA4DekWhTe7dOMtTdSH2tD6tI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RwupaP0Yn1mDkjLu9K8RFoT/IdyjQiRYPe6gYByT1W8xUpGAqM8ZwRVlRvKt2C2Fa
	 /Tak3JCn7oYi5ZtideFEGf8QsmH58jObbSF2vGFK5xqh+35mu+j3TyIgEoMv88EsZ7
	 GqhAfvQFTVnGKqjXvTLgrJV13eF4KjQAJ2N1SvO5fvmWrlG+EBtG5UcEKhacHeLRft
	 wieWm1ozdIr8F4xrPg08sa3h/xWLQo455EbBjNsO02Dsd3u2y8wB7N4JGGT1vyhREC
	 xRsICFOkx/F2wc/DEm8K66tQuP+rBuorUrZqPCuZ/k/VqhJMTTIFED5JAfAI3Zka5N
	 FflRgU/Sh61Hw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EGLnQ8BOcWLx; Wed, 20 Dec 2023 11:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3737441C33;
	Wed, 20 Dec 2023 11:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3737441C33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9044B1BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 11:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58EC260FD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 11:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58EC260FD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gd7pKKXulCjW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 11:27:34 +0000 (UTC)
X-Greylist: delayed 518 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Dec 2023 11:27:34 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01DB560C11
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com
 [91.218.175.183])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01DB560C11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 11:27:33 +0000 (UTC)
Message-ID: <8a16a1bf-6283-403d-b051-67c81676a8b9@linux.dev>
Date: Wed, 20 Dec 2023 11:18:48 +0000
MIME-Version: 1.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20231220104323.974456-1-karol.kolacinski@intel.com>
 <20231220104323.974456-3-karol.kolacinski@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20231220104323.974456-3-karol.kolacinski@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1703071133;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QkiZ6qQAAvqXUdID27T4K2HVmd1YMSW53EWKtvb1+MM=;
 b=Q3MXW/KRTUyA5tOfh0Wi+6PrrhDOoRoQPA2sG99CGeNPsD3rAivjRT38KkGAyYJDbtuLEN
 DtCjt0EMrWDKLP2PFY4YUfYsAGvVIWpvWIKRSotc2ypr9/3RXjt51kpUId1GChdkyCqtYi
 RT2oQWfodCVa1Bx3KR5VoLBOfD4GFgY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Q3MXW/KR
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 2/6] ice: pass reset type
 to PTP reset functions
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20/12/2023 10:43, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_prepare_for_reset() and ice_ptp_reset() functions currently
> check the pf->flags ICE_FLAG_PFR_REQ bit to determine if the current
> reset is a PF reset or not.
> 
> This is problematic, because it is possible that a PF reset and a higher
> level reset (CORE reset, GLOBAL reset, EMP reset) are requested
> simultaneously. In that case, the driver performs the highest level
> reset requested. However, the ICE_FLAG_PFR_REQ flag will still be set.
> 
> The main driver reset functions take an enum ice_reset_req indicating
> which reset is actually being performed. Pass this data into the PTP
> functions and rely on this instead of relying on the driver flags.
> 
> This ensures that the PTP code performs the proper level of reset that
> the driver is actually undergoing.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c |  4 ++--
>   drivers/net/ethernet/intel/ice/ice_ptp.c  | 13 +++++++------
>   drivers/net/ethernet/intel/ice/ice_ptp.h  | 19 +++++++++++++++++--
>   3 files changed, 26 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 77ba737a50df..a14e8734cc27 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -613,7 +613,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	ice_pf_dis_all_vsi(pf, false);
>   
>   	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
> -		ice_ptp_prepare_for_reset(pf);
> +		ice_ptp_prepare_for_reset(pf, reset_type);
>   
>   	if (ice_is_feature_supported(pf, ICE_F_GNSS))
>   		ice_gnss_exit(pf);
> @@ -7554,7 +7554,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	 * fail.
>   	 */
>   	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
> -		ice_ptp_reset(pf);
> +		ice_ptp_reset(pf, reset_type);
>   
>   	if (ice_is_feature_supported(pf, ICE_F_GNSS))
>   		ice_gnss_init(pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index d7de65f8dd53..c309d3fd5a4e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2631,8 +2631,9 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
>   /**
>    * ice_ptp_prepare_for_reset - Prepare PTP for reset
>    * @pf: Board private structure
> + * @reset_type: the reset type being performed
>    */
> -void ice_ptp_prepare_for_reset(struct ice_pf *pf)
> +void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>   {
>   	struct ice_ptp *ptp = &pf->ptp;
>   	u8 src_tmr;
> @@ -2647,7 +2648,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
>   
>   	kthread_cancel_delayed_work_sync(&ptp->work);
>   
> -	if (test_bit(ICE_PFR_REQ, pf->state))
> +	if (reset_type == ICE_RESET_PFR)
>   		return;
>   
>   	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
> @@ -2667,8 +2668,9 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf)
>   /**
>    * ice_ptp_reset - Initialize PTP hardware clock support after reset
>    * @pf: Board private structure
> + * @reset_type: the reset type being performed
>    */
> -void ice_ptp_reset(struct ice_pf *pf)
> +void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>   {
>   	struct ice_ptp *ptp = &pf->ptp;
>   	struct ice_hw *hw = &pf->hw;
> @@ -2678,7 +2680,7 @@ void ice_ptp_reset(struct ice_pf *pf)
>   
>   	if (ptp->state != ICE_PTP_RESETTING) {
>   		if (ptp->state == ICE_PTP_READY) {
> -			ice_ptp_prepare_for_reset(pf);
> +			ice_ptp_prepare_for_reset(pf, reset_type);
>   		} else {
>   			err = -EINVAL;
>   			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> @@ -2686,8 +2688,7 @@ void ice_ptp_reset(struct ice_pf *pf)
>   		}
>   	}
>   
> -	if (test_bit(ICE_PFR_REQ, pf->state) ||
> -	    !ice_pf_src_tmr_owned(pf))
> +	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
>   		goto pfr;
>   
>   	err = ice_ptp_init_phc(hw);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 2457380142e1..7b748f22e6f7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -314,8 +314,8 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
>   
>   u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
>   			const struct ice_pkt_ctx *pkt_ctx);
> -void ice_ptp_reset(struct ice_pf *pf);
> -void ice_ptp_prepare_for_reset(struct ice_pf *pf);
> +void ice_ptp_prepare_for_reset(struct ice_pf *pf,
> +			       enum ice_reset_req reset_type);
>   void ice_ptp_init(struct ice_pf *pf);
>   void ice_ptp_release(struct ice_pf *pf);
>   void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
> @@ -347,6 +347,7 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
>   {
>   	return true;
>   }
> +<<<<<<< HEAD

    ^^^^^^^^^^^^ - looks like some mess from internal merge?

>   
>   static inline u64
>   ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
> @@ -357,6 +358,20 @@ ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
>   
>   static inline void ice_ptp_reset(struct ice_pf *pf) { }
>   static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
> +=======

    ^^^^^^^ here again

> +static inline void
> +ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
> +		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
> +static inline void ice_ptp_reset(struct ice_pf *pf,
> +				 enum ice_reset_req reset_type)
> +{
> +}
> +
> +static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf,
> +					     enum ice_reset_req reset_type)
> +{
> +}
> +>>>>>>> 86982aff2a40 (ice: pass reset type to PTP reset functions)

    and again...

>   static inline void ice_ptp_init(struct ice_pf *pf) { }
>   static inline void ice_ptp_release(struct ice_pf *pf) { }
>   static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)

pw-bot: cr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
