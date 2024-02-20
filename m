Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 943E185BC0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:27:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 448334157C;
	Tue, 20 Feb 2024 12:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYyMlQKK0S6j; Tue, 20 Feb 2024 12:27:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 753FD4155F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708432027;
	bh=TjQubUdQb2j/nbGPDh5xyVPY9RD9HC68K485fQY6RwU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QXyMn1I0AY64Z2xuA3knmVCxb2H2bNDs90BkL8FupfbbL2QgVcbXRKlMvi/3VAOZ1
	 JBaBhQKjUjR4XY3Myycnkd6nCiRBclnPEdkWdAfOirHiuXcH0Wo+inYP9l+XpJVlXE
	 WF3F1pLBL1mgsrRTiDVxCQN9LMsSeP2LZpdjLav5VVDH2MYw9bLSx9an1oEz3wIKgz
	 Ev+pygH+g29+7eRXR9G4CgBxUm07uZ9s2Z9EAniur+EWTdz4anpItTBHI6Gwfzksu6
	 F8Zw3sUZcuQdH5v9662yi1VuVmuYfgKCVFPa00bBT7DyRA2F2ugII8H6VpU0Kp3T3m
	 hS4IbY6WwmqRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 753FD4155F;
	Tue, 20 Feb 2024 12:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0F01BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65F0E60710
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8-aEWckH8T1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:27:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25D746068B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25D746068B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25D746068B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:27:02 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5C16E61E5FE01;
 Tue, 20 Feb 2024 13:26:35 +0100 (CET)
Message-ID: <dc03726a-d59b-47a1-b394-7a435f8aee1a@molgen.mpg.de>
Date: Tue, 20 Feb 2024 13:26:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
 <20240220105950.6814-3-michal.swiatkowski@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240220105950.6814-3-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next v1 2/2] ice: tc: allow ip_proto
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 sridhar.samudrala@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Michal,


Thank you for the patch. Some minor nits from my side.

Am 20.02.24 um 11:59 schrieb Michal Swiatkowski:
> Add new matching type. There is no encap version of ip_proto field.

Excuse my ignorance, I do not understand the second sentence. Is an 
encap version going to be added?

> Use it in the same lookup type as for TTL. In hardware it have the same

s/have/has/

> protocol ID, but different offset.
> 
> Example command to add filter with ip_proto:
> $tc filter add dev eth10 ingress protocol ip flower ip_proto icmp \
>   skip_sw action mirred egress redirect dev eth0
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_tc_lib.c | 17 +++++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
>   2 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 49ed5fd7db10..f7c0f62fb730 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -78,7 +78,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
>   		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
>   		lkups_cnt++;
>   
> -	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
> +	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
> +		     ICE_TC_FLWR_FIELD_IP_PROTO))

Should this be sorted? (Also below).

>   		lkups_cnt++;
>   
>   	/* are L2TPv3 options specified? */
> @@ -530,7 +531,8 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
>   	}
>   
>   	if (headers->l2_key.n_proto == htons(ETH_P_IP) &&
> -	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))) {
> +	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
> +		      ICE_TC_FLWR_FIELD_IP_PROTO))) {
>   		list[i].type = ice_proto_type_from_ipv4(inner);
>   
>   		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
> @@ -545,6 +547,13 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
>   				headers->l3_mask.ttl;
>   		}
>   
> +		if (flags & ICE_TC_FLWR_FIELD_IP_PROTO) {
> +			list[i].h_u.ipv4_hdr.protocol =
> +				headers->l3_key.ip_proto;
> +			list[i].m_u.ipv4_hdr.protocol =
> +				headers->l3_mask.ip_proto;

(Strange to break the line each time, but seems to be the surrounding 
coding style.)

> +		}
> +
>   		i++;
>   	}
>   
> @@ -1515,7 +1524,11 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
>   
>   		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
>   		headers->l2_mask.n_proto = cpu_to_be16(n_proto_mask);
> +
> +		if (match.key->ip_proto)
> +			fltr->flags |= ICE_TC_FLWR_FIELD_IP_PROTO;
>   		headers->l3_key.ip_proto = match.key->ip_proto;
> +		headers->l3_mask.ip_proto = match.mask->ip_proto;
>   	}
>   
>   	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> index 65d387163a46..856f371d0687 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> @@ -34,6 +34,7 @@
>   #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
>   #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
>   #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
> +#define ICE_TC_FLWR_FIELD_IP_PROTO		BIT(30)
>   
>   #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
>   


Kind regards,

Paul
