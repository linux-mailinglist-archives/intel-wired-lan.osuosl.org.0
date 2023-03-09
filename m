Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F626B2634
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 15:04:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1512E4182D;
	Thu,  9 Mar 2023 14:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1512E4182D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678370640;
	bh=bCQddPdOx75NolDtOXRPH7pWTxCUBLCauWoojusIExY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GbjyPY5N8jaI574SzzR2O4XTtTUPVcn88TXNw5xwpMQSNwOyyI9FA4BGL90HuHrIY
	 EcBy2nBJD6jzlKEcYpeY8UurnfQopQYNCWG79hLZ9oMBWmk4UQ456MM5E55ZpirWCH
	 v/++6wF8pSeD6a4PZEygDV7O2WK6jD5oT4XSBifxWFErUzBLYvPeKDJpG0J0mz9vqY
	 BmYa7EqxOqDVgH3gtOLpHNBN3O5Q1Ff5ZI4rlCIkOD1KOLyMWcoVAnZ0bovYAyn6lJ
	 D7/Amx/IQ8Q/pDRqqYCBXuEwCEgR8Hn23ycNk8RTtxqE3z0Va6dhFCLB1XnmSYhbox
	 G/XoaeE7dO+2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3RLrcvoUpmEj; Thu,  9 Mar 2023 14:03:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B0A841816;
	Thu,  9 Mar 2023 14:03:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B0A841816
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2443B1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 14:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0882340FCE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 14:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0882340FCE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BRe2XdxXUr4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 14:03:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1310A40FC4
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1310A40FC4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 14:03:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="316843634"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="316843634"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 06:02:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="923243518"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="923243518"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 06:01:44 -0800
Date: Thu, 9 Mar 2023 15:01:40 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <ZAnmxK1U+a57Rlpf@localhost.localdomain>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230309051011.1165676-1-junfeng.guo@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678370632; x=1709906632;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JE9BcJpd0MyAocGoZRV4rUrKpdINgQRobANfE748yaM=;
 b=hnzv06WJhfrkLzT+CKfYooODuDeTvDCnwlQ9/gUnkeNqINUHcrNQtt6x
 pY3VplyBxMD3f2paLa2A5i67wuBgabj3LAmbKpB5iLTvEFqkmrqFokqFc
 QDSue8AEqnL4Ir2sI8Bb15VxHnojpyOo9aiPFK/mTiFjTA1EZ9OAcOwYa
 1W66jwpYGhRKa0X3PGQ8VwrrjHJ13y4um2pzCj75OEzC5DLivneapsAup
 3H/Juke+WpobmXCGhKVelSDN2iSDt1hwCl+BF1mb057IxbUqIv11P9WVe
 31d6wIrfggnbYzxwrXgjo3i+K9MC7+Z1Hr5GRvWcqAwJBncA67bEYOjnL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hnzv06WJ
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 09, 2023 at 01:10:11PM +0800, Junfeng Guo wrote:
> Add profile conflict check while adding some FDIR rules to aviod
> unexpected flow behavior, rules may have conflict including:
>         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
>         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> 
> For example, when we create an FDIR rule for IPv4, this rule will work
> on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
> then create an FDIR rule for IPv4_UDP and then destroy it, the first
> FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.
> 
> To prevent this unexpected behavior, we add restriction in software
> when creating FDIR rules by adding necessary profile conflict check.

What about flow conflict when rule is added from host perspective (by
ethtool)? Do we also need to check for conflict? Maybe it is worth
create common code for this case.
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index e6ef6b303222..1431789c194e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -541,6 +541,71 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
>  	}
>  }
>  
> +/**
> + * ice_vc_fdir_has_prof_conflict
> + * @vf: pointer to the VF structure
> + * @conf: FDIR configuration for each filter
> + *
> + * Check if @conf has conflicting profile with existing profiles
> + *
> + * Return: true on success, and false on error.
> + */
> +static bool
> +ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
> +			      struct virtchnl_fdir_fltr_conf *conf)
It isn't aligned.

> +{
> +	struct ice_fdir_fltr *desc;
> +
> +	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
> +		struct virtchnl_fdir_fltr_conf *existing_conf =
> +						to_fltr_conf_from_desc(desc);
> +		struct ice_fdir_fltr *a = &existing_conf->input;
> +		struct ice_fdir_fltr *b = &conf->input;
> +
> +		enum ice_fltr_ptype flow_type_a = a->flow_type;
> +		enum ice_fltr_ptype flow_type_b = b->flow_type;
I think You should folow RCT variable declaration here, and remove empty
line.

> +
> +		/* No need to compare two rules with different tunnel type */
> +		if (existing_conf->ttype != conf->ttype)
> +			continue;
> +
> +		/* No need to compare two rules with same protocol */
> +		if (flow_type_a == flow_type_b)
> +			continue;
This two ifs can be combined into one.

> +
> +		switch (flow_type_a) {
> +		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
> +		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
> +		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
> +				return true;
> +			break;
> +		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
> +				return true;
> +			break;
> +		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> +		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> +		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
> +				return true;
> +			break;
> +		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> +			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
> +			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
> +				return true;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  /**
>   * ice_vc_fdir_write_flow_prof
>   * @vf: pointer to the VF structure
> @@ -677,6 +742,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
>  	enum ice_fltr_ptype flow;
>  	int ret;
>  
> +	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
> +	if (ret) {
> +		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf->vf_id);
> +		return ret;
> +	}
> +
>  	flow = input->flow_type;
>  	ret = ice_vc_fdir_alloc_prof(vf, flow);
>  	if (ret) {
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
