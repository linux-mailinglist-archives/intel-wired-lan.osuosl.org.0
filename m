Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC499BE45D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 17:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0474840394;
	Thu, 16 Oct 2025 15:54:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qtmX4-D9Mi9L; Thu, 16 Oct 2025 15:54:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6011A40395
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760630045;
	bh=xFMWZuyiYbb6x+oCI6Pd1PSAYhCdX2zc9gPDDGufyTI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qzSIkUSFmxUdTA7TBQnQPpWWy3G5doy+fh9wLwTHQrj65ZEl6wPpRlGs1Jo4665bh
	 /SJtpWpC3r3LxGqKb/dEqrQJdw4SUYpFHsu0x3lSvtcOOBLoSemTuUaeHzH/yiZRzC
	 7vitOklSUOcko/PjCUCBEUXAf09q1Bd2wLxy0rM/aERLbw5gXtBs+tU3lvLVpnNdob
	 FKepS3u0To9VQJTWEQpGnWvGtMfMewr1+cHxKZMKxDDVGzqw2D8dwoyDiN23BMx4SD
	 rNRjfttrPlcZnwKiBkndxzH6nZ/dCU1C9zBFaQMbtMyE50n+e1NH/WCp91lPnNQxbl
	 EXr5JlnniHr5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6011A40395;
	Thu, 16 Oct 2025 15:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 263A3961
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 15:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17481605EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 15:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MOdkAuFEzLWU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 15:54:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E32F605EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E32F605EA
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E32F605EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 15:54:00 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 94D706020FEFF;
 Thu, 16 Oct 2025 17:53:45 +0200 (CEST)
Message-ID: <834ff332-b41e-4418-a496-7ea51a2bcecf@molgen.mpg.de>
Date: Thu, 16 Oct 2025 17:53:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251014084618.2746755-1-grzegorz.nitka@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251014084618.2746755-1-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Grzegorz,


Thank you for your patch.

Am 14.10.25 um 10:46 schrieb Grzegorz Nitka:
> Unify handling of PHY firmware load delays across all E800 family
> devices. There is an existing mechanism to poll GL_MNG_FWSM_FW_LOADING_M
> bit of GL_MNG_FWSM register in order to verify whether PHY FW loading
> completed or not. Previously, this logic was limited to E827 variants
> only.
> 
> Also, inform a user of possible delay in initialization process, by
> dumping informational message in dmesg log.

Paste the message here?

> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 81 ++++++---------------
>   1 file changed, 24 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 8e56354332ad..d05d371a9944 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -203,42 +203,6 @@ bool ice_is_generic_mac(struct ice_hw *hw)
>   		hw->mac_type == ICE_MAC_GENERIC_3K_E825);
>   }
>   
> -/**
> - * ice_is_pf_c827 - check if pf contains c827 phy
> - * @hw: pointer to the hw struct
> - *
> - * Return: true if the device has c827 phy.
> - */
> -static bool ice_is_pf_c827(struct ice_hw *hw)
> -{
> -	struct ice_aqc_get_link_topo cmd = {};
> -	u8 node_part_number;
> -	u16 node_handle;
> -	int status;
> -
> -	if (hw->mac_type != ICE_MAC_E810)
> -		return false;
> -
> -	if (hw->device_id != ICE_DEV_ID_E810C_QSFP)
> -		return true;
> -
> -	cmd.addr.topo_params.node_type_ctx =
> -		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY) |
> -		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ICE_AQC_LINK_TOPO_NODE_CTX_PORT);
> -	cmd.addr.topo_params.index = 0;
> -
> -	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
> -					 &node_handle);
> -
> -	if (status || node_part_number != ICE_AQC_GET_LINK_TOPO_NODE_NR_C827)
> -		return false;
> -
> -	if (node_handle == E810C_QSFP_C827_0_HANDLE || node_handle == E810C_QSFP_C827_1_HANDLE)
> -		return true;
> -
> -	return false;
> -}
> -
>   /**
>    * ice_clear_pf_cfg - Clear PF configuration
>    * @hw: pointer to the hardware structure
> @@ -958,30 +922,35 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
>   }
>   
>   /**
> - * ice_wait_for_fw - wait for full FW readiness
> + * ice_wait_fw_load - wait for PHY firmware loading to complete
>    * @hw: pointer to the hardware structure
>    * @timeout: milliseconds that can elapse before timing out
>    *
> - * Return: 0 on success, -ETIMEDOUT on timeout.
> + * On some cards, FW can load longer than usual,
> + * and could still not be ready before link is turned on.
> + * In these cases, we should wait until all's loaded.
> + *
> + * Return:
> + * * 0 on success (FW load is completed)
> + * * negative - on timeout
>    */
> -static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
> +static int ice_wait_fw_load(struct ice_hw *hw, u32 timeout)
>   {
> -	int fw_loading;
> -	u32 elapsed = 0;
> +	int fw_loading_reg;
>   
> -	while (elapsed <= timeout) {
> -		fw_loading = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
> +	if (!timeout)
> +		return 0;
>   
> -		/* firmware was not yet loaded, we have to wait more */
> -		if (fw_loading) {
> -			elapsed += 100;
> -			msleep(100);
> -			continue;
> -		}
> +	fw_loading_reg = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
> +	/* notify the user only once if PHY FW is still loading */
> +	if (fw_loading_reg)
> +		dev_info(ice_hw_to_dev(hw), "Link initialization is blocked by PHY FW initialization. Link initialization will continue after PHY FW initialization completes.\n");
> +	else
>   		return 0;
> -	}
>   
> -	return -ETIMEDOUT;
> +	return rd32_poll_timeout(hw, GL_MNG_FWSM, fw_loading_reg,
> +				 !(fw_loading_reg & GL_MNG_FWSM_FW_LOADING_M),
> +				 10000, timeout * 1000);
>   }
>   
>   static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
> @@ -1171,12 +1140,10 @@ int ice_init_hw(struct ice_hw *hw)
>   	 * due to necessity of loading FW from an external source.
>   	 * This can take even half a minute.
>   	 */
> -	if (ice_is_pf_c827(hw)) {
> -		status = ice_wait_for_fw(hw, 30000);
> -		if (status) {
> -			dev_err(ice_hw_to_dev(hw), "ice_wait_for_fw timed out");
> -			goto err_unroll_fltr_mgmt_struct;
> -		}
> +	status = ice_wait_fw_load(hw, 30000);
> +	if (status) {
> +		dev_err(ice_hw_to_dev(hw), "ice_wait_fw_load timed out");
> +		goto err_unroll_fltr_mgmt_struct;
>   	}
>   
>   	hw->lane_num = ice_get_phy_lane_number(hw);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
