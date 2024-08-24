Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB2F95E045
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Aug 2024 00:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 015DB811E1;
	Sat, 24 Aug 2024 22:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kq0TZ6Rt2OY1; Sat, 24 Aug 2024 22:54:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6FA281310
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724540060;
	bh=8Vfo1ItHk7PJk8rULhPrf5ifbS96I2Y3frkabI5YWOk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3YRyhTqpUkXkvYwJRyuuaaDBBXTF0vnpRX8gXQQUVj4pLOBzELMmOKLdqkhD2y1WF
	 vbow/BvBi/C5DUS4gAf1aCFjhTNtJq5gPT1hXRmrryA8mqVn1Gc+cYUrz9DwcW0qFW
	 xXXtwrswzacLgb4WQXD5MuT61LA18Td7dJ6W3lZ8kii9I79O3EYNuOgiwRXp3JG2ch
	 cgQpmTtSaCURf1Tt3/lfAKOZnIDY8IOSEoAMlWD3ABsAelPlTmbtoviDsXWD5yLfRW
	 z+qrNsendxBT7REcfrb0e6/ljC2xRmWdfXIQ0nmHnus1C38BJ+ZpWJqCnB9Xt1DdjA
	 K/xjnP6CcxbpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6FA281310;
	Sat, 24 Aug 2024 22:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1F451BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 22:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFF1060602
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 22:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UKbdUFcI0brr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Aug 2024 22:54:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8D9CA605E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D9CA605E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D9CA605E8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 22:54:18 +0000 (UTC)
X-CSE-ConnectionGUID: DD8TaUHcQ6mgOBEVQVFk5w==
X-CSE-MsgGUID: sjhhY9VLSTWeJcAT67LFKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="26756212"
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="26756212"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2024 15:54:18 -0700
X-CSE-ConnectionGUID: zmCBHgRxTSWcKCvJkIABcw==
X-CSE-MsgGUID: vTwYhUbXSAW93q1RBqFxVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="61980954"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 24 Aug 2024 15:54:17 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1shzeA-000Emd-0s
 for intel-wired-lan@lists.osuosl.org; Sat, 24 Aug 2024 22:54:14 +0000
Date: Sun, 25 Aug 2024 06:53:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408250645.m6jtyZKb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724540059; x=1756076059;
 h=date:from:to:subject:message-id;
 bh=QEhU+EaYX9uV/M2thFlh045tKezsCbhAa+818D9ROoY=;
 b=QMO/zMnyyRXk05qoxAhiJleKTUWd/OI90g1N/CV+GOtFO5DWTWi4sN8M
 skeow3b9H1WfMMtv4YQNmQrrJ2bECti7DSnT4o7HF67jRv/Ke7uK2ZtVW
 9fCgSZ1iUCm5Iw9D17pv1+IjzeNNqoKJCOjawfI9aW3kZEvctWSqNdAtR
 kz+hxPnW4tA5/D4hgg/OvRbtgZb/DhDo3HmLPOKkGk5UfL7kGMoAL9Ibv
 /VFguC2duw9d0At1xM7seBdn1oxTu8e/6GdakijgXAmYBtst/WNNX7pde
 a/FPQSjw7A5A/YVFG6R8rb+XdbdrcX2vjSrF8T1iO9C1PwMHDMWfzM7PO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QMO/zMny
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 18db178f87087fa608b1c1c21e353c21288e9ad9
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 18db178f87087fa608b1c1c21e353c21288e9ad9  ice: Drop auxbus use for PTP to finalize ice_adapter move

elapsed time: 1508m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240825   gcc-13.2.0
arc                   randconfig-002-20240825   gcc-13.2.0
arm                               allnoconfig   clang-20
arm                       imx_v6_v7_defconfig   clang-20
arm                        neponset_defconfig   gcc-14.1.0
arm                   randconfig-001-20240825   clang-20
arm                   randconfig-002-20240825   gcc-14.1.0
arm                   randconfig-003-20240825   gcc-14.1.0
arm                   randconfig-004-20240825   gcc-14.1.0
arm                         wpcm450_defconfig   gcc-14.1.0
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240825   clang-20
arm64                 randconfig-002-20240825   gcc-14.1.0
arm64                 randconfig-003-20240825   clang-20
arm64                 randconfig-004-20240825   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240825   gcc-14.1.0
csky                  randconfig-002-20240825   gcc-14.1.0
hexagon                           allnoconfig   clang-20
hexagon               randconfig-001-20240825   clang-20
hexagon               randconfig-002-20240825   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240824   clang-18
i386         buildonly-randconfig-002-20240824   clang-18
i386         buildonly-randconfig-003-20240824   clang-18
i386         buildonly-randconfig-004-20240824   clang-18
i386         buildonly-randconfig-005-20240824   gcc-12
i386         buildonly-randconfig-006-20240824   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240824   clang-18
i386                  randconfig-002-20240824   clang-18
i386                  randconfig-003-20240824   gcc-12
i386                  randconfig-004-20240824   gcc-11
i386                  randconfig-005-20240824   gcc-12
i386                  randconfig-006-20240824   clang-18
i386                  randconfig-011-20240824   clang-18
i386                  randconfig-012-20240824   gcc-12
i386                  randconfig-013-20240824   gcc-12
i386                  randconfig-014-20240824   gcc-12
i386                  randconfig-015-20240824   gcc-12
i386                  randconfig-016-20240824   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240825   gcc-14.1.0
loongarch             randconfig-002-20240825   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          amiga_defconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                          ath79_defconfig   gcc-14.1.0
mips                           ip32_defconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240825   gcc-14.1.0
nios2                 randconfig-002-20240825   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240825   gcc-14.1.0
parisc                randconfig-002-20240825   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                      ep88xc_defconfig   gcc-14.1.0
powerpc                 mpc8315_rdb_defconfig   clang-20
powerpc               randconfig-001-20240825   gcc-14.1.0
powerpc               randconfig-002-20240825   gcc-14.1.0
powerpc64             randconfig-001-20240825   gcc-14.1.0
powerpc64             randconfig-003-20240825   gcc-14.1.0
riscv                            alldefconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240825   gcc-14.1.0
riscv                 randconfig-002-20240825   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                                defconfig   clang-20
s390                  randconfig-001-20240825   clang-20
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                        edosk7705_defconfig   gcc-14.1.0
sh                            migor_defconfig   gcc-14.1.0
sh                          rsk7269_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
