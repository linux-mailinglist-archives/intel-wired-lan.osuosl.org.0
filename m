Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDmzFA9l92n6gwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 03 May 2026 17:09:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 474B54B62C9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 03 May 2026 17:09:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 778DF612AE;
	Sun,  3 May 2026 15:09:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GHiq0X4cFRU9; Sun,  3 May 2026 15:08:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 901F4612A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777820939;
	bh=X6fBHJ81kUrgxlJ9T2lSxeZcUnO8eS8DqfOtuoNkHrA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=z5c3daYY/gasOa3pejHiiaRqjDouEhV168BFHSwN9gEpjtfMNBc59C8RGYIgKzxeZ
	 y/vlIiWhjQQgA0BIQ2H+hj2dd17xr9Z5D29QgNm7/GM5r8smHH+gLnWCb1fNxCjD8A
	 QVZtbzyTbMo2j/1+eduIrs9cM1yGMgK1DFteoQkICKqvRd28tPsiDnR9Mve0a12NgR
	 6lHJglf5XBb45yQxKyzZAhgr3nFuzkdRTrsE9Xdn4pMECsvQXHZ5KgM5HJ85ECatYv
	 2EWzoVBcOVniigzYAtwa9ZwtH9kT+TZX0jWOk+KHUI9G35sFj32ttOR0G+jXF2gP9w
	 pli93qZS9G8yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 901F4612A1;
	Sun,  3 May 2026 15:08:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4738C190
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 May 2026 15:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 272C66129D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 May 2026 15:08:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mx3UdjP5mN7s for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 May 2026 15:08:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F39C361299
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F39C361299
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F39C361299
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 May 2026 15:08:56 +0000 (UTC)
X-CSE-ConnectionGUID: Mq6+xMlHSx2iN+le0qWqgg==
X-CSE-MsgGUID: Jz2Y0NTcTiShwKSMzlyDLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82314435"
X-IronPort-AV: E=Sophos;i="6.23,213,1770624000"; d="scan'208";a="82314435"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 08:08:57 -0700
X-CSE-ConnectionGUID: O1cvfSpaQmyocCdf7CwLjA==
X-CSE-MsgGUID: sTrf748lRQK7aL3wecPSjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,213,1770624000"; d="scan'208";a="265652744"
Received: from lkp-server01.sh.intel.com (HELO 781826d00641) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 03 May 2026 08:08:55 -0700
Received: from kbuild by 781826d00641 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wJYRA-000000002fd-2JxF;
 Sun, 03 May 2026 15:08:52 +0000
Date: Sun, 03 May 2026 23:08:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605032300.VDzAQDVZ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777820938; x=1809356938;
 h=date:from:to:subject:message-id;
 bh=bVZUBnFi8fVpF3WW7DkHNNqLBQj0jYUmIh1gv+BssOA=;
 b=XigVpqAfetaXPcdlKm7E+FWlPaFRx/WqYD0hYdSZs6VgFgaB9Wa19MdY
 8/9rvLBhRto0NIPwBOh2mIpTNcUqI5fNBwMJ4lWzu2MowEDpMoasqj0pT
 jjNzfQo4mZVkmaw1gwSGTO4MiP7EP9OTCJR5whdzQyF8p2kf9Z5+bLJ0r
 DAkG62SyaDQR+9193N/e6S5hOXNk5oIwIAVqMmbkLvW7aSwL8zEeV/1vD
 Q93Xut97UR3Ax04cU2to8+1x1iedn1k5WO+22jgNByvSbDRTQKCr0XHo3
 b1Dikay/PjKlqPOlQgK6B6p/MgqZNZhn1HW4eGC3m3b9KcoQoNrk5Pxod
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XigVpqAf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 03bfd1fd4cea5b5be0d50475802a29a8de476969
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
X-Rspamd-Queue-Id: 474B54B62C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	NEURAL_HAM(-0.00)[-0.582];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 03bfd1fd4cea5b5be0d50475802a29a8de476969  e1000e: Use __napi_schedule_irqoff()

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202605030146.fEzMWDym-lkp@intel.com

    include/linux/intel/virtchnl.h:174:43: warning: division by zero [-Wdiv-by-zero]
    include/linux/intel/virtchnl.h:480:30: error: enumerator value for 'virtchnl_static_assert_virtchnl_irq_map_info' is not an integer constant

Error/Warning ids grouped by kconfigs:

recent_errors
`-- arm-randconfig-004-20260502
    |-- include-linux-intel-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_irq_map_info-is-not-an-integer-constant
    `-- include-linux-intel-virtchnl.h:warning:division-by-zero

elapsed time: 3774m

configs tested: 195
configs skipped: 6

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              alldefconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-19
arc                                 defconfig    gcc-15.2.0
arc                            randconfig-001    gcc-8.5.0
arc                   randconfig-001-20260503    gcc-8.5.0
arc                            randconfig-002    gcc-8.5.0
arc                   randconfig-002-20260503    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            randconfig-001    gcc-8.5.0
arm                   randconfig-001-20260503    gcc-8.5.0
arm                            randconfig-002    gcc-8.5.0
arm                   randconfig-003-20260503    gcc-8.5.0
arm                            randconfig-004    gcc-8.5.0
arm                   randconfig-004-20260503    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                          randconfig-001    gcc-15.2.0
arm64                 randconfig-001-20260503    gcc-15.2.0
arm64                          randconfig-002    gcc-15.2.0
arm64                 randconfig-002-20260503    gcc-15.2.0
arm64                          randconfig-003    gcc-15.2.0
arm64                 randconfig-003-20260503    gcc-15.2.0
arm64                          randconfig-004    gcc-15.2.0
arm64                 randconfig-004-20260503    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                           randconfig-001    gcc-15.2.0
csky                  randconfig-001-20260503    gcc-15.2.0
csky                           randconfig-002    gcc-15.2.0
csky                  randconfig-002-20260503    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260503    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260503    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260503    clang-20
i386        buildonly-randconfig-002-20260503    clang-20
i386        buildonly-randconfig-003-20260503    clang-20
i386        buildonly-randconfig-004-20260503    clang-20
i386        buildonly-randconfig-005-20260503    clang-20
i386        buildonly-randconfig-006-20260503    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260503    clang-20
i386                  randconfig-002-20260503    clang-20
i386                  randconfig-003-20260503    clang-20
i386                  randconfig-004-20260503    clang-20
i386                  randconfig-005-20260503    clang-20
i386                  randconfig-006-20260503    clang-20
i386                  randconfig-007-20260503    clang-20
i386                  randconfig-011-20260503    clang-20
i386                  randconfig-012-20260503    clang-20
i386                  randconfig-013-20260503    clang-20
i386                  randconfig-014-20260503    clang-20
i386                  randconfig-015-20260503    clang-20
i386                  randconfig-016-20260503    clang-20
i386                  randconfig-017-20260503    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260503    gcc-11.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260503    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260503    gcc-11.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260503    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260503    gcc-15.2.0
parisc                randconfig-002-20260503    gcc-15.2.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260503    gcc-15.2.0
powerpc               randconfig-002-20260503    gcc-15.2.0
powerpc64             randconfig-001-20260503    gcc-15.2.0
powerpc64             randconfig-002-20260503    gcc-15.2.0
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260503    clang-23
riscv                 randconfig-002-20260503    clang-23
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260503    clang-23
s390                  randconfig-002-20260503    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260503    clang-23
sh                    randconfig-002-20260503    clang-23
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260503    gcc-15.2.0
sparc                 randconfig-002-20260503    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260503    gcc-15.2.0
sparc64               randconfig-002-20260503    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260503    gcc-15.2.0
um                    randconfig-002-20260503    gcc-15.2.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260503    clang-20
x86_64      buildonly-randconfig-002-20260503    clang-20
x86_64      buildonly-randconfig-003-20260503    clang-20
x86_64      buildonly-randconfig-004-20260503    clang-20
x86_64      buildonly-randconfig-005-20260503    clang-20
x86_64      buildonly-randconfig-006-20260503    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20260503    clang-20
x86_64                randconfig-012-20260503    clang-20
x86_64                randconfig-013-20260503    clang-20
x86_64                randconfig-014-20260503    clang-20
x86_64                randconfig-015-20260503    clang-20
x86_64                randconfig-016-20260503    clang-20
x86_64                randconfig-071-20260503    clang-20
x86_64                randconfig-072-20260503    clang-20
x86_64                randconfig-073-20260503    clang-20
x86_64                randconfig-074-20260503    clang-20
x86_64                randconfig-075-20260503    clang-20
x86_64                randconfig-076-20260503    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260503    gcc-15.2.0
xtensa                randconfig-002-20260503    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
