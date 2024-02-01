Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A1845A1E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 15:23:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F342E83EC5;
	Thu,  1 Feb 2024 14:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F342E83EC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706797393;
	bh=0dmSwRPP3ISi7zSshWhk2uj0ByEjRy6x0xTOo9auSZc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mS5kc4ANLED8L7M2Y6+2GroIVxiuOq4lNDeZ+kJ/DfMCNJX1m+WJjUspEBMubgz9/
	 C0q3fFGZn8U9ACbaWtRBRHAV+izIRjO++i1Uk2E80hAGoxCRaXK3Lhv0di6IUgtcSA
	 CaQIZ5K8OhBzoFKXK+20MFSgK6n1Ij6UG/5prQqOf5kCJ+whyu5SKk8pSywisZNyx0
	 GZfHbpF1z2R5VsreGBmVoIAjEG6C0nAxtKOuizGuDRN0Q2X4rESyIxjJg6NAt7mLKY
	 0D3VFj6pAUW0crBsHl1UUg57IUEionQfhfkmFdbtSlKedd9dLJNoIEDG/XgivkVyQF
	 X5IBKLgEva/Ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPtWwVakV0AH; Thu,  1 Feb 2024 14:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5716F844DF;
	Thu,  1 Feb 2024 14:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5716F844DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72F221BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A10660B3F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A10660B3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUfZ27ynNfYz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 14:23:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 209BF60B27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 209BF60B27
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="401034222"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="401034222"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 06:23:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="1119948486"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="1119948486"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.35.198])
 ([10.246.35.198])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 06:22:57 -0800
Message-ID: <59b9beae-8dcf-4c51-9588-6fb4ad52dec6@linux.intel.com>
Date: Thu, 1 Feb 2024 15:22:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Takeru Hayasaka <hayatake396@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>
References: <20240201033310.1028154-1-hayatake396@gmail.com>
 <20240201033310.1028154-2-hayatake396@gmail.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240201033310.1028154-2-hayatake396@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706797384; x=1738333384;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=beLTsREvyK9FUzFZYTG52FSXQznbugUd1IC83SdrD8k=;
 b=CKwTF3zfSlFWtb5HOnsBgcaULtmniSW1COf+E1OkNxk+XGLaG8j7hHVE
 KJNU3aCDkDEvYnA57OkTHSK8PqrL3GyytTKcnWl91pwbnQDEnS19XKtpP
 8HHMeGuO21LdupklZkzL8+IF/TvuS9vx3LrIXGyI6SX4Y5B/6kgsDNAYb
 TX4XGWrutL6RajsP2YVooJMNToDKk6V7U7z1Y8L/STIibFWJQf5aIQX8T
 GtWoCd+0tRozxoRzNNVM5tzWZDhYPw+oIZeX7/iX0iJQnozuU3J4zn2fs
 rSIRWEwwkR/yRrIG/rO4SzrR1uDRZLbdHdCcq3UZq9j7XBmB5Yxr2X0V7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CKwTF3zf
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/2] ice: Implement RSS
 settings for GTP using ethtool
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
Cc: linux-doc@vger.kernel.org, vladimir.oltean@nxp.com,
 linux-kernel@vger.kernel.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 01.02.2024 04:33, Takeru Hayasaka wrote:
> Following the addition of new GTP RSS hash options to ethtool.h, this patch
> implements the corresponding RSS settings for GTP packets in the Intel ice
> driver. It enables users to configure RSS for GTP-U and GTP-C traffic over IPv4
> and IPv6, utilizing the newly defined hash options.
> 
> The implementation covers the handling of gtpu(4|6), gtpc(4|6), gtpc(4|6)t,
> gtpu(4|6)e, gtpu(4|6)u, and gtpu(4|6)d traffic, providing enhanced load
> distribution for GTP traffic across multiple processing units.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> ---
>  .../device_drivers/ethernet/intel/ice.rst     | 21 ++++-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 82 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h     | 31 +++++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 37 +++++++++
>  4 files changed, 162 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> index 5038e54586af..934752f675ba 100644
> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> @@ -368,15 +368,28 @@ more options for Receive Side Scaling (RSS) hash byte configuration.
>    # ethtool -N <ethX> rx-flow-hash <type> <option>
>  
>    Where <type> is:
> -    tcp4  signifying TCP over IPv4
> -    udp4  signifying UDP over IPv4
> -    tcp6  signifying TCP over IPv6
> -    udp6  signifying UDP over IPv6
> +    tcp4    signifying TCP over IPv4
> +    udp4    signifying UDP over IPv4
> +    gtpc4   signifying GTP-C over IPv4
> +    gtpc4t  signifying GTP-C (include TEID) over IPv4
> +    gtpu4   signifying GTP-U over IPV4
> +    gtpu4e  signifying GTP-U and Extension Header over IPV4
> +    gtpu4u  signifying GTP-U PSC Uplink over IPV4
> +    gtpu4d  signifying GTP-U PSC Downlink over IPV4
> +    tcp6    signifying TCP over IPv6
> +    udp6    signifying UDP over IPv6
> +    gtpc6   signifying GTP-C over IPv6
> +    gtpc6t  signifying GTP-C (include TEID) over IPv6
> +    gtpu6   signifying GTP-U over IPV6
> +    gtpu6e  signifying GTP-U and Extension Header over IPV6
> +    gtpu6u  signifying GTP-U PSC Uplink over IPV6
> +    gtpu6d  signifying GTP-U PSC Downlink over IPV6
>    And <option> is one or more of:
>      s     Hash on the IP source address of the Rx packet.
>      d     Hash on the IP destination address of the Rx packet.
>      f     Hash on bytes 0 and 1 of the Layer 4 header of the Rx packet.
>      n     Hash on bytes 2 and 3 of the Layer 4 header of the Rx packet.
> +    e     Hash on GTP Packet on TEID (4bytes) of the Rx packet.
>  
>  
>  Accelerated Receive Flow Steering (aRFS)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index a19b06f18e40..d0e05032f464 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2486,6 +2486,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
>  	case SCTP_V4_FLOW:
>  		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
>  		break;
> +	case GTPU_V4_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4;
> +		break;
> +	case GTPC_V4_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4;
> +		break;
> +	case GTPC_TEID_V4_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4;
> +		break;
> +	case GTPU_EH_V4_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV4;
> +		break;
> +	case GTPU_UL_V4_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV4;
> +		break;
> +	case GTPU_DL_V4_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV4;
> +		break;
>  	case TCP_V6_FLOW:
>  		hdrs |= ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6;
>  		break;
> @@ -2495,6 +2513,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
>  	case SCTP_V6_FLOW:
>  		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
>  		break;
> +	case GTPU_V6_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6;
> +		break;
> +	case GTPC_V6_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6;
> +		break;
> +	case GTPC_TEID_V6_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6;
> +		break;
> +	case GTPU_EH_V6_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV6;
> +		break;
> +	case GTPU_UL_V6_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV6;
> +		break;
> +	case GTPU_DL_V6_FLOW:
> +		hdrs |= ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV6;
> +		break;
>  	default:
>  		break;
>  	}
> @@ -2518,6 +2554,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
>  		case TCP_V4_FLOW:
>  		case UDP_V4_FLOW:
>  		case SCTP_V4_FLOW:
> +		case GTPU_V4_FLOW:
> +		case GTPC_V4_FLOW:
> +		case GTPC_TEID_V4_FLOW:
> +		case GTPU_EH_V4_FLOW:
> +		case GTPU_UL_V4_FLOW:
> +		case GTPU_DL_V4_FLOW:
>  			if (nfc->data & RXH_IP_SRC)
>  				hfld |= ICE_FLOW_HASH_FLD_IPV4_SA;
>  			if (nfc->data & RXH_IP_DST)
> @@ -2526,6 +2568,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
>  		case TCP_V6_FLOW:
>  		case UDP_V6_FLOW:
>  		case SCTP_V6_FLOW:
> +		case GTPU_V6_FLOW:
> +		case GTPC_V6_FLOW:
> +		case GTPC_TEID_V6_FLOW:
> +		case GTPU_EH_V6_FLOW:
> +		case GTPU_UL_V6_FLOW:
> +		case GTPU_DL_V6_FLOW:
>  			if (nfc->data & RXH_IP_SRC)
>  				hfld |= ICE_FLOW_HASH_FLD_IPV6_SA;
>  			if (nfc->data & RXH_IP_DST)
> @@ -2564,6 +2612,33 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
>  		}
>  	}
>  
> +	if (nfc->data & RXH_GTP_TEID) {
> +		switch (nfc->flow_type) {
> +		case GTPC_TEID_V4_FLOW:
> +		case GTPC_TEID_V6_FLOW:
> +			hfld |= ICE_FLOW_HASH_FLD_GTPC_TEID;
> +			break;
> +		case GTPU_V4_FLOW:
> +		case GTPU_V6_FLOW:
> +			hfld |= ICE_FLOW_HASH_FLD_GTPU_IP_TEID;
> +			break;
> +		case GTPU_EH_V4_FLOW:
> +		case GTPU_EH_V6_FLOW:
> +			hfld |= ICE_FLOW_HASH_FLD_GTPU_EH_TEID;
> +			break;
> +		case GTPU_UL_V4_FLOW:
> +		case GTPU_UL_V6_FLOW:
> +			hfld |= ICE_FLOW_HASH_FLD_GTPU_UP_TEID;
> +			break;
> +		case GTPU_DL_V4_FLOW:
> +		case GTPU_DL_V6_FLOW:
> +			hfld |= ICE_FLOW_HASH_FLD_GTPU_DWN_TEID;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
>  	return hfld;
>  }
>  
> @@ -2676,6 +2751,13 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
>  	    hash_flds & ICE_FLOW_HASH_FLD_UDP_DST_PORT ||
>  	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)
>  		nfc->data |= (u64)RXH_L4_B_2_3;
> +
> +	if (hash_flds & ICE_FLOW_HASH_FLD_GTPC_TEID ||
> +	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_IP_TEID ||
> +	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_EH_TEID ||
> +	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
> +	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
> +		nfc->data |= (u64)RXH_GTP_TEID;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
> index ff82915ab497..2fd2e0cb483d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> @@ -37,13 +37,13 @@
>  #define ICE_HASH_SCTP_IPV4	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_SCTP_PORT)
>  #define ICE_HASH_SCTP_IPV6	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_SCTP_PORT)
>  
> -#define ICE_FLOW_HASH_GTP_TEID \
> +#define ICE_FLOW_HASH_GTP_C_TEID \
>  	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID))
>  
> -#define ICE_FLOW_HASH_GTP_IPV4_TEID \
> -	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_TEID)
> -#define ICE_FLOW_HASH_GTP_IPV6_TEID \
> -	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_TEID)
> +#define ICE_FLOW_HASH_GTP_C_IPV4_TEID \
> +	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_C_TEID)
> +#define ICE_FLOW_HASH_GTP_C_IPV6_TEID \
> +	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_C_TEID)
>  
>  #define ICE_FLOW_HASH_GTP_U_TEID \
>  	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID))
> @@ -66,6 +66,20 @@
>  	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_EH_TEID | \
>  	 ICE_FLOW_HASH_GTP_U_EH_QFI)
>  
> +#define ICE_FLOW_HASH_GTP_U_UP \
> +	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_UP_TEID))
> +#define ICE_FLOW_HASH_GTP_U_DWN \
> +	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID))
> +
> +#define ICE_FLOW_HASH_GTP_U_IPV4_UP \
> +	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_UP)
> +#define ICE_FLOW_HASH_GTP_U_IPV6_UP \
> +	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_UP)
> +#define ICE_FLOW_HASH_GTP_U_IPV4_DWN \
> +	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_DWN)
> +#define ICE_FLOW_HASH_GTP_U_IPV6_DWN \
> +	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_DWN)
> +
>  #define ICE_FLOW_HASH_PPPOE_SESS_ID \
>  	(BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID))
>  
> @@ -242,6 +256,13 @@ enum ice_flow_field {
>  #define ICE_FLOW_HASH_FLD_SCTP_DST_PORT	\
>  	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
>  
> +#define ICE_FLOW_HASH_FLD_GTPC_TEID	BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_IP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_EH_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_EH_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_UP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_UP_TEID)
> +#define ICE_FLOW_HASH_FLD_GTPU_DWN_TEID \
> +	BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID)
> +
>  /* Flow headers and fields for AVF support */
>  enum ice_flow_avf_hdr_field {
>  	/* Values 0 - 28 are reserved for future use */
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 9be724291ef8..3c4282019570 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1618,6 +1618,25 @@ static const struct ice_rss_hash_cfg default_rss_cfgs[] = {
>  	 */
>  	{ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4,
>  		ICE_HASH_SCTP_IPV4, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpc4 with input set IPv4 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4,
> +		ICE_FLOW_HASH_IPV4, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpc4t with input set IPv4 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4,
> +		ICE_FLOW_HASH_GTP_C_IPV4_TEID, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu4 with input set IPv4 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4,
> +		ICE_FLOW_HASH_GTP_U_IPV4_TEID, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu4e with input set IPv4 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV4,
> +		ICE_FLOW_HASH_GTP_U_IPV4_EH, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu4u with input set IPv4 src/dst */
> +	{ ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV4,
> +		ICE_FLOW_HASH_GTP_U_IPV4_UP, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu4d with input set IPv4 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV4,
> +		ICE_FLOW_HASH_GTP_U_IPV4_DWN, ICE_RSS_OUTER_HEADERS, false},
> +
>  	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
>  	{ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6,
>  				ICE_HASH_TCP_IPV6,  ICE_RSS_ANY_HEADERS, false},
> @@ -1632,6 +1651,24 @@ static const struct ice_rss_hash_cfg default_rss_cfgs[] = {
>  	/* configure RSS for IPSEC ESP SPI with input set MAC_IPV4_SPI */
>  	{ICE_FLOW_SEG_HDR_ESP,
>  		ICE_FLOW_HASH_ESP_SPI, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpc6 with input set IPv6 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6,
> +		ICE_FLOW_HASH_IPV6, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpc6t with input set IPv6 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6,
> +		ICE_FLOW_HASH_GTP_C_IPV6_TEID, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu6 with input set IPv6 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6,
> +		ICE_FLOW_HASH_GTP_U_IPV6_TEID, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu6e with input set IPv6 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV6,
> +		ICE_FLOW_HASH_GTP_U_IPV6_EH, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu6u with input set IPv6 src/dst */
> +	{ ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV6,
> +		ICE_FLOW_HASH_GTP_U_IPV6_UP, ICE_RSS_OUTER_HEADERS, false},
> +	/* configure RSS for gtpu6d with input set IPv6 src/dst */
> +	{ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV6,
> +		ICE_FLOW_HASH_GTP_U_IPV6_DWN, ICE_RSS_OUTER_HEADERS, false},
>  };
>  
>  /**
