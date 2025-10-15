Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD95BE0505
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 21:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C001608DB;
	Wed, 15 Oct 2025 19:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 61pnsmhXY0rj; Wed, 15 Oct 2025 19:09:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0E88608C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760555371;
	bh=XtcgbFD3E6UgVVT48BYb/o3TMALz2s0vymG2AYKxgT4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y4PdGHAgmzaHWyDxwedKBKsNv5p1fdORgCEkd4Akj7iR7P4W4x2jPGGhmonihkHgx
	 4o8xv5ju5JUgelEskSoPSRhz28NI6mKMEW/RJ40sho6otAHOaFmQIYDuD+lhDpmrMI
	 D/v/MYfKuZRLoXdme/ptJOeEX65FKlpIX6JHZC/LIB0uuRE1JWkY4kfHM2cKildWuN
	 p42+ZyG+ZWxowBp8a4secJ1Te+6gFcbY2B+cYJLkTxSHS7IOsB2x/dnZ2+AbJJxXpN
	 cU8zqWVaE5pEoI7OFSlbaij7dgHapF49IYAh86irTbQ3WzYAKo+5dVcIcL9BLajwMr
	 Gr80/sULJpdEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E88608C0;
	Wed, 15 Oct 2025 19:09:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BFEE781
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 19:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52EE8821BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 19:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5udPZRmSUFHP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 19:09:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A54B181EC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A54B181EC6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A54B181EC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 19:09:27 +0000 (UTC)
X-CSE-ConnectionGUID: /9X9irhOSIWWzQSyQk+4eQ==
X-CSE-MsgGUID: asChk0EtSfKBTKLh6/z82A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62650504"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62650504"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 12:09:27 -0700
X-CSE-ConnectionGUID: Y1SE77ciQHKOY8Cd1GSsBA==
X-CSE-MsgGUID: 3VE+azRVSYKSJ5rikSIx/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="181805376"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 12:09:26 -0700
Date: Wed, 15 Oct 2025 21:07:26 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aO/w7gnXquHNK6k7@mev-dev.igk.intel.com>
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
 <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
 <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>
 <0c8c5f34-c5cb-4a81-98fc-e3b957a2a8e9@intel.com>
 <e94f188d-3578-447f-8815-6c2393f2f807@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e94f188d-3578-447f-8815-6c2393f2f807@roeck-us.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760555368; x=1792091368;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Qe+2hMfgLx2Jy+G0M+RBidUSC3hrdRGoE4obQZyojsY=;
 b=ZWi0JazYJX/xBSgcOGddS9YwXCX9m59NWqpLm98g+AaROnBbbqtdfYac
 W9a7jlLmkGWWfrVZqJpgtK+is+/pbuGmmL+L0mfDxd9ZNdd4WgDtIn/yZ
 UG4jQmgl2FD+L+eq3EAl5/Ge9BNiV8P64g630GYA4bCouMY85YhvCqNII
 t6ageTJ4jcNz48/4wvRuhYe+h0yOD2o0LG3L1HUnkdgO2K/MgO4lGOs7a
 R+PNj6K+qhUN6ckq5+OAorGw3ENoCYlZY58j1+qCF3LNaKGWqs2EAhjIz
 fY3oLoWNnFmsUiQvpoblor4VzcPZ0752XtHTksBWloNG4z82xAODFGN96
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZWi0JazY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 15, 2025 at 10:53:45AM -0700, Guenter Roeck wrote:
> On 10/15/25 10:32, Jacob Keller wrote:
> > 
> > 
> > On 10/14/2025 10:24 PM, Michal Swiatkowski wrote:
> > > On Tue, Oct 14, 2025 at 04:41:43PM -0700, Jacob Keller wrote:
> > > > 
> > > > 
> > > > On 10/14/2025 7:11 AM, Michal Swiatkowski wrote:
> > > > > Building the ixgbe without CONFIG_DEBUG_FS leads to a build error. Fix
> > > > > that by guarding fwlog code.
> > > > > 
> > > > > Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> > > > > Reported-by: Guenter Roeck <linux@roeck-us.net>
> > > > > Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058@roeck-us.net/
> > > > > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > > > ---
> > > > 
> > > > Hm. It probably is best to make this optional and not require debugfs
> > > > via kconfig.
> > > 
> > > Make sense
> > > 
> > > > 
> > > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 ++
> > > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | 8 ++++++++
> > > > >   2 files changed, 10 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > > > index c2f8189a0738..c5d76222df18 100644
> > > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > > > @@ -3921,6 +3921,7 @@ static int ixgbe_read_pba_string_e610(struct ixgbe_hw *hw, u8 *pba_num,
> > > > >   	return err;
> > > > >   }
> > > > > +#ifdef CONFIG_DEBUG_FS
> > > > >   static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
> > > > >   			    u16 size)
> > > > >   {
> > > > > @@ -3952,6 +3953,7 @@ void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
> > > > >   	libie_fwlog_deinit(&hw->fwlog);
> > > > >   }
> > > > > +#endif /* CONFIG_DEBUG_FS */
> > > > 
> > > > What does the fwlog module from libie do? Seems likely that it won't
> > > > compile without CONFIG_DEBUG_FS either...
> > > 
> > > Right, it shouldn't, because there is a dependency on fs/debugfs.
> > > It is building on my env, but maybe I don't have it fully cleaned.

BTW, it is building because DEBUG_FS also have dummy functions if not
selected.

> > > I wonder, because in ice there wasn't a check (or select) for
> > > CONFIG_DEBUG_FS for fwlog code.
> > > 
> > > Looks like LIBIE_FWLOG should select DEBUG_FS, right?
> > > I will send v2 with that, if it is fine.
> > > 
> > > Thanks
> > > 
> > My only worry is that could lead to ice selecting LIBIE_FWLOG which then
> > selects DEBUG_FS which then means we implicitly require DEBUG_FS regardless.
> > 
> > I don't quite remember the semantics of select and whether that would
> > let you build a kernel without DEBUG_FS.. I think some systems would
> > like to be able to disable DEBUG_FS as a way of limiting scope of
> > available interfaces exposed by the kernel.
> >

Yeah, the idea with dummy functions is better, thanks for your input.

> 
> If fwlog depends on debugfs, why not spell out that dependency and
> provide dummy functions if it isn't enabled ? The Kconfig entries
> selecting it could then be changed to
> 	select LIBIE_FWLOG if DEBUG_FS
> 

Sounds good, thanks.

> Guenter
> 
