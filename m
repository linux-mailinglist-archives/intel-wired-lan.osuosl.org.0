Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B66B3BD1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 11:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA2A382280;
	Fri, 10 Mar 2023 10:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA2A382280
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678443341;
	bh=QEu+4/DEY8NMhXYAVqvXYgFvkgeZvkTw8Tyff0ZeR84=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BWOx+Ydx3JIkugr7anwehP7FF6SCloddwpLdKUopKrrfZ0qjFEqKgqW8s+Q9tCYrp
	 wkbyypbAdfLFNuqL4YO4By2Zb6dV1yb+a0vXCDznkvGJJH2Rc4hGwdjqpXrWz2HoLY
	 ZXpf1oWB0OPA3il24CX8gyr6XXdcp1Yq9U2jPa9WDCV6fBG6cenJMFBUL6JJgdh/xJ
	 3fOBjJav4mWOcdJOeftWj70tDaUrdPQ1HlJX+nSv2VVP19lEaKojaZhk578eo04tXW
	 9Be0c5Ke30cykYVhJoQsHIu7/VwphAq5yS9tHznE+UxcY+lm+wU5QfoduuHB5kNPVF
	 EBBjd8lfNo0Fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WHByAe7Cvu1i; Fri, 10 Mar 2023 10:15:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8643382274;
	Fri, 10 Mar 2023 10:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8643382274
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34A1C1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 10:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BD7060B23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 10:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BD7060B23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id taDPAqhE7hMf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 10:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D56D860A88
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D56D860A88
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 10:15:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399295639"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="399295639"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:15:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923611010"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923611010"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:15:33 -0800
Date: Fri, 10 Mar 2023 11:15:24 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Guo, Junfeng" <junfeng.guo@intel.com>
Message-ID: <ZAsDPCq+YLghK0Hb@localhost.localdomain>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
 <ZAnmxK1U+a57Rlpf@localhost.localdomain>
 <DM6PR11MB37232688E5F2E6C2A1646DBAE7BA9@DM6PR11MB3723.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB37232688E5F2E6C2A1646DBAE7BA9@DM6PR11MB3723.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678443334; x=1709979334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0tKHjTCtwZTyAA++4AVixIiFLszKBnb7o85pq0Xrfmo=;
 b=FFyvkgQeQzI2Sq3uyr0/Cj+DgbwkoDXWOpdYaPmQjr0av6Xw/L9GYIm1
 eFX0/P33dRtqfGMPQ7WVIGsGUzo2ipm7BdTpaP744PHbzl4t9I0lyXNsF
 /OPCndq4Pg5rS9ZW/islEiD+bnMardU7y54DotDvG5lXP+7nQDlPN3QUH
 hSZi0v0gvVUqT31Vna6uqg4Xh5vvOHzoScm9f0MoQnEP3YnZ6K+4v9q20
 kfi41UPHNAXxFhmb7PphTw0N0Qt5RjLZS5ml7jcXuOkV1UzDVHzZoZwMx
 1MC5gxX2O0dJd2UT+utMwgv5XR41BhMzBt2WwmQNdlUnYEm/wF1D9HlCE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FFyvkgQe
Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
 for AVF FDIR
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 10, 2023 at 05:16:22AM +0000, Guo, Junfeng wrote:
> Thanks for the review! Comments inline.
> 
> > -----Original Message-----
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Sent: Thursday, March 9, 2023 22:02
> > To: Guo, Junfeng <junfeng.guo@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
> > for AVF FDIR
> > 
> > On Thu, Mar 09, 2023 at 01:10:11PM +0800, Junfeng Guo wrote:
> > > Add profile conflict check while adding some FDIR rules to aviod
> > > unexpected flow behavior, rules may have conflict including:
> > >         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
> > >         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> > >
> > > For example, when we create an FDIR rule for IPv4, this rule will work
> > > on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
> > > then create an FDIR rule for IPv4_UDP and then destroy it, the first
> > > FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.
> > >
> > > To prevent this unexpected behavior, we add restriction in software
> > > when creating FDIR rules by adding necessary profile conflict check.
> > 
> > What about flow conflict when rule is added from host perspective (by
> > ethtool)? Do we also need to check for conflict? Maybe it is worth
> > create common code for this case.
> > >
> > > Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> > > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > > ---
> > >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 71 +++++++++++++++++++
> > >  1 file changed, 71 insertions(+)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > index e6ef6b303222..1431789c194e 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > @@ -541,6 +541,71 @@ static void ice_vc_fdir_rem_prof_all(struct
> > ice_vf *vf)
> > >  	}
> > >  }
> > >
> > > +/**
> > > + * ice_vc_fdir_has_prof_conflict
> > > + * @vf: pointer to the VF structure
> > > + * @conf: FDIR configuration for each filter
> > > + *
> > > + * Check if @conf has conflicting profile with existing profiles
> > > + *
> > > + * Return: true on success, and false on error.
> > > + */
> > > +static bool
> > > +ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
> > > +			      struct virtchnl_fdir_fltr_conf *conf)
> > It isn't aligned.
> 
> I think here is just the display issue, the "+" at the beginning will occupy
> a character place. Once applied, it will show correctly.
> 

Oh, sure, sorry for pointing it.

> > 
> > > +{
> > > +	struct ice_fdir_fltr *desc;
> > > +
> > > +	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
> > > +		struct virtchnl_fdir_fltr_conf *existing_conf =
> > > +
> > 	to_fltr_conf_from_desc(desc);
> > > +		struct ice_fdir_fltr *a = &existing_conf->input;
> > > +		struct ice_fdir_fltr *b = &conf->input;
> > > +
> > > +		enum ice_fltr_ptype flow_type_a = a->flow_type;
> > > +		enum ice_fltr_ptype flow_type_b = b->flow_type;
> > I think You should folow RCT variable declaration here, and remove
> > empty
> > line.
> 
> Thanks for the advice!
> 
> Do you mean update the code order like this?
> 	{
> 
To follow RCT:
struct ice_fdir_fltr *a = &existing_conf->input;
enum ice_fltr_ptype flow_type_a, flow_type_b;
struct ice_fdir_fltr *b = &conf->input;

> 	flow_type_a = a->flow_type;
> 	flow_type_b = b->flow_type;
> 	}
> Or like this?
> 	{
> 	enum ice_fltr_ptype flow_type_a, flow_type_b;
> 	struct ice_fdir_fltr *a, *b;
This is also fine

Also fine will be:
struct ice_fdir_fltr *a = &existing_conf->input;
enum ice_fltr_ptype flow_type_a = a->flow_type;
enum ice_fltr_ptype flow_type_b = b->flow_type;
struct ice_fdir_fltr *b = &conf->input;

And it's look the best in my opinion, but it is only cosmetic.

> 
> 	a = &existing_conf->input;
> 	b = &conf->input;
> 	flow_type_a = a->flow_type;
> 	flow_type_b = b->flow_type;
> 	}
> 
> > 
> > > +
> > > +		/* No need to compare two rules with different tunnel
> > type */
> > > +		if (existing_conf->ttype != conf->ttype)
> > > +			continue;
> > > +
> > > +		/* No need to compare two rules with same protocol */
> > > +		if (flow_type_a == flow_type_b)
> > > +			continue;
> > This two ifs can be combined into one.
> 
> Sure, it could be updated in the coming version. Thanks!
> 
> > 
> > > +
> > > +		switch (flow_type_a) {
> > > +		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
> > > +		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
> > > +		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> > > +			if (flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
> > > +				return true;
> > > +			break;
> > > +		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> > > +			if (flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
> > > +			    flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
> > > +			    flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
> > > +				return true;
> > > +			break;
> > > +		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> > > +		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> > > +		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> > > +			if (flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
> > > +				return true;
> > > +			break;
> > > +		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> > > +			if (flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
> > > +			    flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
> > > +			    flow_type_b ==
> > ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
> > > +				return true;
> > > +			break;
> > > +		default:
> > > +			break;
> > > +		}
> > > +	}
> > > +
> > > +	return false;
> > > +}
> > > +
> > >  /**
> > >   * ice_vc_fdir_write_flow_prof
> > >   * @vf: pointer to the VF structure
> > > @@ -677,6 +742,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf,
> > struct virtchnl_fdir_add *fltr,
> > >  	enum ice_fltr_ptype flow;
> > >  	int ret;
> > >
> > > +	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
> > > +	if (ret) {
> > > +		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf-
> > >vf_id);
> > > +		return ret;
> > > +	}
> > > +
> > >  	flow = input->flow_type;
> > >  	ret = ice_vc_fdir_alloc_prof(vf, flow);
> > >  	if (ret) {
> > > --
> > > 2.25.1
> > >
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
