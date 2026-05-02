Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id o8JAMlUz9mkgTAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:24:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 377944B3086
	for <lists+intel-wired-lan@lfdr.de>; Sat, 02 May 2026 19:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A62166109B;
	Sat,  2 May 2026 17:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4jp3ZXNe_yoL; Sat,  2 May 2026 17:24:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C36626109E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777742674;
	bh=xSYGdiDfgLnFnoDElmVZKpwDdpzcT7RaBEf1n4T9Z78=;
	h=Date:From:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rWaOWZELl1Uj++Z8E/IRWgJS+EkCL844HGkw03ZxhIrUlxXw398Z1VVG0I8LMsO6V
	 xMQ/a0wGpF7304Nnv7JsqoJtbMLt53VOQGFc4xBbwdeKiFl/KrChXuoUlS/MXTtqAh
	 T+7ZvUlef+cb+B0qBO92Vj3OeLzo+ttyfk13QNELflQNnlRxTKfFWLQBzjWOaLMO31
	 5WF9/zWTSXNidcbOXilKyz8M9Q7UG1Ir/whvv/ZPwh745us1hNbDkgeVf2Y6eGb8D8
	 hMiQYxhZkyOEhHGRM/CPLsnIDky+lPOuCsl4RzQjcE0tYUiwFfP9LOwlR7AXr7lOQH
	 YVNXUCk2FFR7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C36626109E;
	Sat,  2 May 2026 17:24:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CDA35127
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3E334127E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:24:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TqinMiH3b0EX for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 May 2026 17:24:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB48D4121F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB48D4121F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB48D4121F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 May 2026 17:24:31 +0000 (UTC)
X-CSE-ConnectionGUID: A80Oe0huQOS+Ywy4azbw+g==
X-CSE-MsgGUID: q6wPWEzkR8Sl1G/aYa1j9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11774"; a="77690838"
X-IronPort-AV: E=Sophos;i="6.23,212,1770624000"; d="scan'208";a="77690838"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2026 10:24:30 -0700
X-CSE-ConnectionGUID: vVwE1Am3S8qq/8IQ4D2Xjw==
X-CSE-MsgGUID: Rroz5eB1QkmGOZFgB7wFbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,212,1770624000"; d="scan'208";a="228639273"
Received: from lkp-server01.sh.intel.com (HELO 781826d00641) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 02 May 2026 10:24:29 -0700
Received: from kbuild by 781826d00641 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wJE4o-000000001ep-3nq8;
 Sat, 02 May 2026 17:24:26 +0000
Date: Sun, 03 May 2026 01:24:17 +0800
From: kernel test robot <lkp@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <202605030146.fEzMWDym-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777742671; x=1809278671;
 h=date:from:cc:subject:message-id;
 bh=EGnwQsE6P7jCBjM0G5aU1z8kq2t0VK2VjkNSKsTI7V0=;
 b=gnMZUj245bKYBXMglUUT+VarMnyypZtf0gGo1rW2pKqVRYTbsBMs1Eaz
 4oT/orAfyV8xm9Ys2AY/A91LIoftJshftSb8fgZk6tVkwsMzCsi40kn1S
 ambJQiGClVBuSpiYBZwqiMjhczC4eXrewLsqq9ryoVGrhzw6pXwfpAi3Q
 abWzJBmXtDjzWbKpbJYP38KLZ/3uObd8dfjwDqyp4LkptolbcWTAjVo9F
 LebGUbaXVze6MXFT1txJ0P8vqQFJEZP7mAYNy7ysNZ5HKEG8BUgFhH6Co
 RlUJ6CMq+KK64GdOPtBnEW3Nl4rJzmXA0riv9iXZ5YHwbcUyj2r9N08zi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gnMZUj24
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 4/145]
 include/linux/intel/virtchnl.h:480:30: error: enumerator value for
 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant
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
X-Rspamd-Queue-Id: 377944B3086
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.79 / 15.00];
	MISSING_TO(2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:oe-kbuild-all@lists.linux.dev,m:anthony.l.nguyen@intel.com,m:sridhar.samudrala@intel.com,m:larysa.zaremba@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,01.org:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   03bfd1fd4cea5b5be0d50475802a29a8de476969
commit: 02f11e95790d60c0713cceb05399ca93da4e0093 [4/145] virtchnl: create 'include/linux/intel' and move necessary header files
config: arm-randconfig-004-20260502 (https://download.01.org/0day-ci/archive/20260503/202605030146.fEzMWDym-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260503/202605030146.fEzMWDym-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202605030146.fEzMWDym-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/iavf/iavf.h:40,
                    from drivers/net/ethernet/intel/iavf/iavf_adv_rss.c:6:
>> include/linux/intel/virtchnl.h:174:43: warning: division by zero [-Wdiv-by-zero]
     174 |         { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                           ^
   include/linux/intel/virtchnl.h:480:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     480 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_irq_map_info);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/intel/virtchnl.h:480:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant
     480 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_irq_map_info);
         |                              ^~~~~~~~~~~~~~~~~~~~~
   include/linux/intel/virtchnl.h:174:60: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     174 |         { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                            ^


vim +/virtchnl_static_assert_virtchnl_irq_map_info +480 include/linux/intel/virtchnl.h

62683ab51e487fb drivers/net/ethernet/intel/i40evf/i40e_virtchnl.h Greg Rose         2013-12-21  479  
5e7f59fa07f86f5 include/linux/avf/virtchnl.h                      Alexander Lobakin 2023-07-28 @480  VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_irq_map_info);
5e7f59fa07f86f5 include/linux/avf/virtchnl.h                      Alexander Lobakin 2023-07-28  481  #define virtchnl_irq_map_info_LEGACY_SIZEOF	14
73556269aab30c3 include/linux/avf/virtchnl.h                      Sridhar Samudrala 2017-05-11  482  

:::::: The code at line 480 was first introduced by commit
:::::: 5e7f59fa07f86f554c301c7a383bba54d5ef9819 virtchnl: fix fake 1-elem arrays in structures allocated as `nents + 1`

:::::: TO: Alexander Lobakin <aleksander.lobakin@intel.com>
:::::: CC: Tony Nguyen <anthony.l.nguyen@intel.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
