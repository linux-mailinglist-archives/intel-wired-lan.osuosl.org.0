Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B7E4A977F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 11:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 946E141738;
	Fri,  4 Feb 2022 10:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuN_k0X8qXzj; Fri,  4 Feb 2022 10:10:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C7C541703;
	Fri,  4 Feb 2022 10:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBED1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ACBC60B47
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PH7jbjDNnwhR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 10:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 404BB60B06
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643969436; x=1675505436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j5cWXSnK0EUKb/henRYT8HK1VHBbLx7Tga44LClAGXM=;
 b=dxQLkHfpg582jYPaIOElCd+0UF2DeOV84LXOc7vaBlLDnd0EqDBNG/1Q
 d6DrjVgM61pnjc0vM+ifh+E/pEPf5r2UHO5E26YHNPNG4D1pWKtQ8pVDO
 KGqyaCTjFMfV/2edBZiSmHJMdXoam4LXiZ5Y8fRuNTyaWLmj3GZidJf+Z
 +eVUnWBLxH+54JUlGJfXVEf0RhGxRnnNYE2BviaYLQyDr/ZvvY9b41OgZ
 +xQ0ArWtMEjo1e7349kLQ057W3ERteBDuvNnN4WBcYsdK73WUmM7VEigp
 lOsO6GWT3auM0H5LZErkjdjGiCfpJwWgAHKHWbK5yofbJ+cIsR+Z6Y4yn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="309088659"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="309088659"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 02:10:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="631656360"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 04 Feb 2022 02:10:29 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 214AARi0022403; Fri, 4 Feb 2022 10:10:28 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri,  4 Feb 2022 11:08:28 +0100
Message-Id: <20220204100828.77916-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB518650C6F3DCE7DBAF6CFE5D8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-17-alan.brady@intel.com>
 <20220128190403.30131-1-alexandr.lobakin@intel.com>
 <CO1PR11MB518650C6F3DCE7DBAF6CFE5D8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 16/19] iecm: implement flow
 director
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 03:41:26 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 11:04 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Wang, Haiyue
> > <haiyue.wang@intel.com>; Burra, Phani R <phani.r.burra@intel.com>;
> > Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>; intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 16/19] iecm: implement flow
> > director
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:10:06 -0800
> > 
> > > From: Haiyue Wang <haiyue.wang@intel.com>
> > >
> > > This adds everthing needed to do flow director commands.
> > >
> > > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > > ---
> > >  .../net/ethernet/intel/iecm/iecm_ethtool.c    |   17 +-
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 1528
> > ++++++++++++++++-
> > >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  119 ++
> > >  drivers/net/ethernet/intel/include/iecm.h     |  112 ++
> > >  4 files changed, 1770 insertions(+), 6 deletions(-)
> > >

--- 8< ---

> > > +	switch (fltr->flow_type) {
> > > +	case IECM_FDIR_FLOW_IPV4_TCP:
> > > +	case IECM_FDIR_FLOW_IPV4_UDP:
> > > +	case IECM_FDIR_FLOW_IPV4_SCTP:
> > > +		dev_info(dev, "Rule ID: %u dst_ip: %pI4 src_ip %pI4 %s:
> > dst_port %hu src_port %hu\n",
> > > +			 fltr->loc,
> > > +			 &fltr->ip_data.v4_addrs.dst_ip,
> > > +			 &fltr->ip_data.v4_addrs.src_ip,
> > > +			 proto,
> > > +			 ntohs(fltr->ip_data.dst_port),
> > > +			 ntohs(fltr->ip_data.src_port));
> > 
> > Some of those can fit into previous line, there's no need to put
> > each argument onto separate one.
> > 
> 
> It technically can fit on one line, but it's much easier for humans to parse what's going where the way it's written now.

Not sure there's a choice here, usually it's preferred to compress
lines if there's a possibility.

> 
> > > +		break;
> > > +	case IECM_FDIR_FLOW_IPV4_AH:

--- 8< ---

> > > +	fdir_config = &adapter->config_data.fdir_config;
> > > +	list_for_each_entry(rule, &fdir_config->fdir_fltr_list, list)
> > > +		if (rule->loc == loc)
> > > +			return rule;
> > 
> > Here's a good example that a single `if` statement shouldn't be
> > placed into a pair of braces.
> > 
> 
> You're right it does need some braces on the list_for_each, will fix.

I said the opposite, please don't present your opinion as mine. I'm
not sure it's a correct thing to do during the review.
As mentioned previously plenty of times, braces are expected only
when they're purely necessary. Your approach doesn't even improve
the readability as you claim.

> 
> > > +
> > > +	return NULL;
> > > +}
> > > +
> > > +/**
> > > + * iecm_fdir_list_add_fltr - add a new node to the flow director filter list

--- 8< ---

> > > + * If the mask is fully set return true. If it is not valid for field return
> > > + * false.
> > > + */
> > > +static bool iecm_is_mask_valid(u64 mask, u64 field)
> > > +{
> > > +	return (mask & field) == field;
> > > +}
> > 
> > That is something really basic and should at least be placed
> > somewhere in the headers and used module-wide.
> > 
> 
> I'm not convinced it makes sense to do that if it's not actually being used module wide. I'm pretty sure this is only validating user input for flow director filters.

`(mask & field) == field` pattern is used widely across iecm code.
This function simply won't pass the review. If it reflects FD logics
somehow, this should be explained in the kdoc block, so there'll be
less questions why it's here at all. For now it looks like a generic
function, not FD-specific one.
Anyway, I've just highlighted all references to this function and
it's used only *once* throughout the code. So it's a pure overkill
and should be just open-coded there.

> 
> > > +
> > > +/**
> > > + * iecm_parse_rx_flow_user_data - deconstruct user-defined data

--- 8< ---

> > > +enum iecm_fdir_flow_type {
> > > +	/* NONE - used for undef/error */
> > > +	IECM_FDIR_FLOW_NONE = 0,
> > 
> > Enums always start with 0 unless other value specified, this is a
> > bit excessive.
> > 
> 
> AFAIK this is the normal thing to do in Linux kernel.  In cases where the value actually matters, as is here, it's better to be explicit even though yes you're right it should be getting the default value of zero.

Does it? It mostly only matters when it's being passed to HW anyhow,
but I'm not sure it's the case here.
Anyways, I admit it's rather a personal preference, so I don't mind.

> 
> E.g. in kernel/sched/sched.h you can find:
> 
> /* The regions in numa_faults array from task_struct */
> enum numa_faults_stats {
>         NUMA_MEM = 0,
>         NUMA_CPU,
>         NUMA_MEMBUF,
>         NUMA_CPUBUF
> };
> 
> and probably many more.
> 
> > > +	IECM_FDIR_FLOW_IPV4_TCP,

--- 8< ---

> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
