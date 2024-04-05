Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 007BA899846
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 10:43:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51B90821A2;
	Fri,  5 Apr 2024 08:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_GyBldtOB8O; Fri,  5 Apr 2024 08:43:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F16F5821A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712306608;
	bh=8TkHp2vFXT74t0+QaEDAbu7HJubApmWO1dRJf8j9Vs4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gw/SPO7RkXM1wNWh5icwTDpWaDExs8h8gSFwL1qrH7juhRSJj8z82TNbOhUm4MA5Q
	 69sH4yJI5J42eltgD1kHW+STXjlA5nkjbEB3kOAPCCZBJ32naApT75kQTUsedmReS2
	 HoKa7leF8ybgKTb8mHuC6w9favgMy6FEgM0vJ/H6GS1l0DmOmTEZ+Z/RCpEjI3VT5X
	 15jjXvlIo5JVLggRNReaPEVPPeGyjCgxcTCSru6tAF07becK+5qerTpMIabp2pfE5z
	 aQ3flrm+2GRNpu/DHHvfg9rjxnndb0UxetMYm0p8JcJ0f+sqtO/hyZgTbTxdPNVLuO
	 0uXqm6C4lzyuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F16F5821A7;
	Fri,  5 Apr 2024 08:43:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33C431BF27A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 08:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F38740150
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 08:43:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Wi68-8OI_5y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 08:43:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8696F4011F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8696F4011F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8696F4011F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 08:43:24 +0000 (UTC)
X-CSE-ConnectionGUID: pRiWxUwURVeYdjV7DKBbdg==
X-CSE-MsgGUID: fkL+rcm8Qo2TMmKTDnH/mw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="33023482"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="33023482"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 01:43:23 -0700
X-CSE-ConnectionGUID: S3yFI09+QWGtYBRGxYV1Pw==
X-CSE-MsgGUID: TrZFISqHSPq5OKSd6pg0Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23814485"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 01:43:21 -0700
Date: Fri, 5 Apr 2024 10:43:04 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
Message-ID: <Zg+5mIUtMruFRck0@mev-dev>
References: <20240312105259.2450-1-michal.swiatkowski@linux.intel.com>
 <PH0PR11MB50130FD5A519919523197C7C96362@PH0PR11MB5013.namprd11.prod.outlook.com>
 <ZgZ6/6/R+5EfQvbb@mev-dev>
 <PH0PR11MB5013EC7967F8B7694B2F5C8C963F2@PH0PR11MB5013.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR11MB5013EC7967F8B7694B2F5C8C963F2@PH0PR11MB5013.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712306605; x=1743842605;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=l02dn70i51wUrkwv5ZNoBFyKNpyPl0y3pIsw1ver82o=;
 b=XUAPGZVhxMv6OaSTXsuqnKQTg5nnO1xiBUxaMZrbjEEt2li3YP+zLlrA
 c3m4dYb6gM0mtQxZ0FUtzSTrZq3mdQ5CYshBfyAoePoUcI/N+/EPZARAG
 ZdIjN6aJmGXjy86yXGitOXq3RkXiCKJnVk3N0Bjw/1F4ICRXLQNVAMdiI
 gn8RBt70dXAOb6wZcwAEIP0kd15jhjgn8EbRF3emb6Rm25FthG8TPnSu5
 y6Cvx3c4h7m8WC+i6t8fTIgpcYG5LpdyvAlQsMECx4voMD0e5FhFvRnnR
 88wk315Kg+qBHJC3lAAC6Z7qZ6Hp7GcZC2yTtiFpUcng84+t/XvA1Fwpu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XUAPGZVh
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

On Mon, Apr 01, 2024 at 09:28:30AM +0000, Buvaneswaran, Sujai wrote:
> > -----Original Message-----
> > From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Sent: Friday, March 29, 2024 1:56 PM
> > To: Buvaneswaran, Sujai <sujai.buvaneswaran@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Marcin Szycik
> > <marcin.szycik@linux.intel.com>; Kubiak, Michal <michal.kubiak@intel.com>
> > Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all
> > profiles
> > 
> > On Mon, Mar 25, 2024 at 06:36:56AM +0000, Buvaneswaran, Sujai wrote:
> > > > -----Original Message-----
> > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > > Of Michal Swiatkowski
> > > > Sent: Tuesday, March 12, 2024 4:23 PM
> > > > To: intel-wired-lan@lists.osuosl.org
> > > > Cc: netdev@vger.kernel.org; Marcin Szycik
> > > > <marcin.szycik@linux.intel.com>; Kubiak, Michal
> > > > <michal.kubiak@intel.com>; Michal Swiatkowski
> > > > <michal.swiatkowski@linux.intel.com>
> > > > Subject: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on
> > > > all profiles
> > > >
> > > > A simple non-tunnel rule (e.g. matching only on destination MAC) in
> > > > hardware will be hit only if the packet isn't a tunnel. In software
> > > > execution of the same command, the rule will match both tunnel and
> > non-tunnel packets.
> > > >
> > > > Change the hardware behaviour to match tunnel and non-tunnel packets
> > > > in this case. Do this by considering all profiles when adding
> > > > non-tunnel rule (rule not added on tunnel, or not redirecting to tunnel).
> > > >
> > > > Example command:
> > > > tc filter add dev pf0 ingress protocol ip flower skip_sw action mirred \
> > > > 	egress redirect dev pr0
> > > >
> > > > It should match also tunneled packets, the same as command with
> > > > skip_hw will do in software.
> > > >
> > > > Fixes: 9e300987d4a8 ("ice: VXLAN and Geneve TC support")
> > > > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > > > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > > > Signed-off-by: Michal Swiatkowski
> > > > <michal.swiatkowski@linux.intel.com>
> > > > ---
> > > > v1 --> v2:
> > > >  * fix commit message sugested by Marcin
> > > > ---
> > > >  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > Hi,
> > >
> > > We are seeing error while adding HW tc rules on PF with the latest net-
> > queue patches. This issue is blocking the validation of latest net-queue
> > Switchdev patches.
> > >
> > > + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower
> > > + src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:01 skip_sw action
> > > + mirred egress redirect dev eth0
> > > Error: ice: Unable to add filter due to error.
> > > We have an error talking to the kernel
> > > + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower
> > > + src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:02 skip_sw action
> > > + mirred egress redirect dev eth1
> > > Error: ice: Unable to add filter due to error.
> > > We have an error talking to the kernel
> > 
> > Hi,
> > 
> > The same command is working fine on my setup. I suspect that it isn't related
> > to this patch. The change is only in command validation, there is no
> > functional changes here that can cause error during adding filters which
> > previously was working fine.
> > 
> > Can you share more information about the setup? It was the first filter added
> > on the PF? Did you do sth else before checking tc?
> 
> Hi Michal,
> I have used the setup with latest upstream dev-queue kernel and this issue is observed while adding HW tc rules on PF using
> 'Script A' from below link.
> https://edc.intel.com/content/www/us/en/design/products/ethernet/appnote-e810-eswitch-switchdev-mode-config-guide/script-a-switchdev-mode-with-linux-bridge-configuration/
> 
> This issue is reproducible on two of our setups with latest upstream kernel - 6.9.0-rc1+. Please check and let me know if more information is needed.
> 

I tried script from the link and it is working. I am aware of the
problem when the same rule is being added with different destination.
Are you sure there are no more exsisting rule before calling the script?
In the script VFs are removed, but PF qdisc isn't removed. Old rule can
exsist there. I suggest to add sth like, before adding new qdiscs:
$tc qdisc del dev $PF1 ingress

I tested on 6.9.0-rc1+ kernel.

Thanks,
Michal
> Thanks,
> Sujai B
> > 
> > Thanks,
> > Michal
> > >
> > > Thanks,
> > > Sujai B
