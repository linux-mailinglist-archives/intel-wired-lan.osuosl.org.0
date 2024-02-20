Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3DA85BCEF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 14:14:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E8234042E;
	Tue, 20 Feb 2024 13:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9sWK0-UsrnSJ; Tue, 20 Feb 2024 13:14:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0089B404C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708434883;
	bh=OL8NR3CVs/qgi5UTYdYKolEn0/2bY6Q5dP5F8F9cJBk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2cN0w8YCGi8G6RQSreHCH+9v1TGbobVqELs/Vk6T2qQRLMxKdiEZ8OLXBFHHt3VMC
	 Jj+Sxl2FWfHuSZ+6yUVoJZ2v2XTAXTlhyNegJ6J99B9W/rrxDabhvZKQVhU9DmF0J4
	 BKQhJ3L7Mjn8BdhnhnwwFSxuZdhg7r9S/1O9F/u0jeyWDITSJduJalgFgzD9fCvDcQ
	 +rgA2vNltYn3Tp6Q++1HrxfT2A6FcTK7t0SolKii9gxvCH50qrUcF89WKb/NjWuzV1
	 q5EIvexIoA1MsAKDaFIVe53VV0vYNPabBp6op7nZQQ9giJNggQnq0G7K/NkeDf8FFx
	 EIkCp9mQKrnCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0089B404C8;
	Tue, 20 Feb 2024 13:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCC3E1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 13:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A733E40A62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 13:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h4J7Qe0aiNlL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 13:14:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F1BB40A01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F1BB40A01
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F1BB40A01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 13:14:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13939510"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13939510"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 05:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="913075734"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="913075734"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 05:14:36 -0800
Date: Tue, 20 Feb 2024 14:14:32 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZdSluDkqY1R4CMBq@mev-dev>
References: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
 <20240220105950.6814-3-michal.swiatkowski@linux.intel.com>
 <dc03726a-d59b-47a1-b394-7a435f8aee1a@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc03726a-d59b-47a1-b394-7a435f8aee1a@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708434879; x=1739970879;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=b84dLxslkqXo24Roys3t+5b0MUHLK/hHMjWJ+oVet/w=;
 b=OOEhrRo68i1F6GFDuIHYKcK0DkeWfXGk4aKagr6xYukDYKqvisajLro/
 fWZG9dVqpmDD8ve6SUbr9419r/rEDaA6rKVfN7DJQkYzh8j7uptEx/Mij
 PP3jRVZIT86VzL5OMADPAdJivImYL9dlFwIcqUeCGzz2uJdPGcRbIFD0k
 jwYTNJ69O4mqM50+2nBDX/lJiyjgtlsUqmCzMkXBQ5GtTkSTLoZv5uzm6
 BteiJytD2m3zjtBwRUtPYRH6oey8e1G8pKZU3YvuNC4An+i0OEsFV3g/B
 fE9tQZgOpxx1qXyudCGRcpSF5y16eITmKn+mfyBa+U/0BYIScmp4KgHBj
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OOEhrRo6
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

On Tue, Feb 20, 2024 at 01:26:34PM +0100, Paul Menzel wrote:
> Dear Michal,
> 
> 
> Thank you for the patch. Some minor nits from my side.
> 
> Am 20.02.24 um 11:59 schrieb Michal Swiatkowski:
> > Add new matching type. There is no encap version of ip_proto field.
> 
> Excuse my ignorance, I do not understand the second sentence. Is an encap
> version going to be added?
> 

No, I will rephrase it, thanks.

> > Use it in the same lookup type as for TTL. In hardware it have the same
> 
> s/have/has/
>

Will fix.

> > protocol ID, but different offset.
> > 
> > Example command to add filter with ip_proto:
> > $tc filter add dev eth10 ingress protocol ip flower ip_proto icmp \
> >   skip_sw action mirred egress redirect dev eth0
> > 
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_tc_lib.c | 17 +++++++++++++++--
> >   drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
> >   2 files changed, 16 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > index 49ed5fd7db10..f7c0f62fb730 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > @@ -78,7 +78,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
> >   		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
> >   		lkups_cnt++;
> > -	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
> > +	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
> > +		     ICE_TC_FLWR_FIELD_IP_PROTO))
> 
> Should this be sorted? (Also below).
>

Do you mean PROTO before TOS and TTL? I like the current order, because
for ipv6 we don't have PROTO, but we have TOS and TTL, it looks better
when PROTO is as additional one here.

> >   		lkups_cnt++;
> >   	/* are L2TPv3 options specified? */
> > @@ -530,7 +531,8 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
> >   	}
> >   	if (headers->l2_key.n_proto == htons(ETH_P_IP) &&
> > -	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))) {
> > +	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
> > +		      ICE_TC_FLWR_FIELD_IP_PROTO))) {
> >   		list[i].type = ice_proto_type_from_ipv4(inner);
> >   		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
> > @@ -545,6 +547,13 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
> >   				headers->l3_mask.ttl;
> >   		}
> > +		if (flags & ICE_TC_FLWR_FIELD_IP_PROTO) {
> > +			list[i].h_u.ipv4_hdr.protocol =
> > +				headers->l3_key.ip_proto;
> > +			list[i].m_u.ipv4_hdr.protocol =
> > +				headers->l3_mask.ip_proto;
> 
> (Strange to break the line each time, but seems to be the surrounding coding
> style.)
>

Yeah, without breaking it is longer than 80.

> > +		}
> > +
> >   		i++;
> >   	}
> > @@ -1515,7 +1524,11 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
> >   		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
> >   		headers->l2_mask.n_proto = cpu_to_be16(n_proto_mask);
> > +
> > +		if (match.key->ip_proto)
> > +			fltr->flags |= ICE_TC_FLWR_FIELD_IP_PROTO;
> >   		headers->l3_key.ip_proto = match.key->ip_proto;
> > +		headers->l3_mask.ip_proto = match.mask->ip_proto;
> >   	}
> >   	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
> > diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> > index 65d387163a46..856f371d0687 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> > @@ -34,6 +34,7 @@
> >   #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
> >   #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
> >   #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
> > +#define ICE_TC_FLWR_FIELD_IP_PROTO		BIT(30)
> >   #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
> 
> 
> Kind regards,
> 
> Paul

Thanks,
Michal
