Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA4821429D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jul 2020 03:49:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20FE286749;
	Sat,  4 Jul 2020 01:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ht00U7oY1AG8; Sat,  4 Jul 2020 01:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54881883F4;
	Sat,  4 Jul 2020 01:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 114CC1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 01:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0BA618942C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 01:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tC6F8qwQLGm4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jul 2020 01:48:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E473E89427
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 01:48:58 +0000 (UTC)
IronPort-SDR: PU09Zj1AclB2txMwLGYDpF2zUk3BOWgjiMNfAbmyUxbroXL6LQP+xoEeI38i0rsrA79nIJ6hTt
 yyDcAq3AwWZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9671"; a="208733487"
X-IronPort-AV: E=Sophos;i="5.75,309,1589266800"; d="scan'208";a="208733487"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 18:48:58 -0700
IronPort-SDR: Dj8nZtjBnyJBFjePf2ORi4kCN3Z82UwMexP+D8vMwSX9qzI0Q0rFxLHJs0vBta2BIj2P7BZ/o1
 dV+WB+Q/h0Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,309,1589266800"; d="scan'208";a="356896410"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 03 Jul 2020 18:48:58 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 3 Jul 2020 18:48:57 -0700
Received: from shsmsx104.ccr.corp.intel.com (10.239.4.70) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 3 Jul 2020 18:48:57 -0700
Received: from shsmsx103.ccr.corp.intel.com ([169.254.4.89]) by
 SHSMSX104.ccr.corp.intel.com ([10.239.4.70]) with mapi id 14.03.0439.000;
 Sat, 4 Jul 2020 09:48:53 +0800
From: "Zhang, Qi Z" <qi.z.zhang@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v3 12/14] ice: Add GTPU FDIR
 filter for AVF
Thread-Index: AQHWUMPEObLE/RNMXUCS7W6CGepxc6j0z+UAgAHXKcA=
Date: Sat, 4 Jul 2020 01:48:53 +0000
Message-ID: <039ED4275CED7440929022BC67E706115484BF12@SHSMSX103.ccr.corp.intel.com>
References: <20200702225805.32167-1-qi.z.zhang@intel.com>
 <20200702225805.32167-13-qi.z.zhang@intel.com>
 <61CC2BC414934749BD9F5BF3D5D9404498749829@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D9404498749829@ORSMSX112.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Sent: Friday, July 3, 2020 1:36 PM
> To: Zhang, Qi Z <qi.z.zhang@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH S48 v3 12/14] ice: Add GTPU FDIR filter
> for AVF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Qi Zhang
> > Sent: Thursday, July 2, 2020 15:58
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [PATCH S48 v3 12/14] ice: Add GTPU FDIR
> > filter for AVF
> >
> > Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
> > The filter is only enabled when COMMS DDP package is downloaded.
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.h          | 21 ++++++
> >  drivers/net/ethernet/intel/ice/ice_type.h          |  4 ++
> >  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 78
> > ++++++++++++++++++++++
> >  3 files changed, 103 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h
> > b/drivers/net/ethernet/intel/ice/ice_fdir.h
> > index a46449f23720..9943c2b0f474 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> > @@ -106,6 +106,24 @@ struct ice_fdir_v6 {
> >  	u8 proto;
> >  };
> >
> > +struct ice_fdir_udp_gtp {
> > +	u8 flags;
> > +	u8 msg_type;
> > +	__be16 rsrvd_len;
> > +	__be32 teid;
> > +	__be16 rsrvd_seq_nbr;
> > +	u8 rsrvd_n_pdu_nbr;
> > +	u8 rsrvd_next_ext_type;
> > +	u8 rsvrd_ext_len;
> > +	u8	pdu_type:4,
> > +		spare:4;
> > +	u8	ppp:1,
> > +		rqi:1,
> > +		qfi:6;
> > +	u32 rsvrd;
> > +	u8 next_ext;
> > +};
> > +
> >  struct ice_fdir_extra {
> >  	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
> >  	__be16 ether_type;      /* for NON_IP_L2 */
> > @@ -123,6 +141,9 @@ struct ice_fdir_fltr {
> >  		struct ice_fdir_v6 v6;
> >  	} ip, mask;
> >
> > +	struct ice_fdir_udp_gtp gtpu_data;
> > +	struct ice_fdir_udp_gtp gtpu_mask;
> > +
> >  	struct ice_fdir_extra ext_data;
> >  	struct ice_fdir_extra ext_mask;
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> > b/drivers/net/ethernet/intel/ice/ice_type.h
> > index f58824834342..0df159a1619a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> > @@ -170,6 +170,10 @@ enum ice_fltr_ptype {
> >  	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
> >  	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
> >  	ICE_FLTR_PTYPE_NONF_IPV4_OTHER,
> > +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP,
> > +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP,
> > +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP,
> > +	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER,
> >  	ICE_FLTR_PTYPE_NON_IP_L2,
> >  	ICE_FLTR_PTYPE_FRAG_IPV4,
> >  	ICE_FLTR_PTYPE_NONF_IPV6_UDP,
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > index 62937b86a212..325ba70b0635 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > @@ -23,8 +23,19 @@
> >  	(u64)(((((flow) + (tun_offs)) & ICE_FLOW_PROF_TYPE_M)) | \
> >  	      (((u64)(vsi) << ICE_FLOW_PROF_VSI_S) &
> > ICE_FLOW_PROF_VSI_M))
> >
> > +#define GTPU_TEID_OFFSET 4
> > +#define GTPU_EH_QFI_OFFSET 1
> > +#define GTPU_EH_QFI_MASK 0x3F
> > +
> > +enum ice_fdir_tunnel_type {
> > +	ICE_FDIR_TUNNEL_TYPE_NONE = 0,
> > +	ICE_FDIR_TUNNEL_TYPE_GTPU,
> > +	ICE_FDIR_TUNNEL_TYPE_GTPU_EH,
> > +};
> > +
> >  struct virtchnl_fdir_fltr_conf {
> >  	struct ice_fdir_fltr input;
> > +	enum ice_fdir_tunnel_type ttype;
> >  };
> >
> >  static enum virtchnl_proto_hdr_type vc_pattern_ether[] = { @@ -86,6
> > +97,23 @@ static enum virtchnl_proto_hdr_type vc_pattern_ipv6_sctp[]
> = {
> >  	VIRTCHNL_PROTO_HDR_NONE,
> >  };
> >
> > +static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu[] = {
> > +	VIRTCHNL_PROTO_HDR_ETH,
> > +	VIRTCHNL_PROTO_HDR_IPV4,
> > +	VIRTCHNL_PROTO_HDR_UDP,
> > +	VIRTCHNL_PROTO_HDR_GTPU_IP,
> > +	VIRTCHNL_PROTO_HDR_NONE,
> > +};
> > +
> > +static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu_eh[] = {
> > +	VIRTCHNL_PROTO_HDR_ETH,
> > +	VIRTCHNL_PROTO_HDR_IPV4,
> > +	VIRTCHNL_PROTO_HDR_UDP,
> > +	VIRTCHNL_PROTO_HDR_GTPU_IP,
> > +	VIRTCHNL_PROTO_HDR_GTPU_EH,
> > +	VIRTCHNL_PROTO_HDR_NONE,
> > +};
> > +
> >  struct virtchnl_fdir_pattern_match_item {
> >  	enum virtchnl_proto_hdr_type *list;
> >  	u64 input_set;
> > @@ -113,6 +141,8 @@ static const struct
> > virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
> >  	{vc_pattern_ipv6_udp,                 0,         NULL},
> >  	{vc_pattern_ipv6_sctp,                0,         NULL},
> >  	{vc_pattern_ether,                    0,         NULL},
> > +	{vc_pattern_ipv4_gtpu,                0,         NULL},
> > +	{vc_pattern_ipv4_gtpu_eh,             0,         NULL},
> >  };
> >
> >  struct virtchnl_fdir_inset_map {
> > @@ -137,6 +167,8 @@ static const struct virtchnl_fdir_inset_map
> > fdir_inset_map[] = {
> >  	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT,
> > ICE_FLOW_FIELD_IDX_TCP_DST_PORT},
> >  	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT,
> > ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT},
> >  	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT,
> > ICE_FLOW_FIELD_IDX_SCTP_DST_PORT},
> > +	{VIRTCHNL_PROTO_HDR_GTPU_IP_TEID,
> > ICE_FLOW_FIELD_IDX_GTPU_IP_TEID},
> > +	{VIRTCHNL_PROTO_HDR_GTPU_EH_QFI,
> > ICE_FLOW_FIELD_IDX_GTPU_EH_QFI},
> >  };
> >
> >  /**
> > @@ -386,6 +418,7 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
> >  			 struct ice_flow_seg_info *seg)
> >  {
> >  	enum ice_fltr_ptype flow = conf->input.flow_type;
> > +	enum ice_fdir_tunnel_type ttype = conf->ttype;
> >  	struct device *dev = ice_pf_to_dev(vf->pf);
> >
> >  	switch (flow) {
> > @@ -406,6 +439,25 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
> >  				  ICE_FLOW_SEG_HDR_IPV4 |
> >  				  ICE_FLOW_SEG_HDR_IPV_OTHER);
> >  		break;
> > +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP:
> > +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP:
> > +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP:
> > +	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER:
> > +		if (ttype == ICE_FDIR_TUNNEL_TYPE_GTPU) {
> > +			ICE_FLOW_SET_HDRS(seg,
> > ICE_FLOW_SEG_HDR_GTPU_IP |
> > +					  ICE_FLOW_SEG_HDR_IPV4 |
> > +					  ICE_FLOW_SEG_HDR_IPV_OTHER);
> > +		} else if (ttype == ICE_FDIR_TUNNEL_TYPE_GTPU_EH) {
> > +			ICE_FLOW_SET_HDRS(seg,
> > ICE_FLOW_SEG_HDR_GTPU_EH |
> > +					  ICE_FLOW_SEG_HDR_GTPU_IP |
> > +					  ICE_FLOW_SEG_HDR_IPV4 |
> > +					  ICE_FLOW_SEG_HDR_IPV_OTHER);
> > +		} else {
> > +			dev_dbg(dev, "Invalid tunnel type 0x%x for VF %d\n",
> > +				flow, vf->vf_id);
> > +			return -EINVAL;
> > +		}
> > +		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> >  		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_SCTP |
> >  				  ICE_FLOW_SEG_HDR_IPV4 |
> > @@ -803,6 +855,7 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf,
> > struct virtchnl_fdir_add *fltr,
> >  		struct tcphdr *tcph;
> >  		struct ethhdr *eth;
> >  		struct iphdr *iph;
> > +		u8 *rawh;
> >
> >  		switch (hdr->type) {
> >  		case VIRTCHNL_PROTO_HDR_ETH:
> > @@ -895,6 +948,25 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf,
> > struct virtchnl_fdir_add *fltr,
> >  				}
> >  			}
> >  			break;
> > +		case VIRTCHNL_PROTO_HDR_GTPU_IP:
> > +			rawh = (u8 *)hdr->buffer;
> > +			input->flow_type =
> > +				ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER;
> 
> No need to wrap, also why does this define have IPV4 twice in the name?
> That is redundant.  These define names are getting WAY out of control and
> can the length of the defines can be reduced in length.

gtpu has inner and outer IP header, currently we only support IPV4, but IPv6 could be added in future
So there are 4 combination
IPV4_GTPU_IPV4
IPV4_GTPU_IPV6
IPV6_GTPU_IPV4
IPV6_GTPU_IPV6

Regards
Qi

> 
> > +
> > +			if (hdr->field_selector)
> > +				input->gtpu_data.teid =
> > +					*(__be32 *)(&rawh[GTPU_TEID_OFFSET]);
> 
> No need to wrap
> 
> > +			conf->ttype = ICE_FDIR_TUNNEL_TYPE_GTPU;
> > +			break;
> > +		case VIRTCHNL_PROTO_HDR_GTPU_EH:
> > +			rawh = (u8 *)hdr->buffer;
> > +
> > +			if (hdr->field_selector)
> > +				input->gtpu_data.qfi =
> > +					rawh[GTPU_EH_QFI_OFFSET] &
> > +					GTPU_EH_QFI_MASK;
> 
> This wrapping could be improved, i.e. 2 lines, maybe less and there is
> alignment issues.
> 
> > +			conf->ttype = ICE_FDIR_TUNNEL_TYPE_GTPU_EH;
> > +			break;
> >  		default:
> >  			dev_dbg(dev, "Invalid header type 0x:%x for VF %d\n",
> >  				hdr->type, vf->vf_id);
> > @@ -1024,12 +1096,18 @@ ice_vc_fdir_comp_rules(struct
> > virtchnl_fdir_fltr_conf *conf_a,
> >  	struct ice_fdir_fltr *a = &conf_a->input;
> >  	struct ice_fdir_fltr *b = &conf_b->input;
> >
> > +	if (conf_a->ttype != conf_b->ttype)
> > +		return false;
> >  	if (a->flow_type != b->flow_type)
> >  		return false;
> >  	if (memcmp(&a->ip, &b->ip, sizeof(a->ip)))
> >  		return false;
> >  	if (memcmp(&a->mask, &b->mask, sizeof(a->mask)))
> >  		return false;
> > +	if (memcmp(&a->gtpu_data, &b->gtpu_data, sizeof(a->gtpu_data)))
> > +		return false;
> > +	if (memcmp(&a->gtpu_mask, &b->gtpu_mask, sizeof(a->gtpu_mask)))
> > +		return false;
> >  	if (memcmp(&a->ext_data, &b->ext_data, sizeof(a->ext_data)))
> >  		return false;
> >  	if (memcmp(&a->ext_mask, &b->ext_mask, sizeof(a->ext_mask)))
> > --
> > 2.13.6
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
