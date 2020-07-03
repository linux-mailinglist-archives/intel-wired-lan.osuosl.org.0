Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD028213390
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jul 2020 07:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 433BD88D4D;
	Fri,  3 Jul 2020 05:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-CnfWGyMzyJ; Fri,  3 Jul 2020 05:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44D6F88CCE;
	Fri,  3 Jul 2020 05:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C374E1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD70626426
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zImSG-8gp5GR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2020 05:35:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D871263F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:35:34 +0000 (UTC)
IronPort-SDR: wQV4DjowhIG9QpeY4SDopISnj/ezkTdn5dOyJtvfVHYFHwzh9S/4VBxvNqZzIX55vszk04O4su
 EAEEYV+dWTMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="148625234"
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="148625234"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 22:35:34 -0700
IronPort-SDR: XJLl2WqQ338qGf4pJrD9lOdjV+l62eZBuh5OWdpEXRPGXiueeZm0v6mD0TrppDZrRQ1t+feSGt
 cJbG/JjMEMkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="482255740"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jul 2020 22:35:34 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jul 2020 22:35:33 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 22:35:33 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Zhang, Qi Z" <qi.z.zhang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v3 12/14] ice: Add GTPU FDIR
 filter for AVF
Thread-Index: AQHWUMTuMeVHyhirVE+CtF83mvhUG6j1VMqA
Date: Fri, 3 Jul 2020 05:35:32 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D9404498749829@ORSMSX112.amr.corp.intel.com>
References: <20200702225805.32167-1-qi.z.zhang@intel.com>
 <20200702225805.32167-13-qi.z.zhang@intel.com>
In-Reply-To: <20200702225805.32167-13-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S48 v3 12/14] ice: Add GTPU FDIR
 filter for AVF
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
> Subject: [Intel-wired-lan] [PATCH S48 v3 12/14] ice: Add GTPU FDIR filter for
> AVF
> 
> Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
> The filter is only enabled when COMMS DDP package is downloaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.h          | 21 ++++++
>  drivers/net/ethernet/intel/ice/ice_type.h          |  4 ++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 78
> ++++++++++++++++++++++
>  3 files changed, 103 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h
> b/drivers/net/ethernet/intel/ice/ice_fdir.h
> index a46449f23720..9943c2b0f474 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> @@ -106,6 +106,24 @@ struct ice_fdir_v6 {
>  	u8 proto;
>  };
> 
> +struct ice_fdir_udp_gtp {
> +	u8 flags;
> +	u8 msg_type;
> +	__be16 rsrvd_len;
> +	__be32 teid;
> +	__be16 rsrvd_seq_nbr;
> +	u8 rsrvd_n_pdu_nbr;
> +	u8 rsrvd_next_ext_type;
> +	u8 rsvrd_ext_len;
> +	u8	pdu_type:4,
> +		spare:4;
> +	u8	ppp:1,
> +		rqi:1,
> +		qfi:6;
> +	u32 rsvrd;
> +	u8 next_ext;
> +};
> +
>  struct ice_fdir_extra {
>  	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
>  	__be16 ether_type;      /* for NON_IP_L2 */
> @@ -123,6 +141,9 @@ struct ice_fdir_fltr {
>  		struct ice_fdir_v6 v6;
>  	} ip, mask;
> 
> +	struct ice_fdir_udp_gtp gtpu_data;
> +	struct ice_fdir_udp_gtp gtpu_mask;
> +
>  	struct ice_fdir_extra ext_data;
>  	struct ice_fdir_extra ext_mask;
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index f58824834342..0df159a1619a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -170,6 +170,10 @@ enum ice_fltr_ptype {
>  	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
>  	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
>  	ICE_FLTR_PTYPE_NONF_IPV4_OTHER,
> +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP,
> +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP,
> +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP,
> +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER,
>  	ICE_FLTR_PTYPE_NON_IP_L2,
>  	ICE_FLTR_PTYPE_FRAG_IPV4,
>  	ICE_FLTR_PTYPE_NONF_IPV6_UDP,
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 62937b86a212..325ba70b0635 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -23,8 +23,19 @@
>  	(u64)(((((flow) + (tun_offs)) & ICE_FLOW_PROF_TYPE_M)) | \
>  	      (((u64)(vsi) << ICE_FLOW_PROF_VSI_S) &
> ICE_FLOW_PROF_VSI_M))
> 
> +#define GTPU_TEID_OFFSET 4
> +#define GTPU_EH_QFI_OFFSET 1
> +#define GTPU_EH_QFI_MASK 0x3F
> +
> +enum ice_fdir_tunnel_type {
> +	ICE_FDIR_TUNNEL_TYPE_NONE = 0,
> +	ICE_FDIR_TUNNEL_TYPE_GTPU,
> +	ICE_FDIR_TUNNEL_TYPE_GTPU_EH,
> +};
> +
>  struct virtchnl_fdir_fltr_conf {
>  	struct ice_fdir_fltr input;
> +	enum ice_fdir_tunnel_type ttype;
>  };
> 
>  static enum virtchnl_proto_hdr_type vc_pattern_ether[] = { @@ -86,6 +97,23
> @@ static enum virtchnl_proto_hdr_type vc_pattern_ipv6_sctp[] = {
>  	VIRTCHNL_PROTO_HDR_NONE,
>  };
> 
> +static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu[] = {
> +	VIRTCHNL_PROTO_HDR_ETH,
> +	VIRTCHNL_PROTO_HDR_IPV4,
> +	VIRTCHNL_PROTO_HDR_UDP,
> +	VIRTCHNL_PROTO_HDR_GTPU_IP,
> +	VIRTCHNL_PROTO_HDR_NONE,
> +};
> +
> +static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu_eh[] = {
> +	VIRTCHNL_PROTO_HDR_ETH,
> +	VIRTCHNL_PROTO_HDR_IPV4,
> +	VIRTCHNL_PROTO_HDR_UDP,
> +	VIRTCHNL_PROTO_HDR_GTPU_IP,
> +	VIRTCHNL_PROTO_HDR_GTPU_EH,
> +	VIRTCHNL_PROTO_HDR_NONE,
> +};
> +
>  struct virtchnl_fdir_pattern_match_item {
>  	enum virtchnl_proto_hdr_type *list;
>  	u64 input_set;
> @@ -113,6 +141,8 @@ static const struct virtchnl_fdir_pattern_match_item
> vc_fdir_pattern_comms[] = {
>  	{vc_pattern_ipv6_udp,                 0,         NULL},
>  	{vc_pattern_ipv6_sctp,                0,         NULL},
>  	{vc_pattern_ether,                    0,         NULL},
> +	{vc_pattern_ipv4_gtpu,                0,         NULL},
> +	{vc_pattern_ipv4_gtpu_eh,             0,         NULL},
>  };
> 
>  struct virtchnl_fdir_inset_map {
> @@ -137,6 +167,8 @@ static const struct virtchnl_fdir_inset_map
> fdir_inset_map[] = {
>  	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT,
> ICE_FLOW_FIELD_IDX_TCP_DST_PORT},
>  	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT,
> ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT},
>  	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT,
> ICE_FLOW_FIELD_IDX_SCTP_DST_PORT},
> +	{VIRTCHNL_PROTO_HDR_GTPU_IP_TEID,
> ICE_FLOW_FIELD_IDX_GTPU_IP_TEID},
> +	{VIRTCHNL_PROTO_HDR_GTPU_EH_QFI,
> ICE_FLOW_FIELD_IDX_GTPU_EH_QFI},
>  };
> 
>  /**
> @@ -386,6 +418,7 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
>  			 struct ice_flow_seg_info *seg)
>  {
>  	enum ice_fltr_ptype flow = conf->input.flow_type;
> +	enum ice_fdir_tunnel_type ttype = conf->ttype;
>  	struct device *dev = ice_pf_to_dev(vf->pf);
> 
>  	switch (flow) {
> @@ -406,6 +439,25 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
>  				  ICE_FLOW_SEG_HDR_IPV4 |
>  				  ICE_FLOW_SEG_HDR_IPV_OTHER);
>  		break;
> +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP:
> +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP:
> +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP:
> +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER:
> +		if (ttype == ICE_FDIR_TUNNEL_TYPE_GTPU) {
> +			ICE_FLOW_SET_HDRS(seg,
> ICE_FLOW_SEG_HDR_GTPU_IP |
> +					  ICE_FLOW_SEG_HDR_IPV4 |
> +					  ICE_FLOW_SEG_HDR_IPV_OTHER);
> +		} else if (ttype == ICE_FDIR_TUNNEL_TYPE_GTPU_EH) {
> +			ICE_FLOW_SET_HDRS(seg,
> ICE_FLOW_SEG_HDR_GTPU_EH |
> +					  ICE_FLOW_SEG_HDR_GTPU_IP |
> +					  ICE_FLOW_SEG_HDR_IPV4 |
> +					  ICE_FLOW_SEG_HDR_IPV_OTHER);
> +		} else {
> +			dev_dbg(dev, "Invalid tunnel type 0x%x for VF %d\n",
> +				flow, vf->vf_id);
> +			return -EINVAL;
> +		}
> +		break;
>  	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
>  		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_SCTP |
>  				  ICE_FLOW_SEG_HDR_IPV4 |
> @@ -803,6 +855,7 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct
> virtchnl_fdir_add *fltr,
>  		struct tcphdr *tcph;
>  		struct ethhdr *eth;
>  		struct iphdr *iph;
> +		u8 *rawh;
> 
>  		switch (hdr->type) {
>  		case VIRTCHNL_PROTO_HDR_ETH:
> @@ -895,6 +948,25 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct
> virtchnl_fdir_add *fltr,
>  				}
>  			}
>  			break;
> +		case VIRTCHNL_PROTO_HDR_GTPU_IP:
> +			rawh = (u8 *)hdr->buffer;
> +			input->flow_type =
> +				ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER;

No need to wrap, also why does this define have IPV4 twice in the name?  That is redundant.  These define names are getting WAY out of control and can the length of the defines can be reduced in length.

> +
> +			if (hdr->field_selector)
> +				input->gtpu_data.teid =
> +					*(__be32 *)(&rawh[GTPU_TEID_OFFSET]);

No need to wrap

> +			conf->ttype = ICE_FDIR_TUNNEL_TYPE_GTPU;
> +			break;
> +		case VIRTCHNL_PROTO_HDR_GTPU_EH:
> +			rawh = (u8 *)hdr->buffer;
> +
> +			if (hdr->field_selector)
> +				input->gtpu_data.qfi =
> +					rawh[GTPU_EH_QFI_OFFSET] &
> +					GTPU_EH_QFI_MASK;

This wrapping could be improved, i.e. 2 lines, maybe less and there is alignment issues.

> +			conf->ttype = ICE_FDIR_TUNNEL_TYPE_GTPU_EH;
> +			break;
>  		default:
>  			dev_dbg(dev, "Invalid header type 0x:%x for VF %d\n",
>  				hdr->type, vf->vf_id);
> @@ -1024,12 +1096,18 @@ ice_vc_fdir_comp_rules(struct
> virtchnl_fdir_fltr_conf *conf_a,
>  	struct ice_fdir_fltr *a = &conf_a->input;
>  	struct ice_fdir_fltr *b = &conf_b->input;
> 
> +	if (conf_a->ttype != conf_b->ttype)
> +		return false;
>  	if (a->flow_type != b->flow_type)
>  		return false;
>  	if (memcmp(&a->ip, &b->ip, sizeof(a->ip)))
>  		return false;
>  	if (memcmp(&a->mask, &b->mask, sizeof(a->mask)))
>  		return false;
> +	if (memcmp(&a->gtpu_data, &b->gtpu_data, sizeof(a->gtpu_data)))
> +		return false;
> +	if (memcmp(&a->gtpu_mask, &b->gtpu_mask, sizeof(a->gtpu_mask)))
> +		return false;
>  	if (memcmp(&a->ext_data, &b->ext_data, sizeof(a->ext_data)))
>  		return false;
>  	if (memcmp(&a->ext_mask, &b->ext_mask, sizeof(a->ext_mask)))
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
