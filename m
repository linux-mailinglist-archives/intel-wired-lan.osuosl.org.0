Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AD27FA6BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 17:46:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BD2C4087E;
	Mon, 27 Nov 2023 16:46:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BD2C4087E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701103615;
	bh=4+L/MMfwOLgCUH8oI+17m+1IudlL6h2LmyfSvNSPxKI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZghSmUcucr2WTitgdA2linR9nQzir2zgW8ks6NYQ4wlhcnmUf7u/tOn/tOQzxlkh
	 YnEv0pse3fjDxZZ/oR8V1xyWW5ImMkmyhNvxKEQ19yHNTmKwAkCA+05VvN8qWXyZYq
	 Fpi/kL5cj5leXFH5P+JwLKCXcfmYFtmWIzTwHs/clWOc4a8NtTJAPhU77ShW2qC/0M
	 3QTmgK3La7DhTbGYWrV6PK7YKQsqq/b2z8wcMEBlU2L1xUy/Dhi4U4n+9F8sNxMXbY
	 N5oi0ER0Y2lBHW3KCCo0i6vrIupWlcjDbUM/kD5TQav+pWjS8vaIbWaOWu+6JopdKx
	 lfmVOTMbeCBTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-5mqVQIbYug; Mon, 27 Nov 2023 16:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A44840861;
	Mon, 27 Nov 2023 16:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A44840861
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29CA41BF405
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 16:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3EBA40528
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 16:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3EBA40528
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IY0Y0FMRFDVU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 16:46:48 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E54074014E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 16:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E54074014E
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id CC4A0B81A34;
 Mon, 27 Nov 2023 16:46:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B86C433C8;
 Mon, 27 Nov 2023 16:46:42 +0000 (UTC)
Date: Mon, 27 Nov 2023 16:46:40 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20231127164640.GF84723@kernel.org>
References: <20231124114155.251360-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124114155.251360-1-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701103604;
 bh=fBXkpMFA9S/5p32o9jFsYCv1lzUrDzQObofJV4PDyds=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fHvTLHVOKpushLJOsi2d3zCV/LY8agHtoqdPXGkpLG4rQ1VSwGL0OE2VziNre+sSE
 eNUYVR6vE1NLcx4GnZ+/J31yRdhiP4ZNvN80OSeyDAWsdAeUe6ovl2pr6FlCnL7Zh6
 x0nVsHE5ECQhb/2oLt1KIPpuuQeR4vXJWVKP8n9XLyt/dpiSlAK8Zsx7T048FiZ4vK
 jO3VsRap/dBqZZ2cN6SpPD+7rWm66JfqlgqVdLiu19ZfVu/WmhhEMOUU2tVqLjPOBm
 UIlcCWBzucqhqNTOb1oISbPhw+3n835BaJYSA37VlkcJyXt7PEFu2LgXWOddKvZ+0/
 165qaMSiteFfw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fHvTLHVO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Schedule service
 task in IRQ top half
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
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 Michal Michalik <michal.michalik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 12:41:54PM +0100, Karol Kolacinski wrote:
> Schedule service task and EXTTS in the top half to avoid bottom half
> scheduling if possible, which significantly reduces timestamping delay.
> 
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  1 -
>  drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++--------
>  2 files changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 3ea33947b878..d5a8da0c02c3 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -517,7 +517,6 @@ enum ice_pf_flags {
>  };
>  
>  enum ice_misc_thread_tasks {
> -	ICE_MISC_THREAD_EXTTS_EVENT,
>  	ICE_MISC_THREAD_TX_TSTAMP,
>  	ICE_MISC_THREAD_NBITS		/* must be last */
>  };
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1f159b4362ec..6b91ec6f420d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3078,6 +3078,7 @@ static void ice_ena_misc_vector(struct ice_pf *pf)
>  static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>  {
>  	struct ice_pf *pf = (struct ice_pf *)data;
> +	irqreturn_t ret = IRQ_HANDLED;
>  	struct ice_hw *hw = &pf->hw;
>  	struct device *dev;
>  	u32 oicr, ena_mask;
> @@ -3161,6 +3162,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>  		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
>  		if (ice_ptp_pf_handles_tx_interrupt(pf))

Hi Karol,

it seems that a trailing '{' is missing from the line above.

>  			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
> +			ret = IRQ_WAKE_THREAD;
> +		}
>  	}
>  
>  	if (oicr & PFINT_OICR_TSYN_EVNT_M) {

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
