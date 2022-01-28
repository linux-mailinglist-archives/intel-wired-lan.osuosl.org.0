Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6BD4A0103
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 20:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CC77405BC;
	Fri, 28 Jan 2022 19:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PE4VadDVdgV7; Fri, 28 Jan 2022 19:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E008D405B4;
	Fri, 28 Jan 2022 19:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 549B21BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 19:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3730341608
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 19:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eK8gbZhs7E5m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 19:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D68541576
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 19:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643398800; x=1674934800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rPYPVL3XM8DvccUeWKUdBSe//9PdyimBP4xAMV4RntU=;
 b=U2fh5ZgCrLDhyGpVIyXLVTYKsLXBEEEKZVTarpNhwIQp1/Bsq7adJDU9
 U78X4+lkoCmU63Hu/krw5tLUrA5tk6q5SqQh24g4p3IsAUhXFmrFyPSV1
 0NYhM/d92aRxmqypeAYU8WFNHTjYdVp0a+QGqG68sDPSAmfRdVu23l0Cw
 BYrkJKjpJwu0HyG7g/PJ132emic9AiXO9jp02WrmZG1ZMUYENLfprz+uR
 6qcBjjM8JMnEflEA982ZfsLueTScadUilUYTn8goNaIL18OMt/nviVLy3
 3m0anbIzLfHj9ZhY0ae6FfiFVg5fNalJSAAJbCqSd7OKjt0n/pQWAwUSE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="230761344"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="230761344"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 11:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="629222847"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 28 Jan 2022 11:39:50 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SJdn3S029866; Fri, 28 Jan 2022 19:39:49 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 20:38:09 +0100
Message-Id: <20220128193809.30521-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-18-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-18-alan.brady@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 17/19] iecm: implement cloud
 filters
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
Cc: intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:10:07 -0800

> This gives iecm the ability to deal with cloud filters and other traffic
> classes.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 900 +++++++++++++++++-
>  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  68 ++
>  drivers/net/ethernet/intel/include/iecm.h     |  25 +
>  3 files changed, 992 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> index 35c0cbc42ebe..d11413cb438c 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> @@ -43,9 +43,16 @@ static int iecm_get_vport_index(struct iecm_adapter *adapter,
>   */
>  bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t feature)
>  {
> +	struct iecm_channel_config *ch_config;
>  	bool ena;
>  
>  	switch (feature) {
> +	case NETIF_F_HW_TC:
> +		ch_config = &vport->adapter->config_data.ch_config;
> +		ena = (vport->netdev->features & feature) &&
> +			(ch_config->num_tc > IECM_START_CHNL_TC) &&
> +			(ch_config->tc_running);
> +		break;
>  	default:
>  		ena = vport->netdev->features & feature;
>  		break;
> @@ -53,6 +60,23 @@ bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t feature)
>  	return ena;
>  }
>  
> +/**
> + * iecm_is_adq_v2_ena - Determine whether ADQ V2 is enabled
> + * @vport: virtual port struct
> + *
> + * This function returns true based on negotiated capability ADQ_V2
> + * if set and ADQ enabled
> + */
> +static bool iecm_is_adq_v2_ena(struct iecm_vport *vport)
> +{
> +	/* iecm_is_feature_ena tells if the netdev flag is set and adq is
> +	 * enabled
> +	 */
> +	return (iecm_is_feature_ena(vport, NETIF_F_HW_TC) &&
> +		iecm_is_cap_ena(vport->adapter, IECM_OTHER_CAPS,
> +				VIRTCHNL2_CAP_ADQ));

The outermost braces are redundant.

> +}
> +
>  /**
>   * iecm_is_vlan_cap_ena - Check if VLAN capability is enabled
>   * @adapter: pointer to adapter
> @@ -946,6 +970,28 @@ static int iecm_get_free_slot(void *array, int size, int curr)
>  	return next;
>  }
>  
> +/**
> + * iecm_remove_cloud_filters - Remove all cloud filters
> + * @vport: vport structure
> + */
> +static void iecm_remove_cloud_filters(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter_config *cf_config;
> +
> +	cf_config = &adapter->config_data.cf_config;
> +	if (!list_empty(&cf_config->cloud_filter_list)) {
> +		struct iecm_cloud_filter *cf;
> +
> +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> +		list_for_each_entry(cf, &cf_config->cloud_filter_list, list) {
> +			cf->remove = true;
> +		}

One-liner, braces are redundant.

> +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +		iecm_send_add_del_cloud_filter_msg(vport, false);
> +	}

	if (list_empty())
		return;

-1 level.

> +}
> +
>  /**
>   * iecm_remove_vlan_filters - Remove all vlan filters
>   * @vport: vport structure
> @@ -1044,8 +1090,14 @@ static void iecm_vport_stop(struct iecm_vport *vport)
>  	if (test_and_clear_bit(__IECM_DEL_QUEUES,
>  			       vport->adapter->flags))
>  		iecm_send_delete_queues_msg(vport);
> -	if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags))
> +	/* In function reset/rmmod path we call unregister_netdev which
> +	 * internally calls delete cloud filters. We remove cloud filters only
> +	 * when the interface goes down
> +	 */
> +	if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags)) {
> +		iecm_remove_cloud_filters(vport);
>  		iecm_remove_vlan_filters(vport);
> +	}
>  
>  	iecm_remove_fdir_filters(vport);
>  
> @@ -1258,6 +1310,28 @@ static void iecm_restore_vlans(struct iecm_vport *vport)
>  		iecm_set_all_vlans(vport);
>  }
>  
> +/**
> + * iecm_restore_cloud_filters - Restore cloud filters
> + * @vport: vport structure
> + */
> +static void iecm_restore_cloud_filters(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter_config *cf_config;
> +
> +	cf_config = &adapter->config_data.cf_config;
> +	if (!list_empty(&cf_config->cloud_filter_list)) {
> +		struct iecm_cloud_filter *cf;
> +
> +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> +		list_for_each_entry(cf, &cf_config->cloud_filter_list, list) {
> +			cf->add = true;
> +		}

Same here for braces.

> +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +		iecm_send_add_del_cloud_filter_msg(vport, true);
> +	}

Same here for reducing indent level.

> +}
> +
>  /**
>   * iecm_restore_fdir_filters - Restore all Flow Director filters
>   * @vport: vport structure
> @@ -1302,6 +1376,10 @@ static void iecm_restore_features(struct iecm_vport *vport)
>  			dev_info(&adapter->pdev->dev, "Failed to restore promiscuous settings\n");
>  	}
>  
> +	/* Restore cloud filters if ADQ is enabled */
> +	if (iecm_is_feature_ena(vport, NETIF_F_HW_TC))
> +		iecm_restore_cloud_filters(vport);
> +
>  	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_FDIR))
>  		iecm_restore_fdir_filters(vport);
>  }
> @@ -2088,6 +2166,8 @@ int iecm_probe(struct pci_dev *pdev,
>  	spin_lock_init(&adapter->vlan_list_lock);
>  	spin_lock_init(&adapter->adv_rss_list_lock);
>  	spin_lock_init(&adapter->fdir_fltr_list_lock);
> +	INIT_LIST_HEAD(&adapter->config_data.cf_config.cloud_filter_list);
> +	INIT_LIST_HEAD(&adapter->config_data.cf_config.block_cb_list);
>  	INIT_LIST_HEAD(&adapter->config_data.mac_filter_list);
>  	INIT_LIST_HEAD(&adapter->config_data.vlan_filter_list);
>  	INIT_LIST_HEAD(&adapter->config_data.adv_rss_list);
> @@ -2389,6 +2469,810 @@ static int iecm_offload_txtime(struct iecm_vport *vport,
>  	return -EOPNOTSUPP;
>  }
>  
> +/**
> + * iecm_is_vlan_tc_filter_allowed - allowed to add tc-filter using VLAN
> + * @vport: vport structure
> + * @vlan: VLAN to verify
> + *
> + * Using specified "vlan" ID, there must be active VLAN filter in VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iecm_is_vlan_tc_filter_allowed(struct iecm_vport *vport,
> +			       struct iecm_vlan *vlan)
> +{
> +	struct iecm_vlan_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&vport->adapter->vlan_list_lock);
> +	f = iecm_find_vlan(vport, vlan);
> +	allowed = (f && !f->add && !f->remove);

Redundant braces here.

> +	spin_unlock_bh(&vport->adapter->vlan_list_lock);
> +	return allowed;
> +}
> +
> +/**
> + * iecm_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC addr
> + * @vport: vport structure
> + * @macaddr: MAC address
> + *
> + * Using specified MAC address, there must be active MAC filter in
> + * MAC filter list.
> + */
> +static bool
> +iecm_is_mac_tc_filter_allowed(struct iecm_vport *vport, const u8 *macaddr)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_mac_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_filter_list_lock);
> +	f = iecm_find_mac_filter(vport, macaddr);
> +	allowed = (f && !f->add && !f->remove);

Same here.

> +	spin_unlock_bh(&adapter->mac_filter_list_lock);
> +	return allowed;
> +}
> +
> +/**
> + * iecm_parse_keyid - Parse keyid
> + * @rule: Flow rule structure
> + * @field_flags: Cloud filter flags
> + */
> +static void  iecm_parse_keyid(struct flow_rule *rule, u8 *field_flags)
> +{
> +	struct flow_match_enc_keyid match;
> +
> +	flow_rule_match_enc_keyid(rule, &match);
> +
> +	if (match.mask->keyid != 0)
> +		*field_flags |= IECM_CLOUD_FIELD_TEN_ID;
> +}
> +
> +/**
> + * iecm_parse_flow_type - Parse flow type based on L2 and L3 protocols
> + * @vport: vport structure
> + * @rule: rule from user
> + * @cf: Structure for the virtchnl filter
> + * @filter: Structure for the cloud filter
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int
> +iecm_parse_flow_type(struct iecm_vport *vport,
> +		     struct flow_rule *rule, struct virtchnl_filter *cf,
> +		     struct iecm_cloud_filter *filter)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	enum virtchnl_flow_type flow_type;
> +	struct flow_match_basic match;
> +	u16 n_proto_mask = 0;
> +	u16 n_proto_key = 0;
> +	u16 n_proto = 0;
> +	u8 ip_proto = 0;
> +
> +	flow_rule_match_basic(rule, &match);
> +
> +	n_proto_key = ntohs(match.key->n_proto);
> +	n_proto_mask = ntohs(match.mask->n_proto);
> +
> +	if (n_proto_key == ETH_P_ALL) {
> +		n_proto_key = 0;
> +		n_proto_mask = 0;
> +	}

	n_proto_key = ntohs();
	if (n_proto_key != ETH_P_ALL)
		n_proto_mask = ntohs();

> +	n_proto = n_proto_key & n_proto_mask;
> +	if (n_proto != ETH_P_IP && n_proto != ETH_P_IPV6)
> +		return -EINVAL;
> +
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADQ)) {
> +		if (match.key->ip_proto != IPPROTO_TCP &&
> +		    match.key->ip_proto != IPPROTO_UDP) {
> +			dev_err(&adapter->pdev->dev,
> +				"Only TCP or UDP transport is supported\n");
> +			return -EINVAL;
> +		}
> +	} else if (match.key->ip_proto != IPPROTO_TCP) {
> +		dev_err(&adapter->pdev->dev,
> +			"Only TCP transport is supported\n");
> +		return -EINVAL;
> +	}
> +	ip_proto = match.key->ip_proto;
> +
> +	/* determine VIRTCHNL flow_type based on L3 and L4 protocol */
> +	if (n_proto == ETH_P_IP)
> +		flow_type = (ip_proto == IPPROTO_TCP) ?
> +			     VIRTCHNL_TCP_V4_FLOW :
> +			     VIRTCHNL_UDP_V4_FLOW;
> +	else
> +		flow_type = (ip_proto == IPPROTO_TCP) ?
> +			     VIRTCHNL_TCP_V6_FLOW :
> +			     VIRTCHNL_UDP_V6_FLOW;
> +	cf->flow_type = flow_type;
> +	filter->f.flow_type = flow_type;
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_parse_ether_header - Parse ethernet header fields
> + * @vport: vport structure
> + * @field_flags: Cloud filter flags
> + * @d_spec: Virtchnl structure for L4 specs
> + * @m_spec: Virtchnl structure for L4 specs
> + * @rule: Flow rule structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int
> +iecm_parse_ether_header(struct iecm_vport *vport, u8 *field_flags,
> +			struct virtchnl_l4_spec *d_spec,
> +			struct virtchnl_l4_spec *m_spec,
> +			struct flow_rule *rule)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct flow_match_eth_addrs match;
> +	bool adv_adq_ena;
> +
> +	adv_adq_ena = iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> +				      VIRTCHNL2_CAP_ADQ);
> +
> +	flow_rule_match_eth_addrs(rule, &match);
> +
> +	/* use is_broadcast and is_zero to check for all 0xf or 0 */
> +	if (!is_zero_ether_addr(match.mask->dst)) {
> +		if (adv_adq_ena || is_broadcast_ether_addr(match.mask->dst)) {
> +			*field_flags |= IECM_CLOUD_FIELD_OMAC;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Bad ether dest mask %pM\n",
> +				match.mask->dst);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (!is_zero_ether_addr(match.mask->src)) {
> +		if (adv_adq_ena || is_broadcast_ether_addr(match.mask->src)) {
> +			*field_flags |= IECM_CLOUD_FIELD_IMAC;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Bad ether src mask %pM\n",
> +				match.mask->src);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (!is_zero_ether_addr(match.key->dst)) {
> +		if (!iecm_is_mac_tc_filter_allowed(adapter->vports[0],
> +						   match.key->dst)) {
> +			dev_err(&adapter->pdev->dev,
> +				"Dest MAC %pM doesn't belong to this device\n",
> +				match.key->dst);
> +			return -EINVAL;
> +		}
> +
> +		if (is_valid_ether_addr(match.key->dst) ||
> +		    is_multicast_ether_addr(match.key->dst)) {
> +			/* set the mask if a valid dst_mac address */
> +			if (adv_adq_ena)
> +				ether_addr_copy(m_spec->dst_mac,
> +						match.mask->dst);
> +			else
> +				eth_broadcast_addr(m_spec->dst_mac);
> +			ether_addr_copy(d_spec->dst_mac,
> +					match.key->dst);
> +		}
> +	}
> +
> +	if (!is_zero_ether_addr(match.key->src))
> +		if (is_valid_ether_addr(match.key->src) ||
> +		    is_multicast_ether_addr(match.key->src)) {
> +			/* set the mask if a valid src_mac address */
> +			if (adv_adq_ena) {
> +				ether_addr_copy(m_spec->src_mac,
> +						match.mask->src);
> +			} else {
> +				eth_broadcast_addr(m_spec->src_mac);
> +			}
> +			ether_addr_copy(d_spec->src_mac,
> +					match.key->src);
> +		}

All previous ifs had braces, and it way okay since we have multiple
nested if-elses, but here we don't have them.
Please either add them here or remove all the way above to keep the
code style consistent.

> +	return 0;
> +}
> +
> +/**
> + * iecm_parse_vlan_header - Parse vlan header fields
> + * @vport: vport structure
> + * @field_flags: Cloud filter flags
> + * @d_spec: Virtchnl structure for L4 specs
> + * @m_spec: Virtchnl structure for L4 specs
> + * @rule: Flow rule structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int
> +iecm_parse_vlan_header(struct iecm_vport *vport, u8 *field_flags,
> +		       struct virtchnl_l4_spec *d_spec,
> +		       struct virtchnl_l4_spec *m_spec,
> +		       struct flow_rule *rule)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct flow_match_vlan match;
> +
> +	flow_rule_match_vlan(rule, &match);
> +	if (match.mask->vlan_id) {
> +		u16 vid = match.key->vlan_id & VLAN_VID_MASK;
> +		struct iecm_vlan vlan;
> +
> +		vlan = IECM_VLAN(vid, ETH_P_8021Q);
> +
> +		if (match.mask->vlan_id != VLAN_VID_MASK) {
> +			dev_err(&adapter->pdev->dev, "Bad vlan mask %u\n",
> +				match.mask->vlan_id);
> +			return -EINVAL;
> +		}
> +		if (!iecm_is_vlan_tc_filter_allowed(vport, &vlan)) {
> +			dev_err(&adapter->pdev->dev,
> +				"VLAN %u doesn't belong to this VF\n",
> +				vid);
> +			return -EINVAL;
> +		}
> +		*field_flags |= IECM_CLOUD_FIELD_IVLAN;
> +		m_spec->vlan_id = cpu_to_be16(match.mask->vlan_id);
> +		d_spec->vlan_id = cpu_to_be16(match.key->vlan_id);
> +	}

	if (!vlan_id)
		return 0;

-1 level.

> +	return 0;
> +}
> +
> +/**
> + * iecm_parse_ipv4_header - Parse ipv4 header fields
> + * @vport: vport structure
> + * @field_flags: Cloud filter flags
> + * @d_spec: Virtchnl structure for L4 specs
> + * @m_spec: Virtchnl structure for L4 specs
> + * @rule: Flow rule structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int
> +iecm_parse_ipv4_header(struct iecm_vport *vport, u8 *field_flags,
> +		       struct virtchnl_l4_spec *d_spec,
> +		       struct virtchnl_l4_spec *m_spec,
> +		       struct flow_rule *rule)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct flow_match_ipv4_addrs match;
> +	bool adv_adq_ena;
> +
> +	adv_adq_ena = iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> +				      VIRTCHNL2_CAP_ADQ);
> +
> +	flow_rule_match_ipv4_addrs(rule, &match);
> +
> +	if (*field_flags & IECM_CLOUD_FIELD_TEN_ID) {
> +		dev_info(&adapter->pdev->dev,
> +			 "Tenant id not allowed for ip filter\n");
> +		return -EINVAL;
> +	}
> +
> +	if (match.mask->dst) {
> +		if (adv_adq_ena || match.mask->dst == cpu_to_be32(0xffffffff)) {
> +			*field_flags |= IECM_CLOUD_FIELD_IIP;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Bad ip dst mask 0x%08x\n",
> +				be32_to_cpu(match.mask->dst));
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (match.mask->src) {
> +		if (adv_adq_ena || match.mask->src == cpu_to_be32(0xffffffff)) {
> +			*field_flags |= IECM_CLOUD_FIELD_IIP;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Bad ip src mask 0x%08x\n",
> +				be32_to_cpu(match.mask->dst));
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (match.key->dst) {
> +		if (adv_adq_ena)
> +			m_spec->dst_ip[0] = match.mask->dst;
> +		else
> +			m_spec->dst_ip[0] = cpu_to_be32(0xffffffff);
> +		d_spec->dst_ip[0] = match.key->dst;
> +	}
> +
> +	if (match.key->src) {
> +		if (adv_adq_ena)
> +			m_spec->src_ip[0] = match.mask->src;
> +		else
> +			m_spec->src_ip[0] = cpu_to_be32(0xffffffff);
> +		d_spec->src_ip[0] = match.key->src;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * iecm_parse_ipv6_header - Parse ipv6 header fields
> + * @vport: vport structure
> + * @field_flags: Cloud filter flags
> + * @d_spec: Virtchnl structure for L4 specs
> + * @m_spec: Virtchnl structure for L4 specs
> + * @rule: Flow rule structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int
> +iecm_parse_ipv6_header(struct iecm_vport *vport, u8 *field_flags,
> +		       struct virtchnl_l4_spec *d_spec,
> +		       struct virtchnl_l4_spec *m_spec,
> +		       struct flow_rule *rule)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct flow_match_ipv6_addrs match;
> +	int i;
> +
> +	flow_rule_match_ipv6_addrs(rule, &match);
> +
> +	/* validate mask, make sure it is not IPV6_ADDR_ANY */
> +	if (ipv6_addr_any(&match.mask->dst)) {
> +		dev_err(&adapter->pdev->dev, "Bad ipv6 dst mask 0x%02x\n",
> +			IPV6_ADDR_ANY);
> +		return -EINVAL;
> +	}
> +
> +	/* src and dest IPv6 address should not be LOOPBACK
> +	 * (0:0:0:0:0:0:0:1) which can be represented as ::1
> +	 */
> +	if (ipv6_addr_loopback(&match.key->dst) ||
> +	    ipv6_addr_loopback(&match.key->src)) {
> +		dev_err(&adapter->pdev->dev,
> +			"ipv6 addr should not be loopback\n");
> +		return -EINVAL;
> +	}
> +
> +	if (!ipv6_addr_any(&match.mask->dst) ||
> +	    !ipv6_addr_any(&match.mask->src))
> +		*field_flags |= IECM_CLOUD_FIELD_IIP;
> +
> +	/* copy dest IPv6 mask and address */
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADQ)) {
> +		memcpy(&m_spec->dst_ip, &match.mask->dst.s6_addr32,
> +		       sizeof(m_spec->dst_ip));
> +	} else {
> +		for (i = 0; i < 4; i++)
> +			m_spec->dst_ip[i] = cpu_to_be32(0xffffffff);
> +	}

One-liners, no braces needed for both `if` and `else`.

> +	memcpy(&d_spec->dst_ip, &match.key->dst.s6_addr32,
> +	       sizeof(d_spec->dst_ip));
> +
> +	/* copy source IPv6 mask and address */
> +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS, VIRTCHNL2_CAP_ADQ)) {
> +		memcpy(&m_spec->src_ip, &match.mask->src.s6_addr32,
> +		       sizeof(m_spec->src_ip));
> +	} else {
> +		for (i = 0; i < 4; i++)
> +			m_spec->src_ip[i] = cpu_to_be32(0xffffffff);
> +	}

Same here.

> +	memcpy(&d_spec->src_ip, &match.key->src.s6_addr32,
> +	       sizeof(d_spec->src_ip));
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_parse_l4_header - Parse l4 header fields
> + * @vport: vport structure
> + * @d_spec: Virtchnl structure for L4 specs
> + * @m_spec: Virtchnl structure for L4 specs
> + * @rule: Flow rule structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int
> +iecm_parse_l4_header(struct iecm_vport *vport,
> +		     struct virtchnl_l4_spec *d_spec,
> +		     struct virtchnl_l4_spec *m_spec,
> +		     struct flow_rule *rule)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct flow_match_ports match;
> +
> +	flow_rule_match_ports(rule, &match);
> +
> +	if (match.key->dst) {
> +		if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> +				    VIRTCHNL2_CAP_ADQ) ||
> +		    match.mask->dst == cpu_to_be16(0xffff)) {
> +			m_spec->dst_port = match.mask->dst;
> +			d_spec->dst_port = match.key->dst;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Bad dst port mask %u\n",
> +				be16_to_cpu(match.mask->dst));
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (match.key->src) {
> +		if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> +				    VIRTCHNL2_CAP_ADQ) ||
> +		    match.mask->src == cpu_to_be16(0xffff)) {
> +			m_spec->src_port = match.mask->src;
> +			d_spec->src_port = match.key->src;
> +		} else {
> +			dev_err(&adapter->pdev->dev, "Bad src port mask %u\n",
> +				be16_to_cpu(match.mask->src));
> +			return -EINVAL;
> +		}
> +	}
> +	return 0;
> +}
> +
> +/**
> + * iecm_parse_cls_flower - Parse tc flower filters provided by kernel
> + * @vport: vport structure
> + * @f: pointer to struct flow_cls_offload
> + * @filter: pointer to cloud filter structure
> + */
> +static int iecm_parse_cls_flower(struct iecm_vport *vport,
> +				 struct flow_cls_offload *f,
> +				 struct iecm_cloud_filter *filter)
> +{
> +	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct virtchnl_l4_spec *d_spec, *m_spec;
> +	struct virtchnl_filter *cf = &filter->f;
> +	struct flow_dissector *dissector;
> +	u8 field_flags = 0;
> +	u16 addr_type = 0;
> +	int err;
> +
> +	dissector = rule->match.dissector;
> +	if (dissector->used_keys &
> +	    ~(BIT(FLOW_DISSECTOR_KEY_CONTROL) |
> +	      BIT(FLOW_DISSECTOR_KEY_BASIC) |
> +	      BIT(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
> +	      BIT(FLOW_DISSECTOR_KEY_VLAN) |
> +	      BIT(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
> +	      BIT(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
> +	      BIT(FLOW_DISSECTOR_KEY_ENC_KEYID) |
> +	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
> +		dev_err(&adapter->pdev->dev, "Unsupported key used: 0x%x\n",
> +			dissector->used_keys);
> +		return -EOPNOTSUPP;
> +	}
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID))
> +		iecm_parse_keyid(rule, &field_flags);
> +
> +	/* even though following code refers as "tcp_sec", it is not
> +	 * just for TCP but a generic struct representing
> +	 * L2, L3 + L4 fields if specified
> +	 */
> +	m_spec = &cf->mask.tcp_spec;
> +	d_spec = &cf->data.tcp_spec;
> +
> +	/* determine flow type, TCP/UDP_V4[6]_FLOW based on
> +	 * L2 proto (aka ETH proto) and L3 proto (aka IP_PROTO)
> +	 */
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_BASIC)) {
> +		err = iecm_parse_flow_type(vport, rule, cf, filter);
> +		if (err)
> +			return err;
> +	}
> +
> +	/* process Ethernet header fields */
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
> +		err = iecm_parse_ether_header(vport, &field_flags,
> +					      d_spec, m_spec, rule);
> +		if (err)
> +			return err;
> +	}
> +
> +	/* process VLAN header for single VLAN (type could be S/C-tag) */
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_VLAN)) {
> +		err = iecm_parse_vlan_header(vport, &field_flags,
> +					     d_spec, m_spec, rule);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
> +		struct flow_match_control match;
> +
> +		flow_rule_match_control(rule, &match);
> +		addr_type = match.key->addr_type;
> +	}
> +
> +	/* process IPv4 header */
> +	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
> +		err = iecm_parse_ipv4_header(vport, &field_flags,
> +					     d_spec, m_spec, rule);
> +		if (err)
> +			return err;
> +	}
> +
> +	/* process IPv6 header */
> +	if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
> +		err = iecm_parse_ipv6_header(vport, &field_flags,
> +					     d_spec, m_spec, rule);
> +		if (err)
> +			return err;
> +	}
> +
> +	/* process L4 header, supported L4 protocols are TCP and UDP */
> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
> +		err = iecm_parse_l4_header(vport, d_spec, m_spec, rule);
> +		if (err)
> +			return err;
> +	}
> +	cf->field_flags = field_flags;
> +
> +	return 0;
> +}
> +
> +/**
> + * iecm_handle_tclass - Forward to a traffic class on the device
> + * @vport: vport structure
> + * @tc: traffic class index on the device
> + * @filter: pointer to cloud filter structure
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int iecm_handle_tclass(struct iecm_vport *vport, int tc,
> +			      struct iecm_cloud_filter *filter)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +
> +	if (tc == 0)
> +		return 0;
> +	if ((!iecm_is_adq_v2_ena(vport)) &&
> +	    !filter->f.data.tcp_spec.dst_port) {
> +		dev_err(&adapter->pdev->dev,
> +			"Specify destination port to redirect to traffic class other than TC0\n");
> +		return -EINVAL;
> +	}
> +	/* redirect to a traffic class on the same device */
> +	filter->f.action = VIRTCHNL_ACTION_TC_REDIRECT;
> +	filter->f.action_meta = tc;
> +	return 0;
> +}
> +
> +/* iecm_find_cf - Find the cloud filter in the list
> + * @vport: vport structure
> + * @cookie: filter specific cookie
> + *
> + * Returns pointer to the filter object or NULL. Must be called while holding
> + * cloud_filter_list_lock.
> + */
> +static struct iecm_cloud_filter *iecm_find_cf(struct iecm_vport *vport,
> +					      unsigned long *cookie)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter *filter = NULL;
> +
> +	if (!cookie)
> +		return NULL;
> +
> +	list_for_each_entry(filter,
> +			    &adapter->config_data.cf_config.cloud_filter_list,
> +			    list) {
> +		if (!memcmp(cookie, &filter->cookie, sizeof(filter->cookie)))
> +			return filter;
> +	}

Redundant braces round single statement.

> +	return NULL;
> +}
> +
> +/**
> + * iecm_configure_clsflower - Add tc flower filters
> + * @vport: vport structure
> + * @cls_flower: Pointer to struct flow_cls_offload
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int iecm_configure_clsflower(struct iecm_vport *vport,
> +				    struct flow_cls_offload *cls_flower)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_user_config_data *config_data;
> +	struct iecm_cloud_filter *filter = NULL;
> +	int err;
> +	int tc;
> +
> +	config_data = &adapter->config_data;
> +	tc = tc_classid_to_hwtc(vport->netdev, cls_flower->classid);
> +	if (tc < 0) {
> +		dev_err(&adapter->pdev->dev, "Invalid traffic class\n");
> +		return -EINVAL;
> +	}
> +
> +#define IECM_MAX_CLOUD_ADQ_FILTERS	128
> +
> +	if (config_data->cf_config.num_cloud_filters >=
> +						IECM_MAX_CLOUD_ADQ_FILTERS) {
> +		dev_err(&adapter->pdev->dev,
> +			"Unable to add filter (action is forward to TC), reached max allowed filters (%u)\n",
> +			IECM_MAX_CLOUD_ADQ_FILTERS);
> +		return -ENOSPC;
> +	}
> +
> +	/* bail out here if filter already exists */
> +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> +	filter = iecm_find_cf(vport, &cls_flower->cookie);
> +	if (filter) {
> +		filter->remove = false;
> +		dev_err(&adapter->pdev->dev, "Failed to add TC Flower filter, it already exists\n");
> +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +		return -EEXIST;
> +	}
> +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +
> +	filter = kzalloc(sizeof(*filter), GFP_KERNEL);
> +	if (!filter)
> +		return -ENOMEM;
> +
> +	filter->cookie = cls_flower->cookie;
> +
> +	/* set the mask to all zeroes to begin with */
> +	memset(&filter->f.mask.tcp_spec, 0, sizeof(struct virtchnl_l4_spec));
> +
> +	/* start out with flow type and eth type IPv4 to begin with */
> +	filter->f.flow_type = VIRTCHNL_TCP_V4_FLOW;
> +	err = iecm_parse_cls_flower(vport, cls_flower, filter);
> +	if (err)
> +		goto error;
> +
> +	err = iecm_handle_tclass(vport, tc, filter);
> +	if (err)
> +		goto error;
> +
> +	/* add filter to the list */
> +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> +	list_add_tail(&filter->list, &config_data->cf_config.cloud_filter_list);
> +	filter->add = true;
> +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +	err = iecm_send_add_del_cloud_filter_msg(vport, true);
> +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> +	/* We have to find it again in case another thread has already
> +	 * deleted and kfreed it.
> +	 */
> +	filter = iecm_find_cf(vport, &cls_flower->cookie);
> +	if (filter && err) {
> +		list_del(&filter->list);
> +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +		goto error;
> +	}
> +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +
> +	config_data->cf_config.num_cloud_filters++;
> +error:
> +	if (err)
> +		kfree(filter);
> +	return err;
> +}
> +
> +/**
> + * iecm_delete_clsflower - Remove tc flower filters
> + * @vport: vport structure
> + * @cls_flower: Pointer to struct flow_cls_offload
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int iecm_delete_clsflower(struct iecm_vport *vport,
> +				 struct flow_cls_offload *cls_flower)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter *filter = NULL;
> +	int err = 0;
> +
> +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> +	filter = iecm_find_cf(vport, &cls_flower->cookie);
> +	if (filter) {
> +		filter->remove = true;
> +		adapter->config_data.cf_config.num_cloud_filters--;
> +	} else if (adapter->config_data.cf_config.num_cloud_filters) {
> +		/* "num_cloud_filters" can become zero if egress qdisc is
> +		 * detached as per design, driver deletes related filters
> +		 * when qdisc is detached to avoid stale filters, hence
> +		 * num_cloud_filters can become zero. But since netdev
> +		 * layer doesn't know that filters are deleted by driver
> +		 * implictly when egress qdisc is deleted, it sees filters
> +		 * being present and "in_hw". User can request delete
> +		 * of specific filter of detach ingress qdisc - in either of
> +		 * those operation, filter(s) won't be found in driver cache,
> +		 * hence instead of returning, let this function return SUCCESS
> +		 * Returning of err as -EINVAL is only applicable when
> +		 * unable to find filter and num_cloud_filters is non-zero
> +		 */
> +		err = -EINVAL;
> +	}
> +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +
> +	if (filter) {
> +		err = iecm_send_add_del_cloud_filter_msg(vport, false);
> +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> +		/* It can happen that asynchronously the filter was already
> +		 * deleted from the list. Make sure it's still there and marked
> +		 * for remove under spinlock before actually trying to delete
> +		 * from list.
> +		 */
> +		filter = iecm_find_cf(vport, &cls_flower->cookie);
> +		if (filter) {
> +			list_del(&filter->list);
> +			kfree(filter);
> +		}
> +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +	}

	if (!filter)
		return err;

	err = ...

-1 level.

> +	return err;
> +}
> +
> +/**
> + * iecm_setup_tc_cls_flower - flower classifier offloads
> + * @vport: vport structure
> + * @cls_flower: pointer to struct flow_cls_offload
> + *
> + * Return 0 on success, negative on failure
> + */
> +static int iecm_setup_tc_cls_flower(struct iecm_vport *vport,
> +				    struct flow_cls_offload *cls_flower)
> +{
> +	if (cls_flower->common.chain_index)
> +		return -EOPNOTSUPP;
> +
> +	switch (cls_flower->command) {
> +	case FLOW_CLS_REPLACE:
> +		return iecm_configure_clsflower(vport, cls_flower);
> +	case FLOW_CLS_DESTROY:
> +		return iecm_delete_clsflower(vport, cls_flower);
> +	case FLOW_CLS_STATS:
> +		return -EOPNOTSUPP;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +/**
> + * iecm_setup_tc_block_cb - block callback for tc
> + * @type: type of offload
> + * @type_data: offload data
> + * @cb_priv: Private adapter structure
> + *
> + * This function is the block callback for traffic classes
> + * Return 0 on success, negative on failure
> + **/
> +static int iecm_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
> +				  void *cb_priv)
> +{
> +	switch (type) {
> +	case TC_SETUP_CLSFLOWER:
> +		return iecm_setup_tc_cls_flower((struct iecm_vport *)cb_priv,
> +						(struct flow_cls_offload *)
> +						 type_data);

Just dereference them in separate variables and they will fit into
one line. There shouldn't be any spaces or line breaks after a cast.

> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +/**
> + * iecm_del_all_cloud_filters - delete all cloud filters on the traffic classes
> + * @vport: vport structure
> + *
> + * This function will loop through the list of cloud filters and deletes them.
> + **/
> +static void iecm_del_all_cloud_filters(struct iecm_vport *vport)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter_config *cf_config;
> +	struct iecm_cloud_filter *cf, *cftmp;
> +
> +	cf_config = &adapter->config_data.cf_config;
> +	spin_lock_bh(&adapter->cloud_filter_list_lock);
> +	list_for_each_entry_safe(cf, cftmp,
> +				 &cf_config->cloud_filter_list,
> +				 list) {
> +		list_del(&cf->list);
> +		kfree(cf);
> +		cf_config->num_cloud_filters--;
> +	}
> +	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +}
> +
>  /**
>   * iecm_validate_tx_bandwidth - validate the max Tx bandwidth
>   * @vport: vport structure
> @@ -2596,6 +3480,7 @@ static int __iecm_setup_tc(struct iecm_vport *vport, void *type_data)
>  			netif_tx_stop_all_queues(netdev);
>  			netif_tx_disable(netdev);
>  			ret = iecm_send_disable_channels_msg(vport);
> +			iecm_del_all_cloud_filters(vport);
>  			netif_tx_start_all_queues(netdev);
>  			if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags) &&
>  			    !ret) {
> @@ -2709,8 +3594,10 @@ static int iecm_setup_tc(struct net_device *netdev, enum tc_setup_type type,
>  {
>  	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
>  	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter_config *cf_config;
>  	int err = 0;
>  
> +	cf_config = &adapter->config_data.cf_config;
>  	switch (type) {
>  	case TC_SETUP_QDISC_ETF:
>  		if (iecm_is_queue_model_split(vport->txq_model))
> @@ -2720,6 +3607,17 @@ static int iecm_setup_tc(struct net_device *netdev, enum tc_setup_type type,
>  					     type_data);
>  		break;
>  	case TC_SETUP_BLOCK:
> +		if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> +				    VIRTCHNL2_CAP_ADQ) ||
> +		    iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> +				    VIRTCHNL2_CAP_ADQ)) {
> +			err =
> +			flow_block_cb_setup_simple((struct flow_block_offload *)
> +						    type_data,
> +						   &cf_config->block_cb_list,
> +						   iecm_setup_tc_block_cb,
> +						   vport, vport, true);
> +		}

Invert the condition, and there'll be no line wraps (esp. if you
assign casted @type_data into a separate var).

>  		break;
>  	case TC_SETUP_QDISC_MQPRIO:
>  		if (iecm_is_cap_ena(adapter, IECM_BASE_CAPS,
> diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> index 5601846b4674..94af45c36866 100644
> --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> @@ -2731,6 +2731,74 @@ static int iecm_send_insert_vlan_msg(struct iecm_vport *vport, bool ena)
>  	return err;
>  }
>  
> +/**
> + * iecm_send_add_del_cloud_filter_msg: Send add/del cloud filter message
> + * @vport: vport structure
> + * @add: True to add, false to delete cloud filter
> + *
> + * Request the CP/PF to add/del cloud filters as specified by the user via
> + * tc tool
> + *
> + * Return 0 on success, negative on failure
> + **/
> +int iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport, bool add)
> +{
> +	struct iecm_adapter *adapter = vport->adapter;
> +	struct iecm_cloud_filter_config *cf_config;
> +	struct iecm_cloud_filter *cf;
> +	struct virtchnl_filter f;
> +	int len = 0, err = 0;
> +
> +	cf_config = &adapter->config_data.cf_config;
> +
> +	while (true) {
> +		bool process_fltr = false;
> +
> +		spin_lock_bh(&adapter->cloud_filter_list_lock);
> +		list_for_each_entry(cf, &cf_config->cloud_filter_list, list) {
> +			if (add && cf->add) {
> +				process_fltr = true;
> +				cf->add = false;
> +				f = cf->f;
> +				break;
> +			} else if (!add && cf->remove) {
> +				process_fltr = true;
> +				cf->remove = false;
> +				f = cf->f;
> +				break;
> +			}
> +		}

Redundant braces.

> +		spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +
> +		/* Don't send mailbox message when there are no filters to add/del */
> +		if (!process_fltr)
> +			goto error;
> +
> +		if (add) {
> +			err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_ADD_CLOUD_FILTER,
> +					       len, (u8 *)&f);
> +			if (err)
> +				goto error;
> +
> +			err = iecm_wait_for_event(adapter, IECM_VC_ADD_CLOUD_FILTER,
> +						  IECM_VC_ADD_CLOUD_FILTER_ERR);
> +		} else {
> +			err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_DEL_CLOUD_FILTER,
> +					       len, (u8 *)&f);
> +			if (err)
> +				goto error;
> +
> +			err =
> +			iecm_min_wait_for_event(adapter, IECM_VC_DEL_CLOUD_FILTER,
> +						IECM_VC_DEL_CLOUD_FILTER_ERR);

Too long lines here.

> +		}
> +		if (err)
> +			break;
> +	}
> +error:
> +	return err;
> +}
> +
>  /**
>   * iecm_send_add_fdir_filter_msg: Send add Flow Director filter message
>   * @vport: vport structure
> diff --git a/drivers/net/ethernet/intel/include/iecm.h b/drivers/net/ethernet/intel/include/iecm.h
> index b0785684cc63..0aab41cf982c 100644
> --- a/drivers/net/ethernet/intel/include/iecm.h
> +++ b/drivers/net/ethernet/intel/include/iecm.h
> @@ -403,6 +403,28 @@ enum iecm_user_flags {
>  	__IECM_USER_FLAGS_NBITS,
>  };
>  
> +#define IECM_CLOUD_FIELD_OMAC		BIT(0)
> +#define IECM_CLOUD_FIELD_IMAC		BIT(1)
> +#define IECM_CLOUD_FIELD_IVLAN		BIT(2)
> +#define IECM_CLOUD_FIELD_TEN_ID		BIT(3)
> +#define IECM_CLOUD_FIELD_IIP		BIT(4)
> +
> +#define IECM_START_CHNL_TC		1
> +
> +struct iecm_cloud_filter {
> +	struct list_head list;
> +	struct virtchnl_filter f;
> +	unsigned long cookie;
> +	bool remove;		/* filter needs to be deleted */
> +	bool add;		/* filter needs to be added */
> +};
> +
> +struct iecm_cloud_filter_config {
> +	struct list_head block_cb_list;		/* need to pass this to stack */
> +	struct list_head cloud_filter_list;
> +	u16 num_cloud_filters;
> +};
> +
>  struct iecm_channel_config {
>  	struct virtchnl_channel_info ch_info[VIRTCHNL_MAX_ADQ_V2_CHANNELS];
>  	bool tc_running;
> @@ -536,6 +558,7 @@ struct iecm_ptype_state {
>  	bool outer_frag;
>  	u8 tunnel_state;
>  };
> +

Please move this newline into the patch where iecm_ptype_state was
introduced, it doesn't belong here.

>  /* User defined configuration values */
>  struct iecm_user_config_data {
>  	u32 num_req_tx_qs; /* user requested TX queues through ethtool */
> @@ -550,6 +573,7 @@ struct iecm_user_config_data {
>  	struct list_head vlan_filter_list;
>  	struct list_head adv_rss_list;
>  	struct iecm_fdir_fltr_config fdir_config;
> +	struct iecm_cloud_filter_config cf_config;
>  	struct iecm_channel_config ch_config;
>  };
>  
> @@ -853,6 +877,7 @@ void iecm_set_ethtool_ops(struct net_device *netdev);
>  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
>  void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add, bool async);
>  int iecm_set_promiscuous(struct iecm_adapter *adapter);
> +int iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport, bool add);
>  int iecm_send_add_fdir_filter_msg(struct iecm_vport *vport);
>  int iecm_send_del_fdir_filter_msg(struct iecm_vport *vport);
>  int iecm_get_fdir_fltr_entry(struct iecm_vport *vport,
> -- 
> 2.33.0

Thanks,
Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

