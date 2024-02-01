Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8CA8451AA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 07:55:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 028F6845CE;
	Thu,  1 Feb 2024 06:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 028F6845CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706770544;
	bh=DziQ/jctKQsDReMgUTTM/W/Jsz8lRZG1CEtsbMXiqMM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4UlVihNy2NYK3ldbUtH0BFsX2oRCxRdo5ml1EXBlydn2MDcosJBO9pQei1cTGLgRC
	 hg+ZT95IF+5vL4zmSOAwuIjkSdxZic16IrqwWmNYTral4xj9lcohfg3XF+fWLpqXxT
	 +MfwSikwy+8kqhqd72L0jwZ7UeCMTGd7k6mCXoEXR8CQsKCkFX8NOmK5ZlXE3vwj0R
	 vdR9mdtKpc58wit6rQHmAsYd64YJ/+ESIehnGR6CnWDLjhYa7Kh9a10jcgoDKhoHP0
	 /DIG4PIgIpm0PJdRia3ICbH7D2Mvb7JMvD3o7cznGXuRrXNgrshmk7mIn4LIYoqe7S
	 0AsbwFL1Dt9nA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 84sYzp9rU4DN; Thu,  1 Feb 2024 06:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B825845B4;
	Thu,  1 Feb 2024 06:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B825845B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C95991BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 06:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A414540323
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 06:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A414540323
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bz4Goj9etDGl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 06:55:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33D2C403E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 06:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33D2C403E2
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10928127"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="10928127"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 22:55:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4330273"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 22:55:29 -0800
Date: Thu, 1 Feb 2024 07:55:26 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZbtAXuLtrhrbYjEw@mev-dev>
References: <20240131080847.30614-1-ksundara@redhat.com>
 <ZbokUx7myZ1bVWLL@mev-dev> <Zbo2RJErBsD0Sc_z@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zbo2RJErBsD0Sc_z@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706770535; x=1738306535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=k85R9HmB4RP7ktbABdRSoIpDMqKQO80Ei14Lpu87/+Q=;
 b=VpXfMLagTGnxQ8Dx0UuejXIrHIeA8JnXy4XaOXD9a59uWSSwiHaP5z7C
 XXMf3lOUVU/93mNt2UUoyQ32jrc9r1DcTA5Mo6ZRQtIZCL+kVerLgUJNm
 9BkWfEXZQYt0Mtr7ohp03PAKw8z/o+77gNXbQRt9PjlUlE9YSmBDc8Jte
 C1WX5sbGhk10rrDe84hb498gK/3Zl/FdCC/KFNd0r/Uw4ImtvPbeqZkIL
 B32M1TED4evIxHfurmt1k9wYFjOaX8e1ZZRYP2jG8ZXaxDhRX3pfIgsGJ
 S8+YV9rxYAZxyarS+pKzRqnu1UXjjbB4oIVxrNzVh2vQH3eXfuUFe7PVd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VpXfMLag
Subject: Re: [Intel-wired-lan] [PATCH] ice: Add get/set hw address for VF
 representor ports
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
Cc: vchundur@redhat.com, aharivel@redhat.com, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org,
 karthiksundaravel <ksundara@redhat.com>, rjarry@redhat.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 31, 2024 at 01:00:04PM +0100, Jiri Pirko wrote:
> Wed, Jan 31, 2024 at 11:43:44AM CET, michal.swiatkowski@linux.intel.com wrote:
> >On Wed, Jan 31, 2024 at 01:38:47PM +0530, karthiksundaravel wrote:
> >> Changing the mac address of the VF representor ports are not
> >> available via devlink. Add the function handlers to set and get
> >> the HW address for the VF representor ports.
> >> 
> >> Signed-off-by: karthiksundaravel <ksundara@redhat.com>
> >> ---
> >>  drivers/net/ethernet/intel/ice/ice_devlink.c | 134 ++++++++++++++++++-
> >>  1 file changed, 132 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> index 80dc5445b50d..56d81836c469 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> >> @@ -9,6 +9,8 @@
> >
> >As Jiri already wrote, you are not changing MAC of VF in your code. Try
> >to look at ice_set_vf_mac in ice_sriov.c. In current implementation you
> >nedd to set new MAC value for VF and reset it. You shouldn't use PF VSI.
> >
> >Pointer to VF you can get from representor struct (through parent VSI).
> 
> What if it is in a different host? Would you still be able to change the
> mac?
> 

In current VF MAC changing implementation yes, because it is done by
resetting the VF. After the reset new MAC will be sent via virtchnl.
But I think resetting VF may be incorrect here, as it leads to reset
also port representor.

> 
> >
> >You shouldn't manage the rules during MAC changing, as in switchdev
> >slow-path there shouldn't be VF MAC rules. It can be problematic as user
> >already can have MAC + sth rule (which also needs to be change). I will
> >leave it to user (most probably the MAC change happens before adding any
> >rules).
> 
> Rules are on the representor, not the VF, correct? Seems unrelated to
> me.
> 

I pointed it out because it was in the code. Rules added on representor
points to corresponding VF. My point was that there shouldn't be any
changes to rules after changing MAC.

> 
> >
> >In few days we will send patchset for subfunction support where the
> >subfunction MAC chaning is implementing from devlink API. I will add you
> >to the CC.
> >
> >Thanks for working on it, it is a gap in our solution.
> >
> >Thanks,
> >Michal
> >
