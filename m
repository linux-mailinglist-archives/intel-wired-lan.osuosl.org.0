Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4603A909BED
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jun 2024 08:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35C0460789;
	Sun, 16 Jun 2024 06:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id geydLd2_UmDo; Sun, 16 Jun 2024 06:41:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB1DC606C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718520099;
	bh=m7fQZo2grqoo7xB1G9FqAJXMEZE7yHan2mro3rYx8k0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GH/rPncShAndWGLBVjJPKoCcKSxDVbK/KL+QY0IK0+/xNKxCImugxhR/M7T4sr36U
	 cRIKc8Uoe8o44v/Lxzbgd5nvgs+rbrl8t15auTg0eBx/2qYavunkFwkJIZCNVxrCOq
	 AW0kk4+/wLQhnD5Wcu/XuqlZ7MU/YUOLkg53Zo4jDHSdLizUJAuHoCPB0WS8VCRiHB
	 ZH+gPMDDJXbPFVUsunDhspB/IY9Bzpsq3JgAlXThelv1vRW9/ibAQRPgo4EmhrEoHk
	 RXnLp6DFC785pkE/aAJ87wmg6ZBV7poTwxvMFmXNTUcvKRbSdBH0ITpcT5vt4Q8yxh
	 W0PEpb8hUHIIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB1DC606C2;
	Sun, 16 Jun 2024 06:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 217CB1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 06:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06E21401E1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 06:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ExO9iMD74lmE for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Jun 2024 06:41:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BBA5401B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BBA5401B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BBA5401B1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 06:41:34 +0000 (UTC)
X-CSE-ConnectionGUID: sWiqce++Qiar+hi9oT8NEg==
X-CSE-MsgGUID: dwv9sjYKQzSxoaamwJq1dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11104"; a="19197485"
X-IronPort-AV: E=Sophos;i="6.08,241,1712646000"; d="scan'208";a="19197485"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2024 23:41:34 -0700
X-CSE-ConnectionGUID: h0yonFuBRu+q29Teeg0Vsw==
X-CSE-MsgGUID: yYAJgSPlTumPRRY1+2E1Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,241,1712646000"; d="scan'208";a="45286310"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2024 23:41:32 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIjZy-0001NB-29
 for intel-wired-lan@lists.osuosl.org; Sun, 16 Jun 2024 06:41:30 +0000
Date: Sun, 16 Jun 2024 14:40:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406161433.a5LImiIu-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718520096; x=1750056096;
 h=date:from:to:subject:message-id;
 bh=h8EtqZRN/H9X7B1n22xoV0Pe2TI99FEJcpbB3UOy0MU=;
 b=ia68noR/xl4wrIV52lrwasLW3ePE4OccyWHK50nSzeuw/JTizRLWUTbE
 KMI88292ju/rwKyw+zDpFIzC6nNkrPAUhzwP19/ty2ju6RJsEaYznKI4V
 dSPQEmuGrYD5N++IYhsvSyNxp0AjtjC5WFUceaht2hgrcs3bjowS43L41
 U/oW1dImQVjNOf3Lm4cNRJOeaG4MHitiBkAx3StSDhEWQYwNkOhoPv8xy
 2OKLS2XQQfOr9w/eBGrGNo6TPUqMTegkwLZWCdFHn8tBMMTD8kGUvS+wL
 UChDsmfVomhDC0AwxMWqfQE3SOCj+xUS50JRLkGxEIL42XHcc4PvO3f0I
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ia68noR/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 37cf9b0b18612fcb52a819518074e4a0beabe29a
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
branch HEAD: 37cf9b0b18612fcb52a819518074e4a0beabe29a  igc: Get rid of spurious interrupts

elapsed time: 2182m

configs tested: 117
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240615   gcc-13.2.0
arc                   randconfig-002-20240615   gcc-13.2.0
arm                   randconfig-001-20240615   clang-19
arm                   randconfig-002-20240615   clang-19
arm                   randconfig-003-20240615   gcc-13.2.0
arm                   randconfig-004-20240615   gcc-13.2.0
arm                         vf610m4_defconfig   gcc-13.2.0
arm64                 randconfig-001-20240615   clang-19
arm64                 randconfig-002-20240615   gcc-13.2.0
arm64                 randconfig-003-20240615   clang-17
arm64                 randconfig-004-20240615   gcc-13.2.0
csky                  randconfig-001-20240615   gcc-13.2.0
csky                  randconfig-002-20240615   gcc-13.2.0
hexagon               randconfig-001-20240615   clang-19
hexagon               randconfig-002-20240615   clang-19
i386         buildonly-randconfig-001-20240615   clang-18
i386         buildonly-randconfig-002-20240615   gcc-9
i386         buildonly-randconfig-003-20240615   gcc-7
i386         buildonly-randconfig-004-20240615   clang-18
i386         buildonly-randconfig-005-20240615   clang-18
i386         buildonly-randconfig-006-20240615   gcc-13
i386                  randconfig-001-20240615   clang-18
i386                  randconfig-002-20240615   gcc-13
i386                  randconfig-003-20240615   clang-18
i386                  randconfig-004-20240615   clang-18
i386                  randconfig-005-20240615   clang-18
i386                  randconfig-006-20240615   clang-18
i386                  randconfig-011-20240615   clang-18
i386                  randconfig-012-20240615   gcc-12
i386                  randconfig-013-20240615   gcc-13
i386                  randconfig-014-20240615   clang-18
i386                  randconfig-015-20240615   clang-18
i386                  randconfig-016-20240615   gcc-13
loongarch             randconfig-001-20240615   gcc-13.2.0
loongarch             randconfig-002-20240615   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-13.2.0
mips                        bcm47xx_defconfig   clang-15
mips                     cu1000-neo_defconfig   gcc-13.2.0
mips                malta_qemu_32r6_defconfig   gcc-13.2.0
mips                        omega2p_defconfig   clang-19
nios2                 randconfig-001-20240615   gcc-13.2.0
nios2                 randconfig-002-20240615   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240615   gcc-13.2.0
parisc                randconfig-002-20240615   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                      mgcoge_defconfig   clang-19
powerpc               randconfig-001-20240615   clang-19
powerpc               randconfig-002-20240615   clang-19
powerpc               randconfig-003-20240615   clang-19
powerpc64             randconfig-001-20240615   clang-19
powerpc64             randconfig-002-20240615   clang-19
powerpc64             randconfig-003-20240615   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                    nommu_k210_defconfig   clang-19
riscv                 randconfig-001-20240615   clang-19
riscv                 randconfig-002-20240615   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                          debug_defconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240615   clang-16
s390                  randconfig-002-20240615   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                    randconfig-001-20240615   gcc-13.2.0
sh                    randconfig-002-20240615   gcc-13.2.0
sh                          sdk7786_defconfig   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7712_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-13.2.0
sh                  sh7785lcr_32bit_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240615   gcc-13.2.0
sparc64               randconfig-002-20240615   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240615   gcc-7
um                    randconfig-002-20240615   gcc-11
um                           x86_64_defconfig   clang-15
x86_64                           alldefconfig   gcc-13
x86_64       buildonly-randconfig-001-20240615   gcc-9
x86_64       buildonly-randconfig-002-20240615   clang-18
x86_64       buildonly-randconfig-003-20240615   clang-18
x86_64       buildonly-randconfig-004-20240615   clang-18
x86_64       buildonly-randconfig-005-20240615   gcc-9
x86_64       buildonly-randconfig-006-20240615   clang-18
x86_64                randconfig-001-20240615   gcc-13
x86_64                randconfig-002-20240615   gcc-8
x86_64                randconfig-003-20240615   gcc-13
x86_64                randconfig-004-20240615   gcc-13
x86_64                randconfig-005-20240615   gcc-13
x86_64                randconfig-006-20240615   gcc-8
x86_64                randconfig-011-20240615   clang-18
x86_64                randconfig-012-20240615   gcc-13
x86_64                randconfig-013-20240615   clang-18
x86_64                randconfig-014-20240615   clang-18
x86_64                randconfig-015-20240615   clang-18
x86_64                randconfig-016-20240615   clang-18
x86_64                randconfig-071-20240615   clang-18
x86_64                randconfig-072-20240615   clang-18
x86_64                randconfig-073-20240615   gcc-7
x86_64                randconfig-074-20240615   gcc-13
x86_64                randconfig-075-20240615   clang-18
x86_64                randconfig-076-20240615   gcc-13
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240615   gcc-13.2.0
xtensa                randconfig-002-20240615   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
