Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A639A6E45
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 17:34:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB5AE80E86;
	Mon, 21 Oct 2024 15:34:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9My1UBan-7r7; Mon, 21 Oct 2024 15:34:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C917380E8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729524892;
	bh=VZ5qfqc+THvDlFUs83O/qeMmydBd5Ikb53Xdc7lcNEM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RuP0wMajAvcRyOfyAOg6uX326q+gXjXdrYXkx7wDbg3TTs4uULrMeldfD/NpedpIX
	 E+0w3+onouN8ES+ZI1M34Qvroei14RwmxjJ0uRWdfGSU12n4gN20yWgIKPdhUFIrY3
	 /NaCtce91ndCq5uHW+wfNoNcHFyur2XAcyG7UlWUPMvtAJBIlUHLcrwyqUdUAd3scH
	 oFg73UF8nLbcESNpdtbsTYSOc05yEMWl6WceGtjK3qRoIXOlmEE7YtB8Q/12SUt8vt
	 WItOFEEhR1RTP+MiMuq8pasn+eiBc2OQE8ddMnm2fIvbs6w1IRT2UW7mi5meSv4Lw9
	 v0rzWWaRJLlbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C917380E8C;
	Mon, 21 Oct 2024 15:34:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A8C6771F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80A5E4052F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:34:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qvwgGSN3_kJh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 15:34:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C904B402F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C904B402F2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C904B402F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:34:47 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 68A4161E5FE05;
 Mon, 21 Oct 2024 17:34:21 +0200 (CEST)
Message-ID: <421389ef-f5f4-4e92-b963-c6de1cc12506@molgen.mpg.de>
Date: Mon, 21 Oct 2024 17:34:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: ptp: add control
 over HW timestamp latch point
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

Dear Arkadiusz,


Thank you for the patch.

Am 21.10.24 um 16:19 schrieb Arkadiusz Kubalewski:
> Allow user to control the latch point of ptp HW timestamps in E825
> devices.

Please give an example how to configure it.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 46 +++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 57 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
>   3 files changed, 105 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index a999fface272..47444412ed9a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2509,6 +2509,50 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
>   	return 0;
>   }
>   
> +/**
> + * ice_get_ts_point - get the tx timestamp latch point
> + * @info: the driver's PTP info structure
> + * @point: return the configured tx timestamp latch point
> + *
> + * Return: 0 on success, negative on failure.
> + */
> +static int
> +ice_get_ts_point(struct ptp_clock_info *info, enum ptp_ts_point *point)
> +{
> +	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_hw *hw = &pf->hw;
> +	bool sfd_ena;
> +	int ret;
> +
> +	ice_ptp_lock(hw);
> +	ret = ice_ptp_hw_ts_point_get(hw, &sfd_ena);
> +	ice_ptp_unlock(hw);
> +	if (!ret)
> +		*point = sfd_ena ? PTP_TS_POINT_SFD : PTP_TS_POINT_POST_SFD;
> +
> +	return ret;
> +}
> +
> +/**
> + * ice_set_ts_point - set the tx timestamp latch point
> + * @info: the driver's PTP info structure
> + * @point: requested tx timestamp latch point
> + */
> +static int
> +ice_set_ts_point(struct ptp_clock_info *info, enum ptp_ts_point point)
> +{
> +	bool sfd_ena = point == PTP_TS_POINT_SFD ? true : false;
> +	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_hw *hw = &pf->hw;
> +	int ret;
> +
> +	ice_ptp_lock(hw);
> +	ret = ice_ptp_hw_ts_point_set(hw, sfd_ena);
> +	ice_ptp_unlock(hw);
> +
> +	return ret;
> +}
> +
>   /**
>    * ice_ptp_set_funcs_e82x - Set specialized functions for E82X support
>    * @pf: Board private structure
> @@ -2529,6 +2573,8 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
>   	if (ice_is_e825c(&pf->hw)) {
>   		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
>   		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
> +		pf->ptp.info.set_ts_point = ice_set_ts_point;
> +		pf->ptp.info.get_ts_point = ice_get_ts_point;
>   	} else {
>   		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
>   		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index da88c6ccfaeb..d81525bc8a16 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -6303,3 +6303,60 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
>   
>   	return 0;
>   }
> +
> +/**
> + * ice_ptp_hw_ts_point_get - check if tx timestamping is latched on/post SFD
> + * @hw: pointer to the HW struct
> + * @sfd_ena: on success true if tx timestamping latched at beginning of SFD,
> + *	false if post sfd
> + *
> + * Verify if HW timestamping point is configured to measure at the beginning or
> + * post of SFD (Start of Frame Delimiter)
> + *
> + * Return: 0 on success, negative on error
> + */
> +int ice_ptp_hw_ts_point_get(struct ice_hw *hw, bool *sfd_ena)
> +{
> +	u8 port = hw->port_info->lport;
> +	u32 val;
> +	int err;
> +
> +	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
> +	if (err)
> +		return err;
> +	if (val | PHY_MAC_XIF_TS_SFD_ENA_M)
> +		*sfd_ena = true;
> +	else
> +		*sfd_ena = false;

Use ternary operator?

> +
> +	return err;

As the function returns `int`, use integers (macros) instead of boolean?

> +}
> +
> +/**
> + * ice_ptp_hw_ts_point_set - configure timestamping on/post SFD
> + * @hw: pointer to the HW struct
> + * @sfd_ena: true to enable timestamping at beginning of SFD, false post sfd
> + *
> + * Configure timestamping to measure at the beginning/post SFD (Start of Frame
> + * Delimiter)
> + *
> + * Return: 0 on success, negative on error
> + */
> +int ice_ptp_hw_ts_point_set(struct ice_hw *hw, bool sfd_ena)
> +{
> +	u8 port = hw->port_info->lport;
> +	int err, val;
> +
> +	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
> +	if (err)
> +		return err;
> +	if ((val | PHY_MAC_XIF_TS_SFD_ENA_M && sfd_ena) ||
> +	    (!(val | PHY_MAC_XIF_TS_SFD_ENA_M) && !sfd_ena))
> +		return -EINVAL;
> +	if (sfd_ena)
> +		val |= PHY_MAC_XIF_TS_SFD_ENA_M;
> +	else
> +		val &= ~PHY_MAC_XIF_TS_SFD_ENA_M;
> +
> +	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, val);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 656daff3447e..cefedd01479a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -348,6 +348,8 @@ void ice_ptp_init_hw(struct ice_hw *hw);
>   int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
>   int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
>   			 enum ice_ptp_tmr_cmd configured_cmd);
> +int ice_ptp_hw_ts_point_get(struct ice_hw *hw, bool *sfd_ena);
> +int ice_ptp_hw_ts_point_set(struct ice_hw *hw, bool sfd_ena);
>   
>   /* E822 family functions */
>   int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);


Kind regards,

Paul
