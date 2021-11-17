Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32C24543C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 10:32:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CCAB40526;
	Wed, 17 Nov 2021 09:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MK7UbP9082Su; Wed, 17 Nov 2021 09:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 057E840112;
	Wed, 17 Nov 2021 09:32:41 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61A1F1BF3C9
 for <intel-wired-lan@osuosl.org>; Wed, 17 Nov 2021 09:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D92640935
 for <intel-wired-lan@osuosl.org>; Wed, 17 Nov 2021 09:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwWuaBBzXaZl for <intel-wired-lan@osuosl.org>;
 Wed, 17 Nov 2021 09:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58FF740934
 for <intel-wired-lan@osuosl.org>; Wed, 17 Nov 2021 09:32:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="320128485"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="320128485"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 01:32:34 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="494846666"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 01:32:33 -0800
Date: Wed, 17 Nov 2021 00:35:09 -0500
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Michal Swiatkowski <michal.swiatkowski@intel.com>
Message-ID: <YZSUjeTxXbNta3lm@localhost.localdomain>
References: <20211116093615.10740-1-michal.swiatkowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116093615.10740-1-michal.swiatkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix choosing udp header type
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 16, 2021 at 10:36:15AM +0100, Michal Swiatkowski wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> In tunnels packet there can be two UDP headers:
> - outer which for hw should be mark as ICE_UDP_OF
> - inner which for hw should be mark as ICE_UDP_ILOS or as ICE_TCP_IL if
>   inner header is of TCP type
> 
> In none tunnels packet header can be:
> - UDP, which for hw should be mark as ICE_UDP_ILOS
> - TCP, which for hw should be mark as ICE_TCP_IL
> 
> Change incorrect ICE_UDP_OF for none tunnel packets to ICE_UDP_ILOS.
> ICE_UDP_OF is incorrect for none tunnel packets and setting it leads to
> error from hw while adding this kind of recipe.
> 
> In summary, for tunnel outer port type should always be set to
> ICE_UDP_OF, for none tunnel outer and tunnel inner it should always be
> set to ICE_UDP_ILOS.
> 
> Fixes: 9e300987d4a81 ("ice: VXLAN and Geneve TC support")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 26 ++++++++-------------
>  1 file changed, 10 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 4e1dac813339..29fe359a5598 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -78,20 +78,13 @@ ice_proto_type_from_ipv6(bool inner)
>  }
>  
>  static enum ice_protocol_type
> -ice_proto_type_from_l4_port(bool inner, u16 ip_proto)
> +ice_proto_type_from_l4_port(u16 ip_proto)
>  {
> -	if (inner) {
> -		switch (ip_proto) {
> -		case IPPROTO_UDP:
> -			return ICE_UDP_ILOS;
> -		}
> -	} else {
> -		switch (ip_proto) {
> -		case IPPROTO_TCP:
> -			return ICE_TCP_IL;
> -		case IPPROTO_UDP:
> -			return ICE_UDP_OF;
> -		}
> +	switch (ip_proto) {
> +	case IPPROTO_TCP:
> +		return ICE_TCP_IL;
> +	case IPPROTO_UDP:
> +		return ICE_UDP_ILOS;
>  	}
>  
>  	return 0;
> @@ -194,8 +187,9 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
>  		i++;
>  	}
>  
> -	if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT) {
> -		list[i].type = ice_proto_type_from_l4_port(false, hdr->l3_key.ip_proto);
> +	if ((flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT) &&
> +	    hdr->l3_key.ip_proto == IPPROTO_UDP) {
> +		list[i].type = ICE_UDP_OF;
>  		list[i].h_u.l4_hdr.dst_port = hdr->l4_key.dst_port;
>  		list[i].m_u.l4_hdr.dst_port = hdr->l4_mask.dst_port;
>  		i++;
> @@ -320,7 +314,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
>  		     ICE_TC_FLWR_FIELD_SRC_L4_PORT)) {
>  		struct ice_tc_l4_hdr *l4_key, *l4_mask;
>  
> -		list[i].type = ice_proto_type_from_l4_port(inner, headers->l3_key.ip_proto);
> +		list[i].type = ice_proto_type_from_l4_port(headers->l3_key.ip_proto);
>  		l4_key = &headers->l4_key;
>  		l4_mask = &headers->l4_mask;
>  
> -- 
> 2.31.1
> 

Please ignore it, I sent it from wrong mail, sorry.
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
