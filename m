Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BD146B7D6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 10:45:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B99860781;
	Tue,  7 Dec 2021 09:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ri7ZdiWjuifl; Tue,  7 Dec 2021 09:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59BB060602;
	Tue,  7 Dec 2021 09:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 587F11BF326
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5463640214
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45CT2MbWIl4J for <intel-wired-lan@osuosl.org>;
 Tue,  7 Dec 2021 09:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DEAF4021B
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:45:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="218227243"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="218227243"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 01:45:35 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515207586"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 01:45:33 -0800
Date: Tue, 7 Dec 2021 01:46:04 -0500
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Message-ID: <Ya8DLPnVfqZKsE+5@localhost.localdomain>
References: <20211122153925.418606-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122153925.418606-1-michal.swiatkowski@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix adding different
 tunnels
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 22, 2021 at 04:39:25PM +0100, Michal Swiatkowski wrote:
> Adding filters with the same values inside for VXLAN and geneve causes hw
> error, because it looks exactly the same. To choose between different
> type of tunnels new recipe is needed. Add storing tunnel types in
> creatig recipes function and start checking it in finding function.
> 
> Change getting open tunnels function to return port on correct tunnel
> type. This is needed to copy correct port to dummy packet.
> 
> Block user from adding enc_dst_port via tc flower, because  VXLAN and
> geneve filters can be created only with destination port which was
> previously opened.
> 
> v1 --> v2:
>  * fixed functions description (Tony)
> 
> Fixes: 8b032a55c1bd5 ("ice: low level support for tunnels")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c  |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_fdir.c      |  2 +-
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c |  7 +++++--
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.h |  3 ++-
>  drivers/net/ethernet/intel/ice/ice_switch.c    | 18 +++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c    |  3 ++-
>  6 files changed, 25 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> index 68ac0be68107..bbc64d6ce4cd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> @@ -1258,7 +1258,7 @@ ice_fdir_write_all_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input,
>  		bool is_tun = tun == ICE_FD_HW_SEG_TUN;
>  		int err;
>  
> -		if (is_tun && !ice_get_open_tunnel_port(&pf->hw, &port_num))
> +		if (is_tun && !ice_get_open_tunnel_port(&pf->hw, &port_num, TNL_ALL))
>  			continue;
>  		err = ice_fdir_write_fltr(pf, input, add, is_tun);
>  		if (err)
> @@ -1642,7 +1642,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
>  	}
>  
>  	/* return error if not an update and no available filters */
> -	fltrs_needed = ice_get_open_tunnel_port(hw, &tunnel_port) ? 2 : 1;
> +	fltrs_needed = ice_get_open_tunnel_port(hw, &tunnel_port, TNL_ALL) ? 2 : 1;
>  	if (!ice_fdir_find_fltr_by_idx(hw, fsp->location) &&
>  	    ice_fdir_num_avail_fltr(hw, pf->vsi[vsi->idx]) < fltrs_needed) {
>  		dev_err(dev, "Failed to add filter.  The maximum number of flow director filters has been reached.\n");
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 9970ac3884f6..bbef6f4366de 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -924,7 +924,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  		memcpy(pkt, ice_fdir_pkt[idx].pkt, ice_fdir_pkt[idx].pkt_len);
>  		loc = pkt;
>  	} else {
> -		if (!ice_get_open_tunnel_port(hw, &tnl_port))
> +		if (!ice_get_open_tunnel_port(hw, &tnl_port, TNL_ALL))
>  			return -ENOENT;
>  		if (!ice_fdir_pkt[idx].tun_pkt)
>  			return -EINVAL;
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index b12da3cda78b..b197d3a72014 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -2040,9 +2040,11 @@ static struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld)
>   * ice_get_open_tunnel_port - retrieve an open tunnel port
>   * @hw: pointer to the HW structure
>   * @port: returns open port
> + * @type: type of tunnel, can be TNL_LAST if it doesn't matter
>   */
>  bool
> -ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port)
> +ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port,
> +			 enum ice_tunnel_type type)
>  {
>  	bool res = false;
>  	u16 i;
> @@ -2050,7 +2052,8 @@ ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port)
>  	mutex_lock(&hw->tnl_lock);
>  
>  	for (i = 0; i < hw->tnl.count && i < ICE_TUNNEL_MAX_ENTRIES; i++)
> -		if (hw->tnl.tbl[i].valid && hw->tnl.tbl[i].port) {
> +		if (hw->tnl.tbl[i].valid && hw->tnl.tbl[i].port &&
> +		    (type == TNL_LAST || type == hw->tnl.tbl[i].type)) {
>  			*port = hw->tnl.tbl[i].port;
>  			res = true;
>  			break;
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
> index 1c2be376a537..dd602285c78e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
> @@ -90,7 +90,8 @@ int
>  ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
>  		   unsigned long *bm, struct list_head *fv_list);
>  bool
> -ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port);
> +ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port,
> +			 enum ice_tunnel_type type);
>  int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
>  			    unsigned int idx, struct udp_tunnel_info *ti);
>  int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index c1dbac5f8d6b..7f7bf9815700 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3792,10 +3792,13 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
>   * ice_find_recp - find a recipe
>   * @hw: pointer to the hardware structure
>   * @lkup_exts: extension sequence to match
> + * @tun_type: type of recipe tunnel
>   *
>   * Returns index of matching recipe, or ICE_MAX_NUM_RECIPES if not found.
>   */
> -static u16 ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts)
> +static u16
> +ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
> +	      enum ice_sw_tunnel_type tun_type)
>  {
>  	bool refresh_required = true;
>  	struct ice_sw_recipe *recp;
> @@ -3856,8 +3859,9 @@ static u16 ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts)
>  			}
>  			/* If for "i"th recipe the found was never set to false
>  			 * then it means we found our match
> +			 * Also tun type of recipe needs to be checked
>  			 */
> -			if (found)
> +			if (found && recp[i].tun_type == tun_type)
>  				return i; /* Return the recipe ID */
>  		}
>  	}
> @@ -4647,11 +4651,12 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
>  	}
>  
>  	/* Look for a recipe which matches our requested fv / mask list */
> -	*rid = ice_find_recp(hw, lkup_exts);
> +	*rid = ice_find_recp(hw, lkup_exts, rinfo->tun_type);
>  	if (*rid < ICE_MAX_NUM_RECIPES)
>  		/* Success if found a recipe that match the existing criteria */
>  		goto err_unroll;
>  
> +	rm->tun_type = rinfo->tun_type;
>  	/* Recipe we need does not exist, add a recipe */
>  	status = ice_add_sw_recipe(hw, rm, profiles);
>  	if (status)
> @@ -4954,8 +4959,11 @@ ice_fill_adv_packet_tun(struct ice_hw *hw, enum ice_sw_tunnel_type tun_type,
>  
>  	switch (tun_type) {
>  	case ICE_SW_TUN_VXLAN:
> +		if (!ice_get_open_tunnel_port(hw, &open_port, TNL_VXLAN))
> +			return -EIO;
> +		break;
>  	case ICE_SW_TUN_GENEVE:
> -		if (!ice_get_open_tunnel_port(hw, &open_port))
> +		if (!ice_get_open_tunnel_port(hw, &open_port, TNL_GENEVE))
>  			return -EIO;
>  		break;
>  
> @@ -5551,7 +5559,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
>  	if (status)
>  		return status;
>  
> -	rid = ice_find_recp(hw, &lkup_exts);
> +	rid = ice_find_recp(hw, &lkup_exts, rinfo->tun_type);
>  	/* If did not find a recipe that match the existing criteria */
>  	if (rid == ICE_MAX_NUM_RECIPES)
>  		return -EINVAL;
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index f243dacda8a0..e8feb41e6dbe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -800,7 +800,8 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
>  		headers->l3_mask.ttl = match.mask->ttl;
>  	}
>  
> -	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS)) {
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS) &&
> +	    fltr->tunnel_type != TNL_VXLAN && fltr->tunnel_type != TNL_GENEVE) {
>  		struct flow_match_ports match;
>  
>  		flow_rule_match_enc_ports(rule, &match);
> -- 
> 2.31.1
Please add tested-by tag, after succesfull testing :)

> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
