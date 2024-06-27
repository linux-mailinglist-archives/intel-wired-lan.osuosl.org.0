Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B32591AB90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 17:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B80B41695;
	Thu, 27 Jun 2024 15:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtz1en1QPzsW; Thu, 27 Jun 2024 15:38:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FC29416B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719502692;
	bh=oT2fBuGl+npeGzbI5dbDU09LfGHK+3jR87XAzOnLop4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SNaosgDTwyRVE4m/9YnzyEg7Q2VjY775VVa5PegSowfk2VV2IDXHlBqHE1eEd56OR
	 5mgMHJK7N4pO68QPE5F3lV6xBQNfycYbW4NXjwxDs3a4U7Mn6rrfkqKEeipn5oazf/
	 IBEiTOhGo6w9zxNwdf5uvLZN0oDGaAgKOH/fi46x7PoONn/twmNWe2cjD0Wc4gNwZY
	 StlOQnbz3vGiaJ89FnxVeuKi8dt7kyE3Aq24h8D2uaLYxKM+hT7M0+P4i5KzGIq3Xq
	 CohQGdjQlGn+TKRkEM+XM6R9a3Zi+KfOkn0Tau+WENivlvIvbZNwqko9yNOVXUTbyA
	 vNJ1yM79Qkt0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FC29416B4;
	Thu, 27 Jun 2024 15:38:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD7DB1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:38:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D477182C4D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:38:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBnSHKtTARez for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 15:38:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7147C84150
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7147C84150
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7147C84150
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 15:38:07 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5BBFE61E5FE01;
 Thu, 27 Jun 2024 17:37:51 +0200 (CEST)
Message-ID: <1039bcb9-c390-495c-b5c5-aca03a5a6ba4@molgen.mpg.de>
Date: Thu, 27 Jun 2024 17:37:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-16-karol.kolacinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240627151127.284884-16-karol.kolacinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
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
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Karol, dear Sergey,


Thank you for the patch.


Am 27.06.24 um 17:09 schrieb Karol Kolacinski:
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Implement 1PPS signal enabling/disabling in CGU. The amplitude is
> always the maximum in this implementation

(Please add a dot/period at the end of sentences.)

Could you please elaborate why using the maximum is alright, that means 
what are the downsides, and what is the alternative approahc.

> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 10 ++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 21 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>   3 files changed, 32 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index d9ff94a4b293..b97ea2b61e5c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -4,6 +4,7 @@
>   #include "ice.h"
>   #include "ice_lib.h"
>   #include "ice_trace.h"
> +#include "ice_cgu_regs.h"
>   
>   static const char ice_pin_names[][64] = {
>   	"SDP0",
> @@ -1708,6 +1709,15 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
>   	/* 0. Reset mode & out_en in AUX_OUT */
>   	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
>   
> +	if (ice_is_e825c(hw)) {
> +		int err;
> +
> +		/* Enable/disable CGU 1PPS output for E825C */
> +		err = ice_cgu_ena_pps_out(hw, !!period);
> +		if (err)
> +			return err;
> +	}

Does only E825C products support this feature?

> +
>   	/* 1. Write perout with half of required period value.
>   	 * HW toggles output when source clock hits the TGT and then adds
>   	 * GLTSYN_CLKO value to the target, so it ends up with 50% duty cycle.
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 07ecf2a86742..fa7cf8453b88 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -661,6 +661,27 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>   	return 0;
>   }
>   
> +#define ICE_ONE_PPS_OUT_AMP_MAX 3
> +
> +/**
> + * ice_cgu_ena_pps_out - Enable/disable 1PPS output
> + * @hw: pointer to the HW struct
> + * @ena: Enable/disable 1PPS output
> + */
> +int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena)

Is `ena` short for enable?

> +{
> +	union nac_cgu_dword9 dw9;
> +	int err;
> +
> +	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
> +	if (err)
> +		return err;
> +
> +	dw9.one_pps_out_en = ena;
> +	dw9.one_pps_out_amp = ena * ICE_ONE_PPS_OUT_AMP_MAX;
> +	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
> +}
> +
>   /**
>    * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
>    * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index ff98f76969e3..382e84568256 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -331,6 +331,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
>   
>   /* Device agnostic functions */
>   u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
> +int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena);

If *ena* means “enable”, I do not like this pattern very much, and I’d 
prefer an enable and a disable function.

>   bool ice_ptp_lock(struct ice_hw *hw);
>   void ice_ptp_unlock(struct ice_hw *hw);
>   void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd);


Kind regards,

Paul
