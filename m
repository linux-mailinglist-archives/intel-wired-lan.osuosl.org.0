Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0rtODTelRWp+DQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 01:39:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2B36F260B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 01:39:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=aGsxURnS;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 213E340D93;
	Wed,  1 Jul 2026 23:39:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LyM3wxHI_MV2; Wed,  1 Jul 2026 23:39:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 645EA41227
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782949170;
	bh=3eycKggHQU8vO0oDCl1455FO+8VBgiKxkqJvfjKmd0k=;
	h=Date:From:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aGsxURnSvjP5Se93VJzkGvLVTt6eUMcpGQa/UA/BTQRcaaUgzg5wot+5bB9r+bTxg
	 XDLvjc9HrNrO1QzDLvN49Jn+0nToKLniz+2iHG6UBZb0xrSOZta0YILnfOj+Tcecyy
	 j2wWmuGraOlxQw/qj45A4LKdM7AB9EcHISbdhRx3k3nJ2KjnW+yyc0A2yVHwHHWyQe
	 30rXp3jMNfUsoU+6nBDDBkry1s37wT9kXpNzqDsz7r+A2Zh8xkAv9auiRpWos6u/pT
	 QlMwTT1xQzTD25mjd8NNnkp5lEcLtv2TER9KFNDYA6ePG/HbhS9WibjwNIkawZVKHW
	 XqLxKH5ictA+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 645EA41227;
	Wed,  1 Jul 2026 23:39:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B000C127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 23:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9931B405F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 23:39:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xmPIHGBLg9HB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 23:39:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CC3E400C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CC3E400C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CC3E400C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 23:39:27 +0000 (UTC)
X-CSE-ConnectionGUID: Qf/1zSlcQ8i5eoZGcYJc+Q==
X-CSE-MsgGUID: T49CTmvPS06+FRLWlwXbdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="86238425"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="86238425"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 16:39:26 -0700
X-CSE-ConnectionGUID: WwCA4W/mRz+Rh40maFAYpQ==
X-CSE-MsgGUID: EkNm1tR8REqBGhqxOIgC/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="275912342"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 01 Jul 2026 16:39:24 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wf4WN-000000009ib-14gK;
 Wed, 01 Jul 2026 23:39:14 +0000
Date: Thu, 02 Jul 2026 07:38:29 +0800
From: kernel test robot <lkp@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <202607020746.dwYTCJet-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782949168; x=1814485168;
 h=date:from:cc:subject:message-id;
 bh=wDne3BvYjEd7G1QnT8ZUbanmUxj89nm4xkqIsAtmiUI=;
 b=BGrzLqr96vpWz5S4qJWfxmY8NapAcEjatCKWBpqigYyejLeQ95iTqfNu
 hZqCBKM6+1GoPM/wc44KR7F1JhNaE0uABV6htjRRnbA9dPf80IgOfL/py
 Z0xnXz6BJMxWRWdOEy9P0mOuVffI7T9TaCf/Tb6zt7j4AIwNXKU8iagly
 Y+ConKlnRNUpw804WOHa/O4DB1KD273SlCK/3MrQCVY3rwJMR80lEmkmI
 V73rzkrUTh4aVAdP88HlA7xoqYbRKxgXstUoKB7v6BzLVJSjSc40yUYA9
 luu7sKKxbT2MXeiCno3C6yZLT5ztXqvuYX9jQW/SiBHQeyhZsGwgnyJAr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BGrzLqr9
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 53/137]
 include/linux/net/intel/virtchnl.h:480:30: error: enumerator value for
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.89 / 15.00];
	MISSING_TO(2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:oe-kbuild-all@lists.linux.dev,m:anthony.l.nguyen@intel.com,m:sridhar.samudrala@intel.com,m:larysa.zaremba@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,01.org:url,osuosl.org:dkim,osuosl.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E2B36F260B

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   62cd994a473c1a7b1f9880e51d3c8ef8ae3b7550
commit: 4efec52d707a97415f9106aa4ae888ddf2644a09 [53/137] virtchnl: move virtchnl and virtchnl2 headers to 'include/linux/net/intel'
config: arm-randconfig-r051-20260702 (https://download.01.org/0day-ci/archive/20260702/202607020746.dwYTCJet-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 16.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260702/202607020746.dwYTCJet-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202607020746.dwYTCJet-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/iavf/iavf.h:30,
                    from drivers/net/ethernet/intel/iavf/iavf_main.c:7:
>> include/linux/net/intel/virtchnl.h:174:43: warning: division by zero [-Wdiv-by-zero]
     174 |         { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                           ^
   include/linux/net/intel/virtchnl.h:480:1: note: in expansion of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     480 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_irq_map_info);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/net/intel/virtchnl.h:480:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant
     480 | VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_irq_map_info);
         |                              ^~~~~~~~~~~~~~~~~~~~~
   include/linux/net/intel/virtchnl.h:174:60: note: in definition of macro 'VIRTCHNL_CHECK_STRUCT_LEN'
     174 |         { virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
         |                                                            ^


vim +/virtchnl_static_assert_virtchnl_irq_map_info +480 include/linux/net/intel/virtchnl.h

62683ab51e487f drivers/net/ethernet/intel/i40evf/i40e_virtchnl.h Greg Rose         2013-12-21  479  
5e7f59fa07f86f include/linux/avf/virtchnl.h                      Alexander Lobakin 2023-07-28 @480  VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_irq_map_info);
5e7f59fa07f86f include/linux/avf/virtchnl.h                      Alexander Lobakin 2023-07-28  481  #define virtchnl_irq_map_info_LEGACY_SIZEOF	14
73556269aab30c include/linux/avf/virtchnl.h                      Sridhar Samudrala 2017-05-11  482  

:::::: The code at line 480 was first introduced by commit
:::::: 5e7f59fa07f86f554c301c7a383bba54d5ef9819 virtchnl: fix fake 1-elem arrays in structures allocated as `nents + 1`

:::::: TO: Alexander Lobakin <aleksander.lobakin@intel.com>
:::::: CC: Tony Nguyen <anthony.l.nguyen@intel.com>

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
