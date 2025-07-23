Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC25B0E9D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 06:50:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFB8780CCA;
	Wed, 23 Jul 2025 04:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gi1uE-nAfdD; Wed, 23 Jul 2025 04:50:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1676F80C3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753246200;
	bh=wRcNoWllLZ+xZgnWNw5Oi4BwJvp1nKsxsMy6VvGD9A4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vf0+cd1o+mzMe3WgJbiX34D9DmRF49ucm1C/mWulTFs1yCYNvr/sJfeNFHJHcqdsY
	 e8OIXS0mdR2w7t3G51guAHa60Wthfixrc1yTVw+BcOOIPbA2x32n7sQwbaxkmUMcxw
	 tXQ1E7Mb5twb2ncVBd1KbK10GUE/hPQ2Ko6ddh8CMU7XA6F8B4+eWQJTdSYkwCgHPL
	 +2J49M8bjrxKhB8tw/zWZ2apyLPy0hHz7MDNOp0odBflqkqcNK/OHK+OeTi4KGVjEX
	 Lvauf9eBk5G9VM6Du+icmH/OqcAAHQvTBryawA1ePTVRKGBo03Q8tmdPUAGfQDennk
	 3/kSZdl/iKQOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1676F80C3C;
	Wed, 23 Jul 2025 04:50:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C67C3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACFB84073E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:49:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L-XJY8k1gTZh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 04:49:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 03F17400A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03F17400A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03F17400A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:49:57 +0000 (UTC)
X-CSE-ConnectionGUID: vP4ZdYw7RTusPzkySZfUzg==
X-CSE-MsgGUID: CWEcdQ8rSNKNO2BczUU+lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55455934"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55455934"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 21:49:57 -0700
X-CSE-ConnectionGUID: HYkRLkIRT0ObbXeX4vJvig==
X-CSE-MsgGUID: XUU0kdGGQd2s737DBzYrvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163561384"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 21:49:56 -0700
Date: Wed, 23 Jul 2025 06:48:51 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "dawid.osuchowski@linux.intel.com" <dawid.osuchowski@linux.intel.com>
Message-ID: <aIBps1pWsmrZhoDu@mev-dev.igk.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-3-michal.swiatkowski@linux.intel.com>
 <IA3PR11MB8986DF9CBA9DD7D092D11D14E55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986DF9CBA9DD7D092D11D14E55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753246198; x=1784782198;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1+i5fwHsssFH8fer9hR+N6BmV3M+1an/8DwXt1LUWZ4=;
 b=XDwsdq71cLlO2GSU6i6iqbGZZyuyed7zuNaLK6z7hju+zFE93FaguKRK
 XiFRNXS2OQAcD3oBbYmJrBL5QAcLKNfz45vrgoAUtbafRtEWdFQkNbwJw
 qSUh5oYUrXEgoUiJF+IBD0ivcHRJI964RmBfTVu8L7251lL6bpt8OEHkR
 dRivxCnEPka3zkeffzXfUHlvK8+WPDe0V+hWVH2AAaC02uC6UDuDDBQve
 LmpZD6XNR5sVI6jHAghxEGuaaov7Y2hwjXHwxmksHxbBnqa/ObB0X7ud9
 PdhSLIiyg18VuZXwuBzSL1t7vBcpppIiB5Z1yZGg1yalTcbEW22gr4A9X
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XDwsdq71
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: move
 get_fwlog_data() to fwlog file
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

On Tue, Jul 22, 2025 at 12:02:52PM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Swiatkowski
> > Sent: Tuesday, July 22, 2025 12:46 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> > Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: move
> > get_fwlog_data() to fwlog file
> > 
> > Change the function prototype to receive hw structure instead of pf to
> > simplify the call. Instead of passing whole event pass only msg_buf
> > pointer and length.
> > 
> > Make ice_fwlog_ring_full() static as it isn't  called from any other
> > context.
> > 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fwlog.c | 27 +++++++++++++++++++-
> > drivers/net/ethernet/intel/ice/ice_fwlog.h |  2 +-
> > drivers/net/ethernet/intel/ice/ice_main.c  | 29 ++--------------------
> >  3 files changed, 29 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> > b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> > index e48856206648..ea5d6d2d3f30 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> > @@ -6,7 +6,7 @@
> >  #include "ice_common.h"
> >  #include "ice_fwlog.h"
> > 
> > -bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
> > +static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
> >  {
> >  	u16 head, tail;
> > 
> Can you consider adding kernel-doc for ice_fwlog_ring_full()?
> 

I will add it.
