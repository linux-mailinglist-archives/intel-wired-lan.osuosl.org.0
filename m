Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD473891522
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 09:25:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 085EB41820;
	Fri, 29 Mar 2024 08:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U6xERtB2Vj0I; Fri, 29 Mar 2024 08:25:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 323B04040D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711700750;
	bh=/jJxQwptvj8RJCMkfRlF4UnaW3XMz6CxOSy1bys/2d8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ukdnpdd7jt82FaTWgICnRWoS7ib7AhntbnaDjXNTpRdpj09ZFkz3xhCeSQouJQ1j5
	 CkPQXnEwJ1ScHpzTufmTcPAOGDDCA+vrRyWZx32elMTtYj2OkoZnt/IonMEwGXvw9S
	 ohnIBORA0mj7f9aPD2JdMKCMj4D4/gK1hiN+2Dzd1GnwvY/tYmgOJ9THNGODXSXvi6
	 n4xMWZj3VhWrp4pAsj3BBC8YZhlo6/zjUauXsQ9JSgwP20fG+T5NqG5WGgXqE6E/Rs
	 1Q1lP/Mu1Vs9/V/0Mn0OeVW2osSK/HPBjq1NReu/gvSZ3/3zP8J2F2jdBb4V3uCIJD
	 IG3gD4st6rUwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 323B04040D;
	Fri, 29 Mar 2024 08:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0CD61BF285
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 08:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCC0E60D6D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 08:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EMYfaR_BYfPD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 08:25:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA53A6074E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA53A6074E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA53A6074E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 08:25:46 +0000 (UTC)
X-CSE-ConnectionGUID: SD5M3sDEShWXc0KO7iMVEA==
X-CSE-MsgGUID: o7ER0t6UTvyJFqXCkWwsnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6748961"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="6748961"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 01:25:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16965983"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 01:25:44 -0700
Date: Fri, 29 Mar 2024 09:25:35 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
Message-ID: <ZgZ6/6/R+5EfQvbb@mev-dev>
References: <20240312105259.2450-1-michal.swiatkowski@linux.intel.com>
 <PH0PR11MB50130FD5A519919523197C7C96362@PH0PR11MB5013.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR11MB50130FD5A519919523197C7C96362@PH0PR11MB5013.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711700747; x=1743236747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v+cbkxJzxF/YcfwnjeRh08GfHVnQ93gPGcW75G6xRTA=;
 b=UpuPC3mxZpBhHRBPEiNxXWVBaUkyfvcezJKNoFU1DQScNc173p170tkd
 JMmCXF9Z7MZ4DJQ/d3OwIPoaky7CG2Svv8oYafxenFGalYOzehrl1CtNX
 I1JkJpboFd87nac2qJwxaMjJskLj1Xn1H4uZe6oymk+wW5Lfvy2+ZUL2G
 Q37gZwr9m0UvDfZkBaKNoDncBNtWkPbhqvdaplo55ct4Ux8zul6qPlkIy
 ToaTbhynSlBFAf2DTjocMQULllHkYFM+cjmEjAIydCn5nzyJ1xG0ZC9eB
 nGZtu4WOOSblquDr2KbW4UfCdLzNbh59HcimMQGKn+Hd1+LHXgcRHzPwr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UpuPC3mx
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

On Mon, Mar 25, 2024 at 06:36:56AM +0000, Buvaneswaran, Sujai wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Michal Swiatkowski
> > Sent: Tuesday, March 12, 2024 4:23 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>;
> > Kubiak, Michal <michal.kubiak@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: [Intel-wired-lan] [iwl-net v1] ice: tc: do default match on all profiles
> > 
> > A simple non-tunnel rule (e.g. matching only on destination MAC) in
> > hardware will be hit only if the packet isn't a tunnel. In software execution of
> > the same command, the rule will match both tunnel and non-tunnel packets.
> > 
> > Change the hardware behaviour to match tunnel and non-tunnel packets in
> > this case. Do this by considering all profiles when adding non-tunnel rule
> > (rule not added on tunnel, or not redirecting to tunnel).
> > 
> > Example command:
> > tc filter add dev pf0 ingress protocol ip flower skip_sw action mirred \
> > 	egress redirect dev pr0
> > 
> > It should match also tunneled packets, the same as command with skip_hw
> > will do in software.
> > 
> > Fixes: 9e300987d4a8 ("ice: VXLAN and Geneve TC support")
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> > v1 --> v2:
> >  * fix commit message sugested by Marcin
> > ---
> >  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> Hi,
> 
> We are seeing error while adding HW tc rules on PF with the latest net-queue patches. This issue is blocking the validation of latest net-queue Switchdev patches.
> 
> + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:01 skip_sw action mirred egress redirect dev eth0
> Error: ice: Unable to add filter due to error.
> We have an error talking to the kernel
> + tc filter add dev ens5f0np0 ingress protocol ip prio 1 flower src_mac b4:96:91:9f:65:58 dst_mac 52:54:00:00:16:02 skip_sw action mirred egress redirect dev eth1
> Error: ice: Unable to add filter due to error.
> We have an error talking to the kernel

Hi,

The same command is working fine on my setup. I suspect that it isn't
related to this patch. The change is only in command validation, there
is no functional changes here that can cause error during adding filters
which previously was working fine.

Can you share more information about the setup? It was the first filter
added on the PF? Did you do sth else before checking tc?

Thanks,
Michal
> 
> Thanks,
> Sujai B
