Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gy3rHBgkRmqIKgsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 10:40:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 880746F4E43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 10:40:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=9xIj4FQs;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90E5F40ECD;
	Thu,  2 Jul 2026 08:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuSZIuEBpqiF; Thu,  2 Jul 2026 08:40:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E25A540721
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782981650;
	bh=DFjrKQTBcGShdUgTYcC9uV1aPLXjysQX1WIEXEFFD64=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9xIj4FQsGTNVHbH9Xw+i8UEO2xgYx5laDTxD+qwKOfIyOKSEzXlHHPjuRJGd/bO35
	 Zv+W8nhhkhbZRwPWNLUjIRWkMddHYzZfoiNEv69gJVo/tEFXFJsDrdsriCQfGlzcO7
	 K4qW1BajsPTNChCBRQaVyzF2KeypKuNH4GKUiPvHFMVFN+vLtrLLgeCrKlaszftDAy
	 kPMAmw3+8VMRPj8aVbXW0X4heIcCvpVqbEwGIYPlAnPm/iZUc+FLLgEfLdpra+WmYv
	 knLtPp3WSiYopdgKMCUsgkXzSAxIFNRMWogFOXwA1HUcgFnDHy64ewKQs30BREWH2o
	 eDgLNX8WnLDFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E25A540721;
	Thu,  2 Jul 2026 08:40:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9787D4B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 08:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E13340437
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 08:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zofYpIseu6YG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 08:40:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B35640410
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B35640410
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B35640410
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 08:40:48 +0000 (UTC)
X-CSE-ConnectionGUID: pUSQnWBuRp+njoXSeiUatw==
X-CSE-MsgGUID: R4L+LfJ/RiqAhmVIigyikw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87406648"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87406648"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 01:40:48 -0700
X-CSE-ConnectionGUID: kB12bzolSV26PMOh+OfN9A==
X-CSE-MsgGUID: MHnYQq2nSjWqK27Z+K/mIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="248347548"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 02 Jul 2026 01:40:46 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wfCyS-00000000AYB-16Ph;
 Thu, 02 Jul 2026 08:40:44 +0000
Date: Thu, 02 Jul 2026 16:40:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607021619.EaacbyDO-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782981649; x=1814517649;
 h=date:from:to:subject:message-id;
 bh=g+8zVvHwYGrAiLV2+K1tV6oEBN06yz9NBAhBe/e86Tk=;
 b=eteQ1MLbxhlDovtNltQVcbRyNjRGA3+prpMQ4fubv26CRvlfBg+KNatN
 fwe3+JCujlAtQLe/2EbKy2/q4Nbspj6Oj4d2s3fgd1RzpiCn5g/A48KID
 T/qdyUz/LRlb8ZdPeMgXaiF8bKdrcuHIme99Vba2c6BjcevArSldg2Xcv
 588YWtGLOuZKlI2CM0H9qZpAmka3CDhcfB+68anXXyfbP7uQo7upKdfTa
 VT7I4HPW8QbehY2Oky3jX0hJhsVSzMB7LFTIFmeLrv/IdQEReE80rTa2P
 scdCLu/etHvhG+u2uJqbwPAtY7QUQb9cC70XJ6p2lVm9afc4DNMV6FLS+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eteQ1MLb
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 62cd994a473c1a7b1f9880e51d3c8ef8ae3b7550
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 880746F4E43

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 62cd994a473c1a7b1f9880e51d3c8ef8ae3b7550  ice: refactor ice_sched_cfg_agg to take agg_info pointer

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202607020746.dwYTCJet-lkp@intel.com

    include/linux/net/intel/virtchnl.h:174:43: warning: division by zero [-Wdiv-by-zero]
    include/linux/net/intel/virtchnl.h:480:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant

Error/Warning ids grouped by kconfigs:

recent_errors
`-- arm-randconfig-r051-20260702
    |-- include-linux-net-intel-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_irq_map_info-is-not-an-integer-constant
    `-- include-linux-net-intel-virtchnl.h:warning:division-by-zero

elapsed time: 726m

configs tested: 79
configs skipped: 0

tested configs:
alpha                   allnoconfig    gcc-16.1.0
alpha                  allyesconfig    gcc-16.1.0
alpha                     defconfig    gcc-16.1.0
arc                    allmodconfig    gcc-16.1.0
arc                     allnoconfig    gcc-16.1.0
arc                    allyesconfig    gcc-16.1.0
arc                       defconfig    gcc-16.1.0
arm                     allnoconfig    clang-17
arm                    allyesconfig    gcc-16.1.0
arm64                  allmodconfig    clang-23
arm64                   allnoconfig    gcc-16.1.0
csky                   allmodconfig    gcc-16.1.0
csky                    allnoconfig    gcc-16.1.0
hexagon                allmodconfig    clang-23
hexagon                 allnoconfig    clang-23
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                   allyesconfig    gcc-14
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-20
m68k                   allmodconfig    gcc-16.1.0
m68k                    allnoconfig    gcc-16.1.0
m68k                   allyesconfig    gcc-16.1.0
microblaze              allnoconfig    gcc-16.1.0
microblaze             allyesconfig    gcc-16.1.0
mips                   allmodconfig    gcc-16.1.0
mips                    allnoconfig    gcc-16.1.0
mips                   allyesconfig    gcc-16.1.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
openrisc               allmodconfig    gcc-16.1.0
openrisc                allnoconfig    gcc-16.1.0
parisc                 allmodconfig    gcc-16.1.0
parisc                  allnoconfig    gcc-16.1.0
parisc                 allyesconfig    gcc-16.1.0
parisc               randconfig-001    gcc-8.5.0
parisc      randconfig-001-20260702    gcc-10.5.0
parisc               randconfig-002    gcc-12.5.0
powerpc                allmodconfig    gcc-16.1.0
powerpc                 allnoconfig    gcc-16.1.0
powerpc              randconfig-001    gcc-10.5.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    gcc-16.1.0
riscv                  allyesconfig    clang-23
riscv       randconfig-001-20260702    gcc-15.2.0
riscv       randconfig-002-20260702    clang-23
s390                   allmodconfig    clang-23
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-16.1.0
s390        randconfig-001-20260702    clang-23
s390        randconfig-002-20260702    gcc-12.5.0
sh                     allmodconfig    gcc-16.1.0
sh                      allnoconfig    gcc-16.1.0
sh                     allyesconfig    gcc-16.1.0
sh                        defconfig    gcc-16.1.0
sh          randconfig-001-20260702    gcc-16.1.0
sh          randconfig-002-20260702    gcc-15.2.0
sparc                   allnoconfig    gcc-16.1.0
sparc64                allmodconfig    clang-20
sparc64                   defconfig    clang-23
um                     allmodconfig    clang-17
um                      allnoconfig    clang-17
um                     allyesconfig    gcc-14
um                        defconfig    clang-23
um                   i386_defconfig    gcc-14
um                 x86_64_defconfig    clang-23
x86_64                 allmodconfig    clang-22
x86_64                  allnoconfig    clang-22
x86_64                 allyesconfig    clang-22
x86_64                    defconfig    gcc-14
x86_64      randconfig-001-20260702    clang-22
x86_64      randconfig-002-20260702    gcc-14
x86_64      randconfig-003-20260702    clang-22
x86_64      randconfig-004-20260702    gcc-14
x86_64      randconfig-005-20260702    clang-22
x86_64      randconfig-006-20260702    gcc-14
x86_64                rhel-9.4-rust    clang-22
xtensa                  allnoconfig    gcc-16.1.0
xtensa                 allyesconfig    gcc-16.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
