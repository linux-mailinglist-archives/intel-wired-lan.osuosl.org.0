Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAcKH8A5gWmUEwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 00:56:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD74D2C81
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 00:56:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C229082248;
	Mon,  2 Feb 2026 23:56:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3-LwuMKi3SC; Mon,  2 Feb 2026 23:56:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 077E8829BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770076603;
	bh=zY6bm/pUgRPh/CWp9UOaFUA+CQT5itjLNkPQUyTaJX8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yhakWSJQquwNa+p5BYIBybRzBdwRI432vmhvdSsL9qU6/nT4JT/CSoomM+kLAmmaC
	 yr1dm2qrnntkHz5TNdv7vA7LTr5hASnzGgXJYhoNFhkv7z4mBCiNoGV+L2ClbwNSvU
	 7cYtNEwtYqHHiRCbs/g3myzG15XIRuBns1LA/apkUgoifgW0GjxqBZ44VgGqA8rr67
	 +9RYUNB9IJFcjIOyqTcb6YQHEuF+JyCe4iUtANXrYJJL/tJcZqKjO0mRVFL3vHREFj
	 jt6iOWIJbUXy1cg5sriVd8fiQDNC5p8ZPna8H1r9a5gzI9Js1jU3fGn3dY2cPehQse
	 O8vC6d05mLR2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 077E8829BB;
	Mon,  2 Feb 2026 23:56:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C1857F4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 23:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACC09403B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 23:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y7Xt-m9UQSYC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 23:56:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 84E12403AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84E12403AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84E12403AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 23:56:38 +0000 (UTC)
X-CSE-ConnectionGUID: ZjHv7PTHTaWR/TaiQCzGIw==
X-CSE-MsgGUID: 78HqBzCPS9CJ7cp046Fpdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75097561"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="75097561"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:56:35 -0800
X-CSE-ConnectionGUID: L+pyejYsRy6s24YSBOKrEw==
X-CSE-MsgGUID: cgdgIDZnThCzdIH8XF/Dyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209135095"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 02 Feb 2026 15:56:29 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vn3mN-00000000g3Y-0ynt;
 Mon, 02 Feb 2026 23:56:27 +0000
Date: Tue, 3 Feb 2026 07:55:33 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>
Message-ID: <202602030740.Jdw6BiOU-lkp@intel.com>
References: <20260202171638.17427-8-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202171638.17427-8-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770076600; x=1801612600;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZtK3OYsfbQaKryYG3GNg+fYHVaBUJzVlFN3ArYyXJF8=;
 b=K8ihJVOCTSDi+riWY6wsVv5i5veNCkjoEe3ym4vcby8e0ZIJwy+8ZGuR
 o+Zx6GP52PEAlwKoG5KArsY9BSgfQKGa/oKX00dRQl3ucPafMAYt/vYE/
 1xMlF3r5ZDWf0v3288NhZM/jsStFbttCfbrHQT55sVAmRvagXTcAkeQmP
 cd3hl+KIVx9iTv4bINAojWXxm5I0r0oEnFX8pMcfb15u60WFrVUKkFd/4
 GHNQRQyv5505CFW15ASKZDlHBi70p+5R6bpiHxk6iFnADlmSWSE8DmT4S
 NPWWXJmcS8pIWKU7ymgAnGhJxq9etK95oBodcJGY4OXvAt9jHAbWsjkVK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K8ihJVOC
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 7/9] dpll: Add reference
 count tracking support
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:oe-kbuild-all@lists.linux.dev,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:leon@kernel.org,m:aleksander.lobakin@intel.com,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:jonathan.lemon@gmail.com,m:saeedm@nvidia.com,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,google.com,intel.com,kernel.org,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,lunn.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,01.org:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5FD74D2C81
X-Rspamd-Action: no action

Hi Ivan,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/dpll-Allow-associating-dpll-pin-with-a-firmware-node/20260203-012705
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260202171638.17427-8-ivecera%40redhat.com
patch subject: [Intel-wired-lan] [PATCH net-next v4 7/9] dpll: Add reference count tracking support
config: parisc-randconfig-001-20260203 (https://download.01.org/0day-ci/archive/20260203/202602030740.Jdw6BiOU-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 12.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260203/202602030740.Jdw6BiOU-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602030740.Jdw6BiOU-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from net/core/rtnetlink.c:61:
>> include/linux/dpll.h:235:1: error: expected identifier or '(' before '{' token
     235 | {
         | ^
>> include/linux/dpll.h:234:1: warning: 'fwnode_dpll_pin_find' declared 'static' but never defined [-Wunused-function]
     234 | fwnode_dpll_pin_find(struct fwnode_handle *fwnode, dpll_tracker *tracker);
         | ^~~~~~~~~~~~~~~~~~~~


vim +235 include/linux/dpll.h

877c40367bc8a7 Ivan Vecera 2026-02-02  232  
877c40367bc8a7 Ivan Vecera 2026-02-02  233  static inline struct dpll_pin *
bed78c2008cb37 Ivan Vecera 2026-02-02 @234  fwnode_dpll_pin_find(struct fwnode_handle *fwnode, dpll_tracker *tracker);
877c40367bc8a7 Ivan Vecera 2026-02-02 @235  {
877c40367bc8a7 Ivan Vecera 2026-02-02  236  	return NULL;
877c40367bc8a7 Ivan Vecera 2026-02-02  237  }
5f18426928800c Jiri Pirko  2023-09-13  238  #endif
5f18426928800c Jiri Pirko  2023-09-13  239  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
