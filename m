Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 940316D5F55
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 13:43:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 776DC813E7;
	Tue,  4 Apr 2023 11:43:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 776DC813E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680608603;
	bh=mwPLWqR10BMHFc9H17MZ1X1GCyTJiT1pEKxvUoRyXE4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XXnT0j+qdURKmaF3EQyyaDu3Q9bfjetpcbd+w75xz3LeugB7+Z3VO4GN7zTlof917
	 +MEAFUsX85R+yzzwEm4hiw5xa0BoQRnqVG4RxCVik9UkpgsaoRcmfD0w2oaLKMuJRv
	 JNUcveJQJ8H7DYUGCGTQl1rVH5q9LFWol7tj4jW1BCMW+9DEFYJ4icfJqbHCILwr8K
	 qmoALfJ4TBxa5YnV1/vHzNjtlGjUo20Bx6oZELUrJ6R96/AK7lXRHfQ9EtactbdYwp
	 QNmqi2ht3KsVrPWkxx8R0kUSz+DkwEwMOcMzNXbYzj++jbMz21y2eCXjipUQPxx9Pt
	 Z4pJ2ry9jLvkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlJrMW9gNkoy; Tue,  4 Apr 2023 11:43:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26247813E6;
	Tue,  4 Apr 2023 11:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26247813E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADED01C2795
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BFE5401B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BFE5401B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsSQlAYGacir for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 11:43:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8392940022
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8392940022
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:43:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="330743770"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="330743770"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="810205662"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="810205662"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:43:13 -0700
Date: Tue, 4 Apr 2023 13:43:10 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZCwNThCzNMpqtNpN@localhost.localdomain>
References: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
 <20230404072833.3676891-4-michal.swiatkowski@linux.intel.com>
 <2360ed18-d896-4720-89fc-e12e9b155943@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2360ed18-d896-4720-89fc-e12e9b155943@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680608595; x=1712144595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=moI6W0ZOpYtmuohjfDBsAypjArJVlOPzxStxyfVHOW8=;
 b=hyo9YLpmgPNtjhxt+IOZB8kAVvHyR9Bci6pAy1KpyU/Pzsn9PTmq/eZ7
 yKYm1Fd30+meBdPy1+YScj2lgIcG1ypt42HTJ3mT3u3bm2yXFt735rEef
 u3VKsRiFCa9gnrpg5Q81j0U5SCNAI2QJafgpPvmtuPuTEZMvZIrwf6Yep
 dmUFXKJo78UCPVxASCcbmswcbl+G7co2c7ihqidZiLTwExKR2sNpUXlJ0
 aibwY05E7kP4FpLanBfpl9GMUfP1NvwWEK/+Akzm5Sd2l5Uqxxc3dYJPL
 qGxbfw7GRif6XM/hQN9qWsEMN0YI/gwmKUcJw/JwoYy6KqWHromVhJS80
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hyo9YLpm
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/4] ice: allow matching
 on meta data
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

On Tue, Apr 04, 2023 at 12:22:38PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Tue,  4 Apr 2023 09:28:32 +0200
> 
> > Add meta data matching criteria in the same place as protocol matching
> > criteria. There is no need to add meta data as special words after
> > parsing all lookups. Trade meta data in the same why as other lookups.
> 
> [...]
> 
> > --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> > @@ -4573,6 +4573,15 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
> >  	{ ICE_L2TPV3,		{ 0, 2, 4, 6, 8, 10 } },
> >  	{ ICE_VLAN_EX,          { 2, 0 } },
> >  	{ ICE_VLAN_IN,          { 2, 0 } },
> > +	{ ICE_HW_METADATA,	{ ICE_SOURCE_PORT_MDID_OFFSET,
> > +				  ICE_PTYPE_MDID_OFFSET,
> > +				  ICE_PACKET_LENGTH_MDID_OFFSET,
> > +				  ICE_SOURCE_VSI_MDID_OFFSET,
> > +				  ICE_PKT_VLAN_MDID_OFFSET,
> > +				  ICE_PKT_TUNNEL_MDID_OFFSET,
> > +				  ICE_PKT_TCP_MDID_OFFSET,
> > +				  ICE_PKT_ERROR_MDID_OFFSET,
> > +				}},
> 
> I don't think this is proper indenting. I believe it should like this:
> 
> 	/* This line is unchanged except the opening brace at the end */
> 	{ ICE_VLAN_IN,          { 2, 0 } }, {
> 		ICE_HW_METADATA, {
> 			ICE_SOURCE_PORT_MDID_OFFSET,
> 			ICE_PTYPE_MDID_OFFSET,
> 			[...]
> 		/* Don't forget commas after last elements */
> 		},
> 	},
> 
> or
> 
> 	{
> 		ICE_HW_METADATA,
> 		{
> 			ICE_SOURCE_PORT_MDID_OFFSET,
> 			ICE_PTYPE_MDID_OFFSET,
> 			[...]
> 		},
> 	},
> 
> (but I'd prefer the first one)
> 
> Also, I think anonymous initializers are now discouraged in favour of
> designated, at least randstruct sometimes complains about that. Could
> we start always specifying field names? You could define a macro for
> this particular struct to not bloat the code.
> 
> >  };

Thanks, will fix it in new version.

> >  
> >  static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
> > @@ -4597,6 +4606,7 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
> >  	{ ICE_L2TPV3,		ICE_L2TPV3_HW },
> >  	{ ICE_VLAN_EX,          ICE_VLAN_OF_HW },
> >  	{ ICE_VLAN_IN,          ICE_VLAN_OL_HW },
> > +	{ ICE_HW_METADATA,      ICE_META_DATA_ID_HW},
> 
> Please replace spaces with tabs (as it's done for ICE_L2TPV3_HW).
> Also missing space before the last brace.
> 
> >  };

Sure

> >  
> >  /**
> 
> [...]
> 
> > @@ -5726,6 +5663,10 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
> >  		 * was already checked when search for the dummy packet
> >  		 */
> >  		type = lkups[i].type;
> > +		/* metadata isn't lockated in packet */
> 
> ("located", but I'd say "metadata isn't present in the packet")
>

Right :)

> > +		if (type == ICE_HW_METADATA)
> > +			continue;
> > +
> >  		for (j = 0; offsets[j].type != ICE_PROTOCOL_LAST; j++) {
> >  			if (type == offsets[j].type) {
> >  				offset = offsets[j].offset;
> > @@ -5861,16 +5802,21 @@ ice_fill_adv_packet_tun(struct ice_hw *hw, enum ice_sw_tunnel_type tun_type,
> >  
> >  /**
> >   * ice_fill_adv_packet_vlan - fill dummy packet with VLAN tag type
> > + * @hw: pointer to hw structure
> >   * @vlan_type: VLAN tag type
> >   * @pkt: dummy packet to fill in
> >   * @offsets: offset info for the dummy packet
> >   */
> >  static int
> > -ice_fill_adv_packet_vlan(u16 vlan_type, u8 *pkt,
> > +ice_fill_adv_packet_vlan(struct ice_hw *hw, u16 vlan_type, u8 *pkt,
> >  			 const struct ice_dummy_pkt_offsets *offsets)
> >  {
> >  	u16 i;
> >  
> > +	/* Check if there is something to do */
> > +	if (vlan_type == 0 || !ice_is_dvm_ena(hw))
> 
> `!vlan_type` is preferred over `== 0`.
>

Will do

> > +		return 0;
> > +
> >  	/* Find VLAN header and insert VLAN TPID */
> >  	for (i = 0; offsets[i].type != ICE_PROTOCOL_LAST; i++) {
> >  		if (offsets[i].type == ICE_VLAN_OFOS ||
> > @@ -5889,6 +5835,15 @@ ice_fill_adv_packet_vlan(u16 vlan_type, u8 *pkt,
> >  	return -EIO;
> >  }
> >  
> > +static bool ice_is_rule_info_the_same(struct ice_adv_rule_info *first,
> 
> Doesn't sound natural. "ice_rules_equal"?
>

Sound better, thanks

> > +				      struct ice_adv_rule_info *second)
> 
> The function is read-only, `const` for both arguments.
>

Good point, will do

> > +{
> > +	return first->sw_act.flag == second->sw_act.flag &&
> > +	       first->tun_type == second->tun_type &&
> > +	       first->vlan_type == second->vlan_type &&
> > +	       first->src_vsi == second->src_vsi;
> > +}
> 
> [...]
> 
> > @@ -6121,7 +6088,12 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
> >  	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
> >  		rinfo->sw_act.fwd_id.hw_vsi_id =
> >  			ice_get_hw_vsi_num(hw, vsi_handle);
> > -	rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
> > +
> > +	if (rinfo->src_vsi)
> > +		rinfo->sw_act.src =
> > +			ice_get_hw_vsi_num(hw, rinfo->src_vsi);
> 
> This fits into one line in my editor :D
>

In my too :D

> > +	else
> > +		rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
> >  
> >  	status = ice_add_adv_recipe(hw, lkups, lkups_cnt, rinfo, &rid);
> >  	if (status)
> 
> [...]
> 
> > --- a/drivers/net/ethernet/intel/ice/ice_switch.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_switch.h
> > @@ -186,11 +186,13 @@ struct ice_adv_rule_flags_info {
> >  };
> >  
> >  struct ice_adv_rule_info {
> > +	/* Store metadata values in rule info */
> >  	enum ice_sw_tunnel_type tun_type;
> > +	u16 vlan_type;
> > +	u16 src_vsi;
> >  	struct ice_sw_act_ctrl sw_act;
> >  	u32 priority;
> >  	u16 fltr_rule_id;
> > -	u16 vlan_type;
> >  	struct ice_adv_rule_flags_info flags_info;
> 
> Please check holes within the structure. I see at least one in between
> `fltr_rule_id` and `flags_info`. Some fields can definitely be moved around.
> 
> >  };

You are right, will fix in new version.

> >  
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
