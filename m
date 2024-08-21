Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE5395A36E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 19:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA3E54058B;
	Wed, 21 Aug 2024 17:03:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uAB1rmiLzDuI; Wed, 21 Aug 2024 17:03:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A93040586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724259786;
	bh=jxgeukDvY9k40pG/sFIHiL0CSCpMDx5etmx+NCtz5Kg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=efwx8JW0w26GnskNKIP07ogrSM8c+/5Sx2xSgyqIPF+FlCsdQBvcXx8kKSb/v5W9z
	 WPLjMWURdRRIl7kmS8qLX3mZbmIewwQn2kzW8gOxWbkuZPyCcl+xYTLRPpT2XaNqS/
	 x0yS1gqnXEWZc4/AHB2oNoqK4yO2BX/MkGmOIrlbHq4cFtZNt42/QAhP5Ct5zrSTQy
	 QN91zrR3nfINDZsrxzvqezqEaxh47Aowoe+dBydXoKOt19ydEFW9u9g1xwAanZ2ktH
	 8Vf8RfPU3ZYxhL+DCtSUZuW5a3o+TQTCCARpJA45OSTg7J2Eghu/trIpb76LIBKHHc
	 RyXzhaRIDu84Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A93040586;
	Wed, 21 Aug 2024 17:03:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1481BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 17:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1914860676
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 17:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dm3489jLa2l3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 17:03:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4AB16066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4AB16066F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4AB16066F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 17:03:02 +0000 (UTC)
X-CSE-ConnectionGUID: d9O2mmDgS5+MGmoULbUiCA==
X-CSE-MsgGUID: DqEKFlYqQG2AMazxBLk5+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22801190"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22801190"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 10:02:55 -0700
X-CSE-ConnectionGUID: Qn31A21YTz2KvHoFILaoNQ==
X-CSE-MsgGUID: P9GKd4+XR9iJTAWTMqIJXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61902045"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 21 Aug 2024 10:02:51 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sgojQ-000BjF-2C
 for intel-wired-lan@lists.osuosl.org; Wed, 21 Aug 2024 17:02:48 +0000
Date: Thu, 22 Aug 2024 01:01:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408220152.XghIPiaV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724259782; x=1755795782;
 h=date:from:to:subject:message-id;
 bh=TY78gnFlqF7GGVbW9/xpQPfOX0TfBO71iyDzxucirBI=;
 b=CVwUDKRu9SvxvEI5YXDf277wis7rpjeTJUKV3oVpnELEiSh+bPdpsWwh
 sCvBAl7qNj5l6etxv3dMEI0KzsdkQqiM8hZSDhmBmRBzFCv2SLrH1iI3+
 AXpYA6hA+fzig1juNpGOe1yDxWYOACzQZoUsW62qpVK+HNK8RJvn6Cl8s
 Dx+AIITKiHanvf6kzY7Vq9F8/pPweY73jT+TTAKVSdA8HZcspySOJ3iG2
 T/l6nqw+gLhDPVCNI1JeNWMzzjrnJEdectEL2MGMEhtRSbx1bQHwJNcqK
 Pv4mydtxkJIsdxMu2xVnqkgAkDXMlPgLRL1GP+MskjUQqffwcBoMQMLcb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CVwUDKRu
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5c820c0d09067ec782a6a84b5362e899662eafea
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
branch HEAD: 5c820c0d09067ec782a6a84b5362e899662eafea  ice: use internal pf id instead of function number

elapsed time: 1457m

configs tested: 155
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240821   gcc-13.2.0
arc                   randconfig-002-20240821   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                            qcom_defconfig   clang-20
arm                   randconfig-001-20240821   gcc-14.1.0
arm                   randconfig-002-20240821   gcc-14.1.0
arm                   randconfig-003-20240821   clang-20
arm                   randconfig-004-20240821   gcc-14.1.0
arm                       versatile_defconfig   gcc-14.1.0
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240821   gcc-14.1.0
arm64                 randconfig-002-20240821   gcc-14.1.0
arm64                 randconfig-003-20240821   gcc-14.1.0
arm64                 randconfig-004-20240821   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240821   gcc-14.1.0
csky                  randconfig-002-20240821   gcc-14.1.0
hexagon                          alldefconfig   clang-15
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240821   clang-20
hexagon               randconfig-002-20240821   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240821   gcc-12
i386         buildonly-randconfig-002-20240821   clang-18
i386         buildonly-randconfig-003-20240821   clang-18
i386         buildonly-randconfig-004-20240821   gcc-12
i386         buildonly-randconfig-005-20240821   gcc-12
i386         buildonly-randconfig-006-20240821   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240821   clang-18
i386                  randconfig-002-20240821   gcc-12
i386                  randconfig-003-20240821   clang-18
i386                  randconfig-004-20240821   gcc-12
i386                  randconfig-005-20240821   clang-18
i386                  randconfig-006-20240821   gcc-12
i386                  randconfig-011-20240821   gcc-11
i386                  randconfig-012-20240821   gcc-12
i386                  randconfig-013-20240821   clang-18
i386                  randconfig-014-20240821   clang-18
i386                  randconfig-015-20240821   gcc-12
i386                  randconfig-016-20240821   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240821   gcc-14.1.0
loongarch             randconfig-002-20240821   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          atari_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                     decstation_defconfig   gcc-13.2.0
mips                            gpr_defconfig   clang-20
mips                           ip30_defconfig   gcc-14.1.0
mips                           xway_defconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240821   gcc-14.1.0
nios2                 randconfig-002-20240821   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240821   gcc-14.1.0
parisc                randconfig-002-20240821   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                       ebony_defconfig   clang-20
powerpc                      pmac32_defconfig   clang-20
powerpc               randconfig-001-20240821   gcc-14.1.0
powerpc               randconfig-002-20240821   clang-20
powerpc64             randconfig-001-20240821   gcc-14.1.0
powerpc64             randconfig-002-20240821   clang-20
powerpc64             randconfig-003-20240821   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240821   gcc-14.1.0
riscv                 randconfig-002-20240821   clang-16
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240821   clang-17
s390                  randconfig-002-20240821   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                        apsh4ad0a_defconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240821   gcc-14.1.0
sh                    randconfig-002-20240821   gcc-14.1.0
sh                          rsk7203_defconfig   gcc-14.1.0
sh                          rsk7264_defconfig   gcc-14.1.0
sh                           sh2007_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240821   gcc-14.1.0
sparc64               randconfig-002-20240821   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240821   clang-20
um                    randconfig-002-20240821   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240821   gcc-12
x86_64       buildonly-randconfig-002-20240821   clang-18
x86_64       buildonly-randconfig-003-20240821   gcc-12
x86_64       buildonly-randconfig-004-20240821   gcc-12
x86_64       buildonly-randconfig-005-20240821   gcc-12
x86_64       buildonly-randconfig-006-20240821   gcc-12
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240821   clang-18
x86_64                randconfig-002-20240821   gcc-12
x86_64                randconfig-003-20240821   clang-18
x86_64                randconfig-004-20240821   clang-18
x86_64                randconfig-005-20240821   clang-18
x86_64                randconfig-006-20240821   gcc-12
x86_64                randconfig-011-20240821   gcc-12
x86_64                randconfig-012-20240821   clang-18
x86_64                randconfig-013-20240821   clang-18
x86_64                randconfig-014-20240821   clang-18
x86_64                randconfig-015-20240821   gcc-12
x86_64                randconfig-016-20240821   clang-18
x86_64                randconfig-071-20240821   gcc-12
x86_64                randconfig-072-20240821   clang-18
x86_64                randconfig-073-20240821   gcc-12
x86_64                randconfig-074-20240821   clang-18
x86_64                randconfig-075-20240821   gcc-12
x86_64                randconfig-076-20240821   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240821   gcc-14.1.0
xtensa                randconfig-002-20240821   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
