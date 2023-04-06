Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A386D959A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Apr 2023 13:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B854941DDF;
	Thu,  6 Apr 2023 11:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B854941DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680780906;
	bh=a93nowkQKGGg3O5gK40e6FkykyrYfd9XmH8Lgox7zss=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4SD3OYFnRD/XYsubSRF7JyBgBhqmpwIJTkIssp+XX4pjbT4PVRaf7UGKzC9AxHLfp
	 MaplrFKfCALoIMCL63NRxVyf2StRqhGj0ff2sb0eP2J2ALjzhSYKstotRwmlWTigcJ
	 LjEulNhixy3mW84xklmXydWaqQFIb6JBeNYm16XQcabyiw1Qj7Y5cG1X4P6/LfQ1UA
	 xeQCVC9Kv6B6F1yK9hAbd7ub5y1KcuM3Evj5V7I7cgt/22Y98+Zthi9RcScTcnDvHz
	 Bo0SjconFUlm268tIyUBjCxbUTXcbmqWyzMyKn0NcjWjPDKxQ3ds1pd2lZmw18BEyf
	 IfMwZZp8Hs9Tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wRtKOVyjZZQX; Thu,  6 Apr 2023 11:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24EF541C46;
	Thu,  6 Apr 2023 11:35:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24EF541C46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1A01C2CD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 11:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EE8E60E22
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 11:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EE8E60E22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5mSxdoczArg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Apr 2023 11:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E93C60BE8
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E93C60BE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 11:34:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="326755188"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="326755188"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 04:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="776450222"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="776450222"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 04:34:56 -0700
Date: Thu, 6 Apr 2023 13:34:53 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZC6uXW5WMcnAet7F@localhost.localdomain>
References: <20230405075113.455662-1-michal.swiatkowski@linux.intel.com>
 <20230405075113.455662-5-michal.swiatkowski@linux.intel.com>
 <68714dbe-3a43-9e3a-2bb5-8f1659b4a979@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68714dbe-3a43-9e3a-2bb5-8f1659b4a979@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680780899; x=1712316899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TYCI1MKcaL1MNZiKdaUVy/2CYgHHghIwYri0YjG/a/4=;
 b=hyep8bwmH/X2hWe/P4XFo04FTdajLGBF/IiFOgpb7F/nWfXJ3hubaPOv
 lAGV0liworlxRy2XQ/6lbJkWpX0/a1JqxPyf8bTtJxLie0dUFQEioQWXx
 jVEOb4S3/S04LLZ5uocWy62rZJf1E/J40f/jqv3quq5nF6/g2ERnv0tCP
 1xdCHPCQLQ7wz3o3mDPD6lQ69IqZJ/C3gOpyvQbT+0fFbFYT2OeDejOg+
 I+Qw9ivQt7XLhDO0vFo9vVd1Qy/cB/jVK/YkVeoqPFN/ojlRzxpuLYcrI
 qL4JQTriXu1SA2Hr4qktgrlE/Ku3Gc3M/ZJnt4Cq4zPPuXZZ0eLLzJl1D
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hyep8bwm
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/5] ice: specify field
 names in ice_prot_ext init
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
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 05, 2023 at 03:25:53PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Wed, 5 Apr 2023 09:51:12 +0200
> 
> > Anonymous initializers are now discouraged. Define ICE_PROTCOL_ENTRY
> > macro to rewrite anonymous initializers to named one. No functional
> > changes here.
> > 
> > Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_switch.c | 68 +++++++++++----------
> >  1 file changed, 36 insertions(+), 32 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> > index b55cdb9a009f..8872e26d1368 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> > @@ -4540,6 +4540,11 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
> >  	return status;
> >  }
> >  
> > +#define ICE_PROTOCOL_ENTRY(id, ...) {	\
> > +	.prot_type = id,		\
> > +	.offs	   = {__VA_ARGS__},	\
> 
> Minor: please use one tab in between field name and `=` sign (you have
> spaces there for now).
> 
> > +}
> > +
> >  /* This is mapping table entry that maps every word within a given protocol
> >   * structure to the real byte offset as per the specification of that
> >   * protocol header.
> > @@ -4550,38 +4555,37 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
> >   * structure is added to that union.
> >   */
> >  static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
> > -	{ ICE_MAC_OFOS,		{ 0, 2, 4, 6, 8, 10, 12 } },
> > -	{ ICE_MAC_IL,		{ 0, 2, 4, 6, 8, 10, 12 } },
> > -	{ ICE_ETYPE_OL,		{ 0 } },
> > -	{ ICE_ETYPE_IL,		{ 0 } },
> > -	{ ICE_VLAN_OFOS,	{ 2, 0 } },
> > -	{ ICE_IPV4_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
> > -	{ ICE_IPV4_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
> > -	{ ICE_IPV6_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24,
> > -				 26, 28, 30, 32, 34, 36, 38 } },
> > -	{ ICE_IPV6_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24,
> > -				 26, 28, 30, 32, 34, 36, 38 } },
> > -	{ ICE_TCP_IL,		{ 0, 2 } },
> > -	{ ICE_UDP_OF,		{ 0, 2 } },
> > -	{ ICE_UDP_ILOS,		{ 0, 2 } },
> > -	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
> > -	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
> > -	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
> > -	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
> > -	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
> > -	{ ICE_PPPOE,		{ 0, 2, 4, 6 } },
> > -	{ ICE_L2TPV3,		{ 0, 2, 4, 6, 8, 10 } },
> > -	{ ICE_VLAN_EX,          { 2, 0 } },
> > -	{ ICE_VLAN_IN,          { 2, 0 } },
> > -	{ ICE_HW_METADATA,	{ ICE_SOURCE_PORT_MDID_OFFSET,
> > -				  ICE_PTYPE_MDID_OFFSET,
> > -				  ICE_PACKET_LENGTH_MDID_OFFSET,
> > -				  ICE_SOURCE_VSI_MDID_OFFSET,
> > -				  ICE_PKT_VLAN_MDID_OFFSET,
> > -				  ICE_PKT_TUNNEL_MDID_OFFSET,
> > -				  ICE_PKT_TCP_MDID_OFFSET,
> > -				  ICE_PKT_ERROR_MDID_OFFSET,
> > -				}},
> > +	ICE_PROTOCOL_ENTRY(ICE_MAC_OFOS, 0, 2, 4, 6, 8, 10, 12),
> > +	ICE_PROTOCOL_ENTRY(ICE_MAC_IL, 0, 2, 4, 6, 8, 10, 12),
> > +	ICE_PROTOCOL_ENTRY(ICE_ETYPE_OL, 0),
> > +	ICE_PROTOCOL_ENTRY(ICE_ETYPE_IL, 0),
> 
> BTW, as offset arguments go into the array declaration, you can even
> omit such single-zero-element declarations. I.e., if I'm not mistaken,
> these two equal to just:
> 
> 	ICE_PROTOCOL_ENTRY(ICE_ETYPE_OL),
> 	ICE_PROTOCOL_ENTRY(ICE_ETYPE_IL),
> 
> But: 1) better to recheck; 2) up to you, maybe it's better to explicitly
> mention zero offsets here.
> 

Good to know, will recheck.

As 0 offset is valid (0 means 0 offset not protocol without offset) I
preffere to mention 0 here.

> > +	ICE_PROTOCOL_ENTRY(ICE_VLAN_OFOS, 2, 0),
> > +	ICE_PROTOCOL_ENTRY(ICE_IPV4_OFOS, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18),
> > +	ICE_PROTOCOL_ENTRY(ICE_IPV4_IL,	0, 2, 4, 6, 8, 10, 12, 14, 16, 18),
> > +	ICE_PROTOCOL_ENTRY(ICE_IPV6_OFOS, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18,
> > +			   20, 22, 24, 26, 28, 30, 32, 34, 36, 38),
> > +	ICE_PROTOCOL_ENTRY(ICE_IPV6_IL, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20,
> > +			   22, 24, 26, 28, 30, 32, 34, 36, 38),
> > +	ICE_PROTOCOL_ENTRY(ICE_TCP_IL, 0, 2),
> > +	ICE_PROTOCOL_ENTRY(ICE_UDP_OF, 0, 2),
> > +	ICE_PROTOCOL_ENTRY(ICE_UDP_ILOS, 0, 2),
> > +	ICE_PROTOCOL_ENTRY(ICE_VXLAN, 8, 10, 12, 14),
> > +	ICE_PROTOCOL_ENTRY(ICE_GENEVE, 8, 10, 12, 14),
> > +	ICE_PROTOCOL_ENTRY(ICE_NVGRE, 0, 2, 4, 6),
> > +	ICE_PROTOCOL_ENTRY(ICE_GTP, 8, 10, 12, 14, 16, 18, 20, 22),
> > +	ICE_PROTOCOL_ENTRY(ICE_GTP_NO_PAY, 8, 10, 12, 14),
> > +	ICE_PROTOCOL_ENTRY(ICE_PPPOE, 0, 2, 4, 6),
> > +	ICE_PROTOCOL_ENTRY(ICE_L2TPV3, 0, 2, 4, 6, 8, 10),
> > +	ICE_PROTOCOL_ENTRY(ICE_VLAN_EX, 2, 0),
> > +	ICE_PROTOCOL_ENTRY(ICE_VLAN_IN, 2, 0),
> > +	ICE_PROTOCOL_ENTRY(ICE_HW_METADATA, ICE_SOURCE_PORT_MDID_OFFSET,
> 
> Nit: I think here's the exceptional case when you can specify this
> second argument on the next line, i.e. break the line even though it
> fits into 80 chars. This looks a bit off to me :D
>

Right, will move it

> > +			   ICE_PTYPE_MDID_OFFSET,
> > +			   ICE_PACKET_LENGTH_MDID_OFFSET,
> > +			   ICE_SOURCE_VSI_MDID_OFFSET,
> > +			   ICE_PKT_VLAN_MDID_OFFSET,
> > +			   ICE_PKT_TUNNEL_MDID_OFFSET,
> > +			   ICE_PKT_TCP_MDID_OFFSET,
> > +			   ICE_PKT_ERROR_MDID_OFFSET),
> 
> Hmm, could this patch go as 3/5, i.e. before this last element is
> introduced, so that there'll be 16 lines less in diffstat?
>

Sure, I will rebase

Thanks,
Michal
> >  };
> >  
> >  static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
