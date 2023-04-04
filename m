Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B19B6D5F47
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 13:40:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FD11813F3;
	Tue,  4 Apr 2023 11:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FD11813F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680608448;
	bh=wxnsRE3+Q8riUrotv5okaZrT6D287AsYIRA8eDIkiL0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j2NfUtQdXjy/HspjeK1xa8yHCLwG4ZkD9bColAPBl00ojP1czu0i/DXzBsVEdIt2p
	 W0d6Iuxpx8Ain6TOxefgDxwd/Pl46r9yVlMHtFGVW+OykaXNFUhV77EqjJ1cOawT6U
	 hB4w9jj2iY6ngJhox9uMrXx7FQXY/0ZneX7MqHSN32BjqDkQYRu/WUQ0O/jmmt5VsA
	 niD/AhlUeM4S2Yg6tkwWZA19gsSHYkfFsAsgfaBnhfD8aHDshS4/HWdNhRLGkaX3lI
	 7KhnOQiXA5IBx1OMJN0jsj5Sc6UJtRI3/PkuSNR36YrOMnOERCM/6wh2C5t99yPC6Q
	 0PyU1eGDfD6dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUwMJsxN2Lke; Tue,  4 Apr 2023 11:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A03AD813E7;
	Tue,  4 Apr 2023 11:40:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A03AD813E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9588A1C2795
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A4AE401B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A4AE401B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUtGG_dJ8yZW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 11:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91BC540022
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91BC540022
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:40:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="340887355"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="340887355"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="932430532"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="932430532"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:40:38 -0700
Date: Tue, 4 Apr 2023 13:40:35 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZCwMs/FqlD3/ygF1@localhost.localdomain>
References: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
 <20230404072833.3676891-3-michal.swiatkowski@linux.intel.com>
 <4559a556-9b35-42ab-ae03-391495c0b9f4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4559a556-9b35-42ab-ae03-391495c0b9f4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680608440; x=1712144440;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4lrJHKOyE6IlwlhfOQOFC6CEvhHfuwvveKExg6nAwtw=;
 b=l57hNSPt5H9973EkxntYU+aGyeDmfUiC5kf+Lnnx9BOFqFtMtkdGlU/5
 pJv8+VdbwC4XejlaUbKp/sf4S2psFol5/ph/acGNUUZVRWXTg9eaZOckP
 KWoCOOR6x+gJffn/2dskN6WJWvGH0BG3ahLGemsz7X9UJNI8616kkllZm
 BRWGdGIeu8lAWVQdzoOI8tSaTiRR7a0bdYicQ/xRI76+zz31h0LwY7h5G
 vfAmBENuI1hYuIaouEBEhhvLmxhuFc1KnkP8KnbjS+pwUimgXCJJh0YxP
 BAInBsXL3d5za4oSUKLvHTZn5KdGsTk//EVwHt21V0G1mqp2z+DwQwIAz
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l57hNSPt
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/4] ice: remove redundant
 Rx field from rule info
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 04, 2023 at 12:07:47PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Tue,  4 Apr 2023 09:28:31 +0200
> 
> > Information about the direction is currently stored in sw_act.flag.
> > There is no need to duplicate it in another field.
> > 
> > Setting direction flag doesn't mean that there is a match criteria for
> > direction in rule. It is only a information for HW from where switch id
> > should be collected (VSI or port). In current implementation of advance
> > rule handling, without matching for direction meta data, we can always
> > set one the same flag and everything will work the same.
> > 
> > Ability to match on direction matadata will be added in follow up
> > patches.
> > 
> > Recipe 0, 3 and 9 loaded from package has direction match
> > criteria, but they are handled in other function.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Reviewed-by: Simon Horman <simon.horman@corigine.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
> >  drivers/net/ethernet/intel/ice/ice_switch.c  | 22 ++++++++++----------
> >  drivers/net/ethernet/intel/ice/ice_switch.h  |  2 --
> >  drivers/net/ethernet/intel/ice/ice_tc_lib.c  |  5 -----
> >  4 files changed, 11 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > index f6dd3f8fd936..2c80d57331d0 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > @@ -39,7 +39,6 @@ ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf, const u8 *mac)
> >  	rule_info.sw_act.flag |= ICE_FLTR_TX;
> >  	rule_info.sw_act.vsi_handle = ctrl_vsi->idx;
> >  	rule_info.sw_act.fltr_act = ICE_FWD_TO_Q;
> > -	rule_info.rx = false;
> >  	rule_info.sw_act.fwd_id.q_id = hw->func_caps.common_cap.rxq_first_id +
> >  				       ctrl_vsi->rxq_map[vf->vf_id];
> >  	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> > index 5c3f266fa80f..4d3a92e0c61f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> > @@ -6121,8 +6121,7 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
> >  	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
> >  		rinfo->sw_act.fwd_id.hw_vsi_id =
> >  			ice_get_hw_vsi_num(hw, vsi_handle);
> > -	if (rinfo->sw_act.flag & ICE_FLTR_TX)
> > -		rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
> > +	rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
> >  
> >  	status = ice_add_adv_recipe(hw, lkups, lkups_cnt, rinfo, &rid);
> >  	if (status)
> > @@ -6190,19 +6189,20 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
> >  		goto err_ice_add_adv_rule;
> >  	}
> >  
> > -	/* set the rule LOOKUP type based on caller specified 'Rx'
> > -	 * instead of hardcoding it to be either LOOKUP_TX/RX
> > +	/* If there is no matching criteria for direction there
> > +	 * is only one difference between Rx and Tx:
> > +	 * - get switch id base on VSI number from source field (Tx)
> > +	 * - get switch id base on port number (Rx)
> >  	 *
> > -	 * for 'Rx' set the source to be the port number
> > -	 * for 'Tx' set the source to be the source HW VSI number (determined
> > -	 * by caller)
> > +	 * If matching on direction metadata is chose rule direction is
> > +	 * extracted from type value set here.
> >  	 */
> > -	if (rinfo->rx) {
> > -		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
> > -		s_rule->src = cpu_to_le16(hw->port_info->lport);
> > -	} else {
> > +	if (rinfo->sw_act.flag & ICE_FLTR_TX) {
> >  		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_TX);
> >  		s_rule->src = cpu_to_le16(rinfo->sw_act.src);
> > +	} else {
> > +		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
> > +		s_rule->src = cpu_to_le16(hw->port_info->lport);
> >  	}
> >  
> >  	s_rule->recipe_id = cpu_to_le16(rid);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
> > index 68d8e8a6a189..44aa37b80111 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_switch.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_switch.h
> > @@ -10,7 +10,6 @@
> >  #define ICE_DFLT_VSI_INVAL 0xff
> >  #define ICE_FLTR_RX BIT(0)
> >  #define ICE_FLTR_TX BIT(1)
> > -#define ICE_FLTR_TX_RX (ICE_FLTR_RX | ICE_FLTR_TX)
> >  #define ICE_VSI_INVAL_ID 0xffff
> >  #define ICE_INVAL_Q_HANDLE 0xFFFF
> >  
> > @@ -190,7 +189,6 @@ struct ice_adv_rule_info {
> >  	enum ice_sw_tunnel_type tun_type;
> >  	struct ice_sw_act_ctrl sw_act;
> >  	u32 priority;
> > -	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
> >  	u16 fltr_rule_id;
> >  	u16 vlan_type;
> >  	struct ice_adv_rule_flags_info flags_info;
> 
> That u8 here was really off, was introducing at least 1 byte hole. Good
> thing you dropped it.
> Have you checked whether there are any holes left, maybe move fields
> around a bit?
> 

As You pointed in patch 3 there are, I will move it to avoid holes.

> > diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > index 76f29a5bf8d7..b5af6cd5592b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > @@ -697,11 +697,9 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
> >  	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
> >  		rule_info.sw_act.flag |= ICE_FLTR_RX;
> >  		rule_info.sw_act.src = hw->pf_id;
> > -		rule_info.rx = true;
> >  	} else {
> >  		rule_info.sw_act.flag |= ICE_FLTR_TX;
> >  		rule_info.sw_act.src = vsi->idx;
> > -		rule_info.rx = false;
> >  		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
> >  		rule_info.flags_info.act_valid = true;
> >  	}
> > @@ -909,7 +907,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
> >  		rule_info.sw_act.vsi_handle = dest_vsi->idx;
> >  		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
> >  		rule_info.sw_act.src = hw->pf_id;
> > -		rule_info.rx = true;
> >  		dev_dbg(dev, "add switch rule for TC:%u vsi_idx:%u, lkups_cnt:%u\n",
> >  			tc_fltr->action.fwd.tc.tc_class,
> >  			rule_info.sw_act.vsi_handle, lkups_cnt);
> > @@ -920,7 +917,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
> >  		rule_info.sw_act.vsi_handle = dest_vsi->idx;
> >  		rule_info.priority = ICE_SWITCH_FLTR_PRIO_QUEUE;
> >  		rule_info.sw_act.src = hw->pf_id;
> > -		rule_info.rx = true;
> >  		dev_dbg(dev, "add switch rule action to forward to queue:%u (HW queue %u), lkups_cnt:%u\n",
> >  			tc_fltr->action.fwd.q.queue,
> >  			tc_fltr->action.fwd.q.hw_queue, lkups_cnt);
> > @@ -928,7 +924,6 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
> >  	case ICE_DROP_PACKET:
> >  		rule_info.sw_act.flag |= ICE_FLTR_RX;
> >  		rule_info.sw_act.src = hw->pf_id;
> > -		rule_info.rx = true;
> >  		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
> >  		break;
> >  	default:
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
