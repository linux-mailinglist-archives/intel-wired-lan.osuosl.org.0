Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE4DBB8D0E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Oct 2025 14:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B5C960AB2;
	Sat,  4 Oct 2025 12:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZcYEywU4WXZ; Sat,  4 Oct 2025 12:01:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D4F560AC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759579272;
	bh=r+WMprCiXXf+zTKPXQIxJ/YYA/EhWaetuDJxix6rLiA=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DEB7AD9uIzTAhb5ZdDGjhPDf9OQnZPiI6C3LwPksT/17/QpMfuZazoGDIsKgvZ0gq
	 wCCpU71xhixUAZdXXJT3+orKgfq0nw9nM/l5HBSs3Xo2ln/HQV5fu9LkQNOwoF2aWE
	 5ENrK3i5ejRwEvxlN4lqWfoFBoLCpb6u1plrkRdS2/74kMeIoDwHQMlgEc3+qZuFzZ
	 LDH4dwzC0C9lMzWhd7nSlW5CuGAC8l3OUQLOzo8GiYW9f2KdwQADl+jGwoblAakSqF
	 xQD8EYKbbSY6kGTmCq67cRfkHJyVB3byCZxbjVgJ4lJ/Mn6ZSFQI9u843ny3Cn2H3g
	 3zeAWfumAmlXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D4F560AC7;
	Sat,  4 Oct 2025 12:01:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41A97909
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 12:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F08B81025
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 12:01:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IjF-itUPuP2k for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Oct 2025 12:01:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9393082A4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9393082A4F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9393082A4F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 12:01:03 +0000 (UTC)
Received: from [192.168.2.212] (p57bd9ba3.dip0.t-ipconnect.de [87.189.155.163])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9DFC66028F34A;
 Sat, 04 Oct 2025 14:00:48 +0200 (CEST)
Message-ID: <89a6539c-46f3-4098-84fc-b94def437279@molgen.mpg.de>
Date: Sat, 4 Oct 2025 14:00:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dave Ertman <david.m.ertman@intel.com>
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
Content-Language: en-US
Cc: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251003162721.2831033-1-david.m.ertman@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
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

Dear Dave,


Thank you for the patch.

Am 03.10.25 um 18:27 schrieb Dave Ertman:
> When two E8XX interfaces are placed into a bond, and are correctly
> configured for supporting SRIOV traffic over the bonded interfaces,
> there is a problem with traffic aimed directly at the bond netdev.  By
> conjoining both interfaces onto a single switch black in the NIC, all

Sorry, what is a “single switch black“? bl*o*ck?

> unicast and broadcast traffic is being directed to the primary interface's
> set of resources no matter which interface is the active/targeting one.
> 
> To fix this, add a set of rules into the switch block that combines both
> target MAC address and source logical port to direct packets to the
> active/targeted VSI.  This change will not touch traffic directed to SRIOV
> VF targets.

Please document a reproducer, if you have one.

> Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event handler")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c | 101 +++++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_lag.h |   5 ++
>   2 files changed, 106 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index d2576d606e10..7773d5b9bae9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -17,6 +17,7 @@ static const u8 lacp_train_pkt[ICE_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
>   static const u8 act_act_train_pkt[ICE_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
>   							 0, 0, 0, 0, 0, 0,
>   							 0, 0, 0, 0 };
> +static u8 mac_train_pkt[ICE_TRAIN_PKT_LEN] = { 0 };
>   
>   #define ICE_RECIPE_LEN			64
>   #define ICE_LAG_SRIOV_CP_RECIPE		10
> @@ -29,6 +30,10 @@ static const u8 ice_lport_rcp[ICE_RECIPE_LEN] = {
>   	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>   	0x85, 0, 0x16, 0, 0, 0, 0xff, 0xff, 0x07, 0, 0, 0, 0, 0, 0, 0,
>   	0, 0, 0, 0, 0, 0, 0x30 };
> +static const u8 ice_pfmac_rcp[ICE_RECIPE_LEN] = {
> +	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x85, 0, 0x16,
> +	0x05, 0x06, 0x07, 0xff, 0xff, 0x07, 0x00, 0xff, 0xff, 0xff, 0xff,
> +	0xff, 0xff, 0, 0, 0, 0, 0, 0, 0x30 };

Excuse my ignorance, how can these numbers be reviewed?

>   
>   /**
>    * ice_lag_set_primary - set PF LAG state as Primary
> @@ -1336,6 +1341,89 @@ ice_lag_reclaim_vf_nodes(struct ice_lag *lag, struct ice_hw *src_hw)
>   				ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);
>   }
>   
> +/**
> + * ice_lag_cfg_pfmac_fltrs
> + * @lag: local lag info struct
> + * @link: is this a linking action
> + *
> + * Configure lport/MAC filters for this interfaces PF traffic in the

interface’s

> + * current interfaces SWID
> + */
> +static void ice_lag_cfg_pfmac_fltrs(struct ice_lag *lag, bool link)
> +{
> +	u8 lport = lag->pf->hw.port_info->lport;
> +	struct ice_sw_rule_lkup_rx_tx *s_rule;
> +	struct ice_vsi *vsi = lag->pf->vsi[0];
> +	struct ice_hw *hw = &lag->pf->hw;
> +	u16 s_rule_sz;

size_t?

> +	u32 act;
> +
> +	act = ICE_FWD_TO_VSI | ICE_SINGLE_ACT_LAN_ENABLE | ICE_SINGLE_ACT_VALID_BIT |
> +		FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M, vsi->vsi_num);
> +
> +	s_rule_sz = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule, ICE_TRAIN_PKT_LEN);
> +	s_rule = kzalloc(s_rule_sz, GFP_KERNEL);
> +	if (!s_rule) {
> +		netdev_warn(lag->netdev, "-ENOMEM error configuring PFMAC filters\n");
> +		return;
> +	}
> +
> +	if (link) {
> +		u8 broadcast[ETH_ALEN] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
> +
> +		/* unicast */
> +		ether_addr_copy(mac_train_pkt, lag->upper_netdev->dev_addr);
> +		memcpy(s_rule->hdr_data, mac_train_pkt, ICE_TRAIN_PKT_LEN);
> +		s_rule->recipe_id = cpu_to_le16(lag->pfmac_recipe);
> +		s_rule->src = cpu_to_le16(lport);
> +		s_rule->act = cpu_to_le32(act);
> +		s_rule->hdr_len = cpu_to_le16(ICE_TRAIN_PKT_LEN);
> +		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
> +
> +		if (ice_aq_sw_rules(hw, s_rule, s_rule_sz, 1,
> +				    ice_aqc_opc_add_sw_rules, NULL)) {
> +			netdev_warn(lag->netdev, "Error ADDING Unicast PFMAC rule for aggregate\n");

Log the return value?

> +			goto err_pfmac_free;
> +		}
> +
> +		lag->pfmac_unicst_idx = le16_to_cpu(s_rule->index);
> +
> +		/* broadast */
> +		ether_addr_copy(mac_train_pkt, broadcast);
> +		memcpy(s_rule->hdr_data, mac_train_pkt, ICE_TRAIN_PKT_LEN);
> +		if (ice_aq_sw_rules(hw, s_rule, s_rule_sz, 1,
> +				    ice_aqc_opc_add_sw_rules, NULL)) {
> +			netdev_warn(lag->netdev, "Error ADDING Broadcast PFMAC rule for aggregate\n");

Log the return value?

> +			goto err_pfmac_free;
> +		}
> +
> +		lag->pfmac_bdcst_idx = le16_to_cpu(s_rule->index);
> +	} else {
> +		/* unicast */
> +		s_rule->index = cpu_to_le16(lag->pfmac_unicst_idx);
> +		if (s_rule->index && ice_aq_sw_rules(&lag->pf->hw, s_rule,
> +						     s_rule_sz, 1,
> +						     ice_aqc_opc_remove_sw_rules,
> +						     NULL))
> +			netdev_warn(lag->netdev, "Error REMOVING Unicast PFMAC rule for aggregate\n");

Log the return value?

> +
> +		lag->pfmac_unicst_idx = 0;
> +
> +		/* broadcast */
> +		s_rule->index = cpu_to_le16(lag->pfmac_bdcst_idx);
> +		if (s_rule->index && ice_aq_sw_rules(&lag->pf->hw, s_rule,
> +						     s_rule_sz, 1,
> +						     ice_aqc_opc_remove_sw_rules,
> +						     NULL))
> +			netdev_warn(lag->netdev, "Error REMOVING Broadcast PFMAC rule for aggregate\n");

Log the return value?

> +
> +		lag->pfmac_bdcst_idx = 0;
> +	}
> +
> +err_pfmac_free:
> +	kfree(s_rule);
> +}
> +
>   /**
>    * ice_lag_link - handle LAG link event
>    * @lag: LAG info struct
> @@ -1437,7 +1525,9 @@ static void ice_lag_link_unlink(struct ice_lag *lag, void *ptr)
>   
>   	if (info->linking) {
>   		ice_lag_link(lag);
> +		ice_lag_cfg_pfmac_fltrs(lag, true);
>   	} else {
> +		ice_lag_cfg_pfmac_fltrs(lag, false);
>   		if (lag->bond_aa)
>   			ice_lag_aa_unlink(lag);
>   		else
> @@ -2622,6 +2712,11 @@ int ice_init_lag(struct ice_pf *pf)
>   	if (err)
>   		goto  free_lport_res;
>   
> +	err = ice_create_lag_recipe(&pf->hw, &lag->pfmac_recipe,
> +				    ice_pfmac_rcp, 3);
> +	if (err)
> +		goto free_act_act_res;
> +
>   	/* associate recipes to profiles */
>   	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
>   		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
> @@ -2643,6 +2738,10 @@ int ice_init_lag(struct ice_pf *pf)
>   	dev_dbg(dev, "INIT LAG complete\n");
>   	return 0;
>   
> +free_act_act_res:
> +	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
> +			&pf->lag->act_act_recipe);
> +
>   free_lport_res:
>   	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
>   			&lag->lport_recipe);
> @@ -2679,6 +2778,8 @@ void ice_deinit_lag(struct ice_pf *pf)
>   			&pf->lag->pf_recipe);
>   	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
>   			&pf->lag->lport_recipe);
> +	ice_free_hw_res(&pf->hw, ICE_AQC_RES_TYPE_RECIPE, 1,
> +			&pf->lag->pfmac_recipe);
>   
>   	kfree(lag);
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
> index f77ebcd61042..f1bff43228ee 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.h
> @@ -60,11 +60,16 @@ struct ice_lag {
>   	u16 pf_recipe;
>   	u16 lport_recipe;
>   	u16 act_act_recipe;
> +	u16 pfmac_recipe;
> +
>   	u16 pf_rx_rule_id;
>   	u16 pf_tx_rule_id;
>   	u16 cp_rule_idx;
>   	u16 lport_rule_idx;
>   	u16 act_act_rule_idx;
> +	u16 pfmac_unicst_idx;
> +	u16 pfmac_bdcst_idx;
> +
>   	u8 role;
>   };

With the above addressed:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
