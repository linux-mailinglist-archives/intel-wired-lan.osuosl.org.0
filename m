Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCeOMr8932mUQwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 09:26:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FED3401637
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 09:26:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 658A46F77F;
	Wed, 15 Apr 2026 07:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QvABjnu51Nfe; Wed, 15 Apr 2026 07:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39BB76F785
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776238011;
	bh=esQzNKC6HwS+exlqd5gf7daPqtQXdJ75qA78vlEpUZw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=X4GQ5l3kOmFG2vVHRRPaFfgVSHQfRALq2m0tPuH1KJKTdf3Ok2IBORaubYWwH7zo3
	 zmfK2pyEGIHaFaumMG+UbYPAyqVAEb1C3oHvSoq/2g7JGue4yYrpbMUCDC8YHzvQR7
	 vDDPM9bgzAaeBqOGva6yCNnUpL3xIjm+oKWJ8ZS3m0gY0g9jhnkRlKQrlhPxI8rrj0
	 HEJkcpUw6OVuR6CbUAz7fn8iY6bVMt18oSrVHgzoeJPZgqsT+lXFobhwb9GDNhu7Vi
	 ATKfr1OJIJpj5cBGJm4YajwwJ1pgWbmAe11gnZgszzykbd0GrzdysdmQlmUQQ6icNi
	 Ay7oBUOBp5GBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39BB76F785;
	Wed, 15 Apr 2026 07:26:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C081375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 07:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DC1440F4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 07:26:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2tTNeULIAbnS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 07:26:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 352F040F1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 352F040F1A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 352F040F1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 07:26:47 +0000 (UTC)
X-CSE-ConnectionGUID: lszl2E40SRSGSt6zdxb89A==
X-CSE-MsgGUID: K1kxWIj0SmmNUJnCh69vJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77113196"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77113196"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 00:26:47 -0700
X-CSE-ConnectionGUID: OCUn/vGsR8+1eeLL2IITsw==
X-CSE-MsgGUID: ftWdYEOlToaYE747T6QjZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227693480"
Received: from lkp-server01.sh.intel.com (HELO 7f3b36e5d6a5) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2026 00:26:43 -0700
Received: from kbuild by 7f3b36e5d6a5 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wCue0-000000000FB-451W;
 Wed, 15 Apr 2026 07:26:40 +0000
Date: Wed, 15 Apr 2026 15:26:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604151518.k6O79uC2-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776238009; x=1807774009;
 h=date:from:to:subject:message-id;
 bh=SgtV8TnUOHXqXs9kCqU7Bqu0CNuPyST9BhoYO+Z7jpA=;
 b=Nq6HS5KEfmVnCORacmcD4/eRccel/lvtx9x9sDam9CU05qV2faqikada
 xfG98sA6ygRde2oHJpZsMUTbqv0MvXHRPuS58ZR2JA7XnMjqG2dOQc3R7
 69Vl6H8PmXKFzs4cyLl5TVpl2CEKOHfM+N4tvUOzYjmjl7BhSOraCky2Z
 RFcBMD9ayj+vuphG1FiD1Qc8R9D6AQq9Odi63K11gbpUiUdIiLfNAlw4O
 6J6NcBDYMHRz+OICQSAAbc0OaiGy3uq6TNasGcjk/WsV98k624HjYcIoh
 w5mwWRA9nbMaTIhBMQoX4QrFr9Km2mDKZFZa0NKpZtEo/dZ6/A4HykKP3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nq6HS5KE
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 b9d8b856689d2b968495d79fe653d87fcb8ad98c
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	NEURAL_HAM(-0.00)[-0.997];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9FED3401637
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: b9d8b856689d2b968495d79fe653d87fcb8ad98c  net: airoha: Add missing PPE configurations in airoha_ppe_hw_init()

elapsed time: 723m

configs tested: 92
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                     davinci_all_defconfig    clang-19
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386                  randconfig-001-20260415    gcc-14
i386                  randconfig-002-20260415    clang-20
i386                  randconfig-003-20260415    gcc-13
i386                  randconfig-004-20260415    clang-20
i386                  randconfig-005-20260415    clang-20
i386                  randconfig-006-20260415    clang-20
i386                  randconfig-007-20260415    clang-20
i386                  randconfig-011-20260415    gcc-14
i386                  randconfig-012-20260415    clang-20
i386                  randconfig-013-20260415    gcc-14
i386                  randconfig-014-20260415    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-002-20260415    gcc-13
x86_64      buildonly-randconfig-003-20260415    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260415    gcc-14
x86_64                randconfig-002-20260415    clang-20
x86_64                randconfig-003-20260415    clang-20
x86_64                randconfig-004-20260415    gcc-14
x86_64                randconfig-005-20260415    gcc-14
x86_64                randconfig-006-20260415    gcc-14
x86_64                randconfig-071-20260415    clang-20
x86_64                randconfig-072-20260415    clang-20
x86_64                randconfig-073-20260415    gcc-13
x86_64                randconfig-074-20260415    clang-20
x86_64                randconfig-075-20260415    clang-20
x86_64                randconfig-076-20260415    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
