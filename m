Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UODRATSZl2kb2QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 00:13:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A86211637B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 00:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50A7183CEB;
	Thu, 19 Feb 2026 23:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTuPEDVumRZI; Thu, 19 Feb 2026 23:13:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 888C483CC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771542832;
	bh=xDsSfJCNVRRdOx/ivmR8AMKWGIgj441TD79/BCyidMI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2/V1WiwItkdHYpSMOWkkFhCn85ktuqmNsFPPwy5fWy2WmL5ecaviGKAa+JNLVlrMj
	 dM5dHo6et5oM6X2TEgDWmPah5hsSarQQ+jr/gT538zgm2aJcngYpiWPJGn7PHVFbhK
	 7qLxSmRNX/5c+rlIVk6y6RAgjE1XO3VbNg1092xRi+33M2X5M1u7J53f1t9Kf5YywO
	 GTgpD6/z26oL5hYFwtlm3X/0l48Si5H25zTvZaSamFudAujPZW+/AhmX4ER4zOlO59
	 zJeGqoGevsFIK6/pfgoR6+VBpcU+xq/V45Mxty09AcN42q/pZIxfvA/+TtWosVwVCe
	 QMXBCjmNruPwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 888C483CC1;
	Thu, 19 Feb 2026 23:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AFCE2183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 23:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A113D404E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 23:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mHMR5RitPrTO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 23:13:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B8A394007B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8A394007B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8A394007B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 23:13:49 +0000 (UTC)
X-CSE-ConnectionGUID: ghspOXzyRC2qXN+LjaYnJg==
X-CSE-MsgGUID: U+iID+nJQxOAw53MRl/Epw==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="76506074"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="76506074"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 15:13:49 -0800
X-CSE-ConnectionGUID: FaCCHP0WSOuqTWYqtO26BQ==
X-CSE-MsgGUID: rXkM3RgAS/C+kUbSIoFnvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="213913412"
Received: from igk-lkp-server01.igk.intel.com (HELO e5404a91d123)
 ([10.211.93.152])
 by orviesa010.jf.intel.com with ESMTP; 19 Feb 2026 15:13:45 -0800
Received: from kbuild by e5404a91d123 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtDDK-0000000045F-1NOI;
 Thu, 19 Feb 2026 23:13:42 +0000
Date: Fri, 20 Feb 2026 00:13:24 +0100
From: kernel test robot <lkp@intel.com>
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Message-ID: <202602200046.SGwK2tWh-lkp@intel.com>
References: <20260219131500.2271897-1-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260219131500.2271897-1-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771542830; x=1803078830;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HQew4e4P+dNoGE5gpuWIrS1BfhEqX0p4C11aOteVsRw=;
 b=J+Wqt7dpvHSaTF2r9Nxk3BcY6Pp2F0qFw654hzcoI0oOI0yTav7tlboL
 XfQ0nZQT2pL22l0vFiED1zQshWsWlAgfhu/6qmNGv3LZ6y8WBWB0q1zSu
 TczaFHd852hWH49PLuOsVBwNnAbteeZ84dthnOO1v/+Iw0j3UwgvvEoKa
 NBiZpbnwsPq/35pudItF2UNxK2XCGWFUYPHyQda0fR6zRMFrNhHaz020F
 g+OBOTgzgTcf+7dTnbX/p4/SJHOwljf53DsnS0B8yNe4IFvHsmRCIcu/U
 G8e0Ic2bC5MnPHKSs9XmXq1u2+bobOY1HKlyz6A/+p7FOL79kS4r4xKRR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J+Wqt7dp
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing dpll
 notification for SW pins
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
Cc: ivecera@redhat.com, piotr.kwapulinski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, oe-kbuild-all@lists.linux.dev,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:piotr.kwapulinski@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:oe-kbuild-all@lists.linux.dev,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: A86211637B4
X-Rspamd-Action: no action

Hi Petr,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Petr-Oros/ice-fix-missing-dpll-notification-for-SW-pins/20260219-211758
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260219131500.2271897-1-poros%40redhat.com
patch subject: [PATCH iwl-net v2] ice: fix missing dpll notification for SW pins
config: x86_64-rhel-9.4 (https://download.01.org/0day-ci/archive/20260220/202602200046.SGwK2tWh-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260220/202602200046.SGwK2tWh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602200046.SGwK2tWh-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:2625 function parameter 'p' not described in 'ice_dpll_sw_pin_needs_notify'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:2625 function parameter 'active' not described in 'ice_dpll_sw_pin_needs_notify'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:2625 function parameter 'old' not described in 'ice_dpll_sw_pin_needs_notify'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:2625 expecting prototype for ice_dpll_notify_changes(). Prototype was for ice_dpll_sw_pin_needs_notify() instead

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
