Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE53987BBAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 12:03:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B88760E03;
	Thu, 14 Mar 2024 11:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X4oHT_8CyS4p; Thu, 14 Mar 2024 11:03:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7817860E06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710414232;
	bh=HjSqroCgRCGcOD0VO1w3/APH46SNEOLNC+kZ5QpqXAE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3fdUlnqKnJcmvAsMWRSKAIG6wLBXWRTjW/z5+vgc6znNNrNd36F+EuwnAZpsBuCEg
	 WjsdlfpT5QV8NPFz8HZ4tSM8tNXhYV/wliTQU6w17JIVVMUUtTBrhSl3U0QOsIdBRY
	 2KdXjxxUWi29cXbOpSLC19XBZ8jfCnBb6WICk6a2lAjTRpMZZoyBIEncCkXYpjwOUE
	 bs43V9RZR0sG4jntpOF6pIOjNLnhBb1wOmvJ1eugiRS3GoJyzkYJYb07X27uqNsdA0
	 4tN4pojK8sJJNPeoeW/o4+ybDbW6z/eC0hHCEHyP6/QRv3Phsuu3bF1Y6wXt4bc19C
	 6V4XchQgufOqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7817860E06;
	Thu, 14 Mar 2024 11:03:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB8121BF267
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 11:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A40EA40937
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 11:03:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbdEpQ0pCaoM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 11:03:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 69FCA408E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69FCA408E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69FCA408E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 11:03:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5420686"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5420686"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 04:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="35382493"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 04:03:45 -0700
Date: Thu, 14 Mar 2024 12:03:41 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <ZfLZjUZiQwJzJ445@mev-dev>
References: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
 <20240222123956.2393-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222123956.2393-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710414229; x=1741950229;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=O50/8D9DlRidJxRUCY4jlU7tdjizRH8/aSa6obSpSxU=;
 b=gjMEPszAOMDHdXCib/f37c7gcM9vyMJLvbiAuPXhtOAXQ9jJsPGt1mRC
 NqAJAK0brfGYsDSK2EZPC2qbeXeIIbADCiL+va+mwIZ88q6VTGoFMIAmi
 w6c61ZhjysZl9bj04z22yAJI3LxZ9jDX3PEwrNkk2d3lMl8MSNN6NAXx1
 KyFJuv+HBBCaxeCsgWH+Pyi3XzGjS/iAQKxW+hTQSAIMiQMR6WuIWczu5
 lZ7x/H6gYA1X+byzh3j0Rmo/waZA4WE2d57mkCuh0L0+FRBf6bWOJXGfu
 XiUFjp4Q2L7ewWTCpFPEV9MoR5PWZIPgZ81a45AOxp0/W/BhSn8jRJIbC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gjMEPszA
Subject: Re: [Intel-wired-lan] [iwl-next v2 2/2] ice: tc: allow ip_proto
 matching
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 sridhar.samudrala@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 22, 2024 at 01:39:56PM +0100, Michal Swiatkowski wrote:
> Add new matching type for ip_proto.
> 
> Use it in the same lookup type as for TTL. In hardware it has the same
> protocol ID, but different offset.
> 
> Example command to add filter with ip_proto:
> $tc filter add dev eth10 ingress protocol ip flower ip_proto icmp \
>  skip_sw action mirred egress redirect dev eth0
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 17 +++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
>  2 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 49ed5fd7db10..f7c0f62fb730 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -78,7 +78,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
>  		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
>  		lkups_cnt++;
>  
> -	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
> +	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
> +		     ICE_TC_FLWR_FIELD_IP_PROTO))
>  		lkups_cnt++;

There is an issue here. In case of ipv6 it shouldn't be count as there is no
support for next header in ipv6.

Example command to reproduce the problem:
tc filter add dev eth0 ingress protocol ipv6 prio 103 flower skip_sw \
	dst_mac fa:16:3e:13:e9:a1 ip_proto udp src_port 547 dst_port 546 \
	dst_ip fe80::/64 action drop

Filter won't be added because of mismatch between filled and counted
lookups.

I will send v3 with fix.

Thanks,
Michal

>  
>  	/* are L2TPv3 options specified? */
> @@ -530,7 +531,8 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
>  	}
>  
>  	if (headers->l2_key.n_proto == htons(ETH_P_IP) &&
> -	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))) {
> +	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
> +		      ICE_TC_FLWR_FIELD_IP_PROTO))) {
>  		list[i].type = ice_proto_type_from_ipv4(inner);
>  
>  		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
> @@ -545,6 +547,13 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
>  				headers->l3_mask.ttl;
>  		}
>  
> +		if (flags & ICE_TC_FLWR_FIELD_IP_PROTO) {
> +			list[i].h_u.ipv4_hdr.protocol =
> +				headers->l3_key.ip_proto;
> +			list[i].m_u.ipv4_hdr.protocol =
> +				headers->l3_mask.ip_proto;
> +		}
> +
>  		i++;
>  	}
>  
> @@ -1515,7 +1524,11 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
>  
>  		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
>  		headers->l2_mask.n_proto = cpu_to_be16(n_proto_mask);
> +
> +		if (match.key->ip_proto)
> +			fltr->flags |= ICE_TC_FLWR_FIELD_IP_PROTO;
>  		headers->l3_key.ip_proto = match.key->ip_proto;
> +		headers->l3_mask.ip_proto = match.mask->ip_proto;
>  	}
>  
>  	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> index 65d387163a46..856f371d0687 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> @@ -34,6 +34,7 @@
>  #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
>  #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
>  #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
> +#define ICE_TC_FLWR_FIELD_IP_PROTO		BIT(30)
>  
>  #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
>  
> -- 
> 2.42.0
> 
