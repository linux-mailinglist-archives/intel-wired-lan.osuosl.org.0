Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE9789EF54
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 11:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 847F96083A;
	Wed, 10 Apr 2024 09:58:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LuCA_xUfnZTN; Wed, 10 Apr 2024 09:58:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EC1160846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712743103;
	bh=DGSz3y2VLz8gFlf5o29sSobWJkbWvTaRCKfvwBZdJIY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2VWkwQPvzpBJHG5cWftxH69nft7UWO2rwQ2a3WnQXHqoZlffUVNOSxnMNUmxoL6Po
	 4WydDdIC9+EznHqyvSSLs7Z8Cwk5MrcYQdZ0fIPuus2Jt1nIkp0vY65RkvcxONPaKo
	 lEOEdowQ+LnstEFeHylyLXi7R6z8WAb3yMV+7eEXrHvyIR+Bnsk0LnldOM2Smt88pm
	 bOpRITClGPlWWFBWg/Y7YdCVIPRuBAFx2IdQVTCSfuZvEYwhS+sgphHSUp1kNCuM3N
	 EIHWAcHOL0vuc7te34e1Q2xDrqRUkYI1NyHe+OXw26eyTeQwnoHVmytAExtQPocnKQ
	 FcOJrXBKtaMSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EC1160846;
	Wed, 10 Apr 2024 09:58:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7631BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 09:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2728E607E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 09:58:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Uo4Vrt-pWrn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 09:58:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 109C960645
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 109C960645
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 109C960645
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 09:58:17 +0000 (UTC)
X-CSE-ConnectionGUID: Zqdw8k9BQAKlZfpoDIjeXg==
X-CSE-MsgGUID: tYDStekJQP+r74vLgBDVEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="25601426"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25601426"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 02:58:17 -0700
X-CSE-ConnectionGUID: aYy+foZLSn2r2UUZc3n3tg==
X-CSE-MsgGUID: iIgP4Th0SfSAleBxwmoMpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20542691"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 02:58:15 -0700
Date: Wed, 10 Apr 2024 11:57:55 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
Message-ID: <ZhZio9Kc0FrgNwnN@mev-dev>
References: <20240312105259.2450-1-michal.swiatkowski@linux.intel.com>
 <PH0PR11MB50130FD5A519919523197C7C96362@PH0PR11MB5013.namprd11.prod.outlook.com>
 <ZgZ6/6/R+5EfQvbb@mev-dev>
 <PH0PR11MB5013EC7967F8B7694B2F5C8C963F2@PH0PR11MB5013.namprd11.prod.outlook.com>
 <Zg+5mIUtMruFRck0@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zg+5mIUtMruFRck0@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712743098; x=1744279098;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8kljXWF9cM8kvyiMlAHuhlM0UfE1pXGPxynSESs+2dQ=;
 b=dF83plSuPiXQTi3r0FozgRuVDqvJj1xVNE+uczju8F+bSStlLCthNoUJ
 kPkrmMO42VLInL+PCBmk1BVTRhHuIuwtmGD0iUIRO4izjVUN+wczp6osn
 A6GUVEnfM/U0RG/jxN3jo9bqqkpXgNwlvdNMWEgZe7ixKxcKBibHbEEeW
 Ujd1uayMLRuJEYGZfZ44NTS3a8ZSeRW3RAyVYdQJhunjwBD59QMCqxsTK
 fWjQx3gkWqdNO0vq+yROXBlsJZhhqipZNbcHn1JQGqDRK+XSvuPvCBORb
 N7szOGWj+sdKRlLaGrRhkr8PVTIPxXhnwJXibX0xGs3Y7k0RBI6gknCdZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dF83plSu
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
 profiles
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 05, 2024 at 10:43:04AM +0200, Michal Swiatkowski wrote:
> On Mon, Apr 01, 2024 at 09:28:30AM +0000, Buvaneswaran, Sujai wrote:
> > > -----Original Message-----
> > > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > Sent: Friday, March 29, 2024 1:56 PM
> > > To: Buvaneswaran, Sujai <sujai.buvaneswaran@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Marcin Szycik
> > > <marcin.szycik@linux.intel.com>; Kubiak, Michal <michal.kubiak@intel.com>
> > > Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
> > > profiles
> > > 
> > > On Mon, Mar 25, 2024 at 06:36:56AM +0000, Buvaneswaran, Sujai wrote:
> > > > > -----Original Message-----
> > > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > > > Of Michal Swiatkowski
> > > > > Sent: Tuesday, March 12, 2024 4:23 PM
> > > > > To: intel-wired-lan@lists.osuosl.org
> > > > > Cc: netdev@vger.kernel.org; Marcin Szycik
> > > > > <marcin.szycik@linux.intel.com>; Kubiak, Michal
> > > > > <michal.kubiak@intel.com>; Michal Swiatkowski
> > > > > <michal.swiatkowski@linux.intel.com>
> > > > > Subject: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on
> > > > > all profiles
> > > > >
> > > > > A simple non-tunnel rule (e.g. matching only on destination MAC) in
> > > > > hardware will be hit only if the packet isn't a tunnel. In software
> > > > > execution of the same command, the rule will match both tunnel and
> > > non-tunnel packets.
> > > > >
> > > > > Change the hardware behaviour to match tunnel and non-tunnel packets
> > > > > in this case. Do this by considering all profiles when adding
> > > > > non-tunnel rule (rule not added on tunnel, or not redirecting to tunnel).
> > > > >
> > > > > Example command:
> > > > > tc filter add dev pf0 ingress protocol ip flower skip_sw action mirred \
> > > > > 	egress redirect dev pr0
> > > > >
> > > > > It should match also tunneled packets, the same as command with
> > > > > skip_hw will do in software.
> > > > >
> > > > > Fixes: 9e300987d4a8 ("ice: VXLAN and Geneve TC support")
> > > > > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > > > > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > > > > Signed-off-by: Michal Swiatkowski
> > > > > <michal.swiatkowski@linux.intel.com>
> > > > > ---
> > > > > v1 --> v2:
> > > > >  * fix commit message sugested by Marcin
> > > > > ---
> > > > >  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > Hi,
> > > >
> > > > We are seeing error while adding HW tc rules on PF with the latest net-
> > > queue patches. This issue is blocking the validation of latest net-queue
> > > Switchdev patches.
> > > >
> > > > + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower
> > > > + src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:01 skip_sw action
> > > > + mirred egress redirect dev eth0
> > > > Error: ice: Unable to add filter due to error.
> > > > We have an error talking to the kernel
> > > > + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower
> > > > + src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:02 skip_sw action
> > > > + mirred egress redirect dev eth1
> > > > Error: ice: Unable to add filter due to error.
> > > > We have an error talking to the kernel
> > > 
> > > Hi,
> > > 
> > > The same command is working fine on my setup. I suspect that it isn't related
> > > to this patch. The change is only in command validation, there is no
> > > functional changes here that can cause error during adding filters which
> > > previously was working fine.
> > > 
> > > Can you share more information about the setup? It was the first filter added
> > > on the PF? Did you do sth else before checking tc?
> > 
> > Hi Michal,
> > I have used the setup with latest upstream dev-queue kernel and this issue is observed while adding HW tc rules on PF using
> > 'Script A' from below link.
> > https://edc.intel.com/content/www/us/en/design/products/ethernet/appnote-e810-eswitch-switchdev-mode-config-guide/script-a-switchdev-mode-with-linux-bridge-configuration/
> > 
> > This issue is reproducible on two of our setups with latest upstream kernel - 6.9.0-rc1+. Please check and let me know if more information is needed.
> > 
> 
> I tried script from the link and it is working. I am aware of the
> problem when the same rule is being added with different destination.
> Are you sure there are no more exsisting rule before calling the script?
> In the script VFs are removed, but PF qdisc isn't removed. Old rule can
> exsist there. I suggest to add sth like, before adding new qdiscs:
> $tc qdisc del dev $PF1 ingress
> 
> I tested on 6.9.0-rc1+ kernel.
> 

I have found the problem. I was using different DDP package.

The problem is with lack of free indexes in profiles when matching is
done on both tunnel and not tunnel packet (so all profiles are
considered). For now please Tony remove it from next-queue. I am trying
to figure out how to implement matching on all profiles using less
indexes. If I find the correct way I will submit new patch.

Thanks

> Thanks,
> Michal
> > Thanks,
> > Sujai B
> > > 
> > > Thanks,
> > > Michal
> > > >
> > > > Thanks,
> > > > Sujai B
