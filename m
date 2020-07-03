Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF708213333
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jul 2020 07:02:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 663F187B5F;
	Fri,  3 Jul 2020 05:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBR999OwP_r6; Fri,  3 Jul 2020 05:02:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B922587B5A;
	Fri,  3 Jul 2020 05:02:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F055E1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E962487B58
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3HmZuVIF-A6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2020 05:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7D55587B50
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:02:33 +0000 (UTC)
IronPort-SDR: SOJrsknAOTo84pwePlIGK3tZ9gRf6cP2TTkRq/pxoadTDDAwPQF9O/FumtcxajFLzIH5mf+qdU
 4/YnoYGX1iDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="147101294"
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="147101294"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 22:02:32 -0700
IronPort-SDR: XIa5UvKiqM4JOGTnMd8IO5wR9GD5UF+cq3GcCtEF106IpPvKyVzJJ6+/uA4V833L/Fuk91eMj4
 S0zp/Bk4kc6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="282178053"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga006.jf.intel.com with ESMTP; 02 Jul 2020 22:02:32 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jul 2020 22:02:32 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.77]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 22:02:31 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Zhang, Qi Z" <qi.z.zhang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v3 06/14] ice: enhanced IPV4 and
 IPV6 flow filter
Thread-Index: AQHWUMT4Ex3EoF4qdUW+Zwe4VvSM9Kj1TGSw
Date: Fri, 3 Jul 2020 05:02:30 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D9404498749727@ORSMSX112.amr.corp.intel.com>
References: <20200702225805.32167-1-qi.z.zhang@intel.com>
 <20200702225805.32167-7-qi.z.zhang@intel.com>
In-Reply-To: <20200702225805.32167-7-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S48 v3 06/14] ice: enhanced IPV4 and
 IPV6 flow filter
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 2, 2020 15:58
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v3 06/14] ice: enhanced IPV4 and IPV6
> flow filter
> 
> Seperate IPv4 and IPv6 ptype bit mask table into 2 tables:
> Without or without L4 protocols.
> 
> When a flow filter without any l4 type is specified, the
> ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user want to
> create a IP rule target for all IP packet or just IP packet without l4 header.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 113
> ++++++++++++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_flow.h |   4 ++
>  2 files changed, 113 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c
> b/drivers/net/ethernet/intel/ice/ice_flow.c
> index ba11b9e98f85..f7eeb31f8b22 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> @@ -156,7 +156,9 @@ static const u32 ice_ptypes_macvlan_il[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> 
> -/* Packet types for packets with an Outer/First/Single IPv4 header */
> +/* Packet types for packets with an Outer/First/Single IPv4 header,
> +does NOT
> + * include IPV4 other PTYPEs
> + */
>  static const u32 ice_ptypes_ipv4_ofos[] = {
>  	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000155, 0x00000000, 0x00000000, @@ -166,6
> +168,18 @@ static const u32 ice_ptypes_ipv4_ofos[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
> +/* Packet types for packets with an Outer/First/Single IPv4 header,
> +includes
> + * IPV4 other PTYPEs
> + */
> +static const u32 ice_ptypes_ipv4_ofos_all[] = {
> +	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000155, 0x00000000, 0x00000000,
> +	0x00000000, 0x000FC000, 0x83E0F800, 0x00000101,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  }; @@ -182,7
> +196,9 @@ static const u32 ice_ptypes_ipv4_il[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> 
> -/* Packet types for packets with an Outer/First/Single IPv6 header */
> +/* Packet types for packets with an Outer/First/Single IPv6 header,
> +does NOT
> + * include IVP6 other PTYPEs
> + */
>  static const u32 ice_ptypes_ipv6_ofos[] = {
>  	0x00000000, 0x00000000, 0x77000000, 0x10002000,
>  	0x00000000, 0x000002AA, 0x00000000, 0x00000000, @@ -192,6
> +208,18 @@ static const u32 ice_ptypes_ipv6_ofos[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +};
> +
> +/* Packet types for packets with an Outer/First/Single IPv6 header,
> +includes
> + * IPV6 other PTYPEs
> + */
> +static const u32 ice_ptypes_ipv6_ofos_all[] = {
> +	0x00000000, 0x00000000, 0x77000000, 0x10002000,
> +	0x00000000, 0x000002AA, 0x00000000, 0x00000000,
> +	0x00080F00, 0x03F00000, 0x7C1F0000, 0x00000206,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  }; @@ -208,6
> +236,54 @@ static const u32 ice_ptypes_ipv6_il[] = {
>  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> 
> +/* Packet types for packets with an Outer/First/Single IPv4 header - no
> +L4 */ static const u32 ice_ipv4_ofos_no_l4[] = {
> +	0x10C00000, 0x04000800, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> +
> +/* Packet types for packets with an Innermost/Last IPv4 header - no L4
> +*/ static const u32 ice_ipv4_il_no_l4[] = {
> +	0x60000000, 0x18043008, 0x80000002, 0x6010c021,
> +	0x00000008, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> +
> +/* Packet types for packets with an Outer/First/Single IPv6 header - no
> +L4 */ static const u32 ice_ipv6_ofos_no_l4[] = {
> +	0x00000000, 0x00000000, 0x43000000, 0x10002000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> +
> +/* Packet types for packets with an Innermost/Last IPv6 header - no L4
> +*/ static const u32 ice_ipv6_il_no_l4[] = {
> +	0x00000000, 0x02180430, 0x0000010c, 0x086010c0,
> +	0x00000430, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> +
>  /* Packet types for packets with an Outermost/First ARP header */  static
> const u32 ice_ptypes_arp_of[] = {
>  	0x00000800, 0x00000000, 0x00000000, 0x00000000, @@ -529,6 +605,9
> @@ struct ice_flow_prof_params {
>  #define ICE_FLOW_SEG_HDRS_L4_MASK	\
>  	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP |
> ICE_FLOW_SEG_HDR_UDP | \
>  	 ICE_FLOW_SEG_HDR_SCTP)
> +/* mask for L4 protocols that are NOT part of IPV4/6 OTHER PTYPE groups
> */
> +#define ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER	\
> +	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP |
> ICE_FLOW_SEG_HDR_SCTP)
> 
>  /**
>   * ice_flow_val_hdrs - validates packet segments for valid protocol headers
> @@ -645,11 +724,37 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params
> *params)
>  				   ICE_FLOW_PTYPE_MAX);
>  		}
> 
> -		if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
> +		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
> +		    (hdrs & ICE_FLOW_SEG_HDR_IPV_OTHER)) {
> +			src = i ?
> +				(const unsigned long *)ice_ptypes_ipv4_il :
> +				(const unsigned long *)ice_ptypes_ipv4_ofos_all;
 
More wrapping issues in the above three lines

> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
> +		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV6) &&
> +			   (hdrs & ICE_FLOW_SEG_HDR_IPV_OTHER)) {
> +			src = i ?
> +				(const unsigned long *)ice_ptypes_ipv6_il :
> +				(const unsigned long *)ice_ptypes_ipv6_ofos_all;

Here as well

> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
> +		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
> +			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER))
> {
> +			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
> +				(const unsigned long *)ice_ipv4_il_no_l4;
> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
> +		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
>  			src = !i ? (const unsigned long *)ice_ptypes_ipv4_ofos :
>  				(const unsigned long *)ice_ptypes_ipv4_il;
>  			bitmap_and(params->ptypes, params->ptypes, src,
>  				   ICE_FLOW_PTYPE_MAX);
> +		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV6) &&
> +			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER))
> {
> +			src = !i ? (const unsigned long *)ice_ipv6_ofos_no_l4 :
> +				(const unsigned long *)ice_ipv6_il_no_l4;
> +			bitmap_and(params->ptypes, params->ptypes, src,
> +				   ICE_FLOW_PTYPE_MAX);
>  		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV6) {
>  			src = !i ? (const unsigned long *)ice_ptypes_ipv6_ofos :
>  				(const unsigned long *)ice_ptypes_ipv6_il; @@ -
> 1736,7 +1841,7 @@ ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs,
> u64 hash_fields,
>  	ICE_FLOW_SET_HDRS(segs, flow_hdr);
> 
>  	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
> -	    ~ICE_FLOW_RSS_HDRS_INNER_MASK)
> +	    ~ICE_FLOW_RSS_HDRS_INNER_MASK &
> ~ICE_FLOW_SEG_HDR_IPV_OTHER)
>  		return ICE_ERR_PARAM;
> 
>  	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS); diff --
> git a/drivers/net/ethernet/intel/ice/ice_flow.h
> b/drivers/net/ethernet/intel/ice/ice_flow.h
> index 04690669dfd7..68d1ec7cf8fd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> @@ -135,6 +135,10 @@ enum ice_flow_seg_hdr {
>  	ICE_FLOW_SEG_HDR_ESP		= 0x00100000,
>  	ICE_FLOW_SEG_HDR_AH		= 0x00200000,
>  	ICE_FLOW_SEG_HDR_NAT_T_ESP	= 0x00400000,
> +	/* The following is an additive bit for ICE_FLOW_SEG_HDR_IPV4 and
> +	 * ICE_FLOW_SEG_HDR_IPV6 which include the IPV4 other PTYPEs
> +	 */
> +	ICE_FLOW_SEG_HDR_IPV_OTHER	= 0x20000000,
>  };
> 
>  /* These segements all have the same PTYPES, but are otherwise distinguished
> by
> --
> 2.13.6
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
