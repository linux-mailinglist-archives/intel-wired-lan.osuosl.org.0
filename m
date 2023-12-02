Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 779FF801FBC
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Dec 2023 00:31:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A6E460EE2;
	Sat,  2 Dec 2023 23:31:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A6E460EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701559893;
	bh=ZTs7dWd+hkjmLefYi7L0B+KOpkJGmMpCHAUjlZ8M1Ps=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rtEa0tyDBgmPg7M2KzQuDciN5ifLTn3Z1Ng2bfyW8+9LmDZ+MRwbynYV7WU4RUwZj
	 ddTzAM21reA1KqtknuzXPNoMfv4WgdLd1zRxQ16eP5dR3zwsVtSVZPaUopiNdIsXKh
	 JhNAW3WtgoGtjL387CaYjctBYfGE0jgLOPSx9ik0vRDXpvJWiOcG/JskaHC5PN7h3u
	 hrpj0qYGx9Wum+6QEzmjeEPP81fuEVkOmIsg471qHJmmDemRDCJSRLPfR/fYodyaCC
	 XE+9cYZjkFLDQKVGFbF70RY7L54/NTDnMhPpP87EpsPCmrwYUMD1wXPeewXM2ahbby
	 sgKRISD/r43Ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyiyFa2YHBeE; Sat,  2 Dec 2023 23:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BDCA60ED8;
	Sat,  2 Dec 2023 23:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BDCA60ED8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0E1B1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Dec 2023 23:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77C5481A47
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Dec 2023 23:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77C5481A47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WWrG9sq8paWH for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Dec 2023 23:31:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6001181A6A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Dec 2023 23:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6001181A6A
X-IronPort-AV: E=McAfee;i="6600,9927,10912"; a="460115405"
X-IronPort-AV: E=Sophos;i="6.04,246,1695711600"; d="scan'208";a="460115405"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2023 15:31:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10912"; a="770109034"
X-IronPort-AV: E=Sophos;i="6.04,246,1695711600"; d="scan'208";a="770109034"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 02 Dec 2023 15:31:17 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r9ZS7-0005xD-19
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Dec 2023 23:31:15 +0000
Date: Sun, 03 Dec 2023 07:30:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312030756.eVbNXPaA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701559881; x=1733095881;
 h=date:from:to:subject:message-id;
 bh=/67E33lKJ4snKjV1uLAY7M8U7ePFNljvE7xmHde3RZY=;
 b=gPOWGJa9Z6rOdkLX4YFFdSn0WBvtlUuaGJLTAiF0MrP6wlYbce/MQnzZ
 pjqhuUrRgQRdCgeaKPal42RTHOYV0pcwSUL7peW1ii3T5RDnddlVmSYJW
 ETMufijGhz+00BueCAExcyO64VV2WFtG64Equi0MWzGfLBQu9p/L+8h7E
 RQ+s56kL37uIqq0W/esy1nzoE5YrlXG0xsgEAhdt+TMruBbNQM3DcckaQ
 jiVfDKbNjTFGeW/efVWapECxAxSF/ryF99HdWuMX4gDcUN7wCs96CkiJ7
 6YXZvtTz52HhkPz2kzmcrVceSjkJaGlhhH320V0gsF2OLE6eHdKI9PYOV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gPOWGJa9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8f3c6de78dfc0bce44db66ee7aa8e416dd4d0d83
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 8f3c6de78dfc0bce44db66ee7aa8e416dd4d0d83  i40e: Fix wrong mask used during DCB config

elapsed time: 1456m

configs tested: 177
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231202   gcc  
arc                   randconfig-002-20231202   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                          collie_defconfig   clang
arm                                 defconfig   clang
arm                          exynos_defconfig   gcc  
arm                   randconfig-001-20231202   clang
arm                   randconfig-002-20231202   clang
arm                   randconfig-003-20231202   clang
arm                   randconfig-004-20231202   clang
arm                             rpc_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231202   clang
arm64                 randconfig-002-20231202   clang
arm64                 randconfig-003-20231202   clang
arm64                 randconfig-004-20231202   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231202   gcc  
csky                  randconfig-002-20231202   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231202   clang
hexagon               randconfig-002-20231202   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231202   clang
i386         buildonly-randconfig-002-20231202   clang
i386         buildonly-randconfig-003-20231202   clang
i386         buildonly-randconfig-004-20231202   clang
i386         buildonly-randconfig-005-20231202   clang
i386         buildonly-randconfig-006-20231202   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231202   clang
i386                  randconfig-002-20231202   clang
i386                  randconfig-003-20231202   clang
i386                  randconfig-004-20231202   clang
i386                  randconfig-005-20231202   clang
i386                  randconfig-006-20231202   clang
i386                  randconfig-011-20231202   gcc  
i386                  randconfig-012-20231202   gcc  
i386                  randconfig-013-20231202   gcc  
i386                  randconfig-014-20231202   gcc  
i386                  randconfig-015-20231202   gcc  
i386                  randconfig-016-20231202   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231202   gcc  
loongarch             randconfig-002-20231202   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                      pic32mzda_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231202   gcc  
nios2                 randconfig-002-20231202   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231202   gcc  
parisc                randconfig-002-20231202   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                   motionpro_defconfig   gcc  
powerpc                       ppc64_defconfig   gcc  
powerpc               randconfig-001-20231202   clang
powerpc               randconfig-002-20231202   clang
powerpc               randconfig-003-20231202   clang
powerpc                     tqm5200_defconfig   clang
powerpc                     tqm8540_defconfig   clang
powerpc64             randconfig-001-20231202   clang
powerpc64             randconfig-002-20231202   clang
powerpc64             randconfig-003-20231202   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231202   clang
riscv                 randconfig-002-20231202   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231202   gcc  
s390                  randconfig-002-20231202   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231202   gcc  
sh                    randconfig-002-20231202   gcc  
sh                           se7750_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231202   gcc  
sparc64               randconfig-002-20231202   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231202   clang
um                    randconfig-002-20231202   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231202   clang
x86_64       buildonly-randconfig-002-20231202   clang
x86_64       buildonly-randconfig-003-20231202   clang
x86_64       buildonly-randconfig-004-20231202   clang
x86_64       buildonly-randconfig-005-20231202   clang
x86_64       buildonly-randconfig-006-20231202   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231202   gcc  
x86_64                randconfig-002-20231202   gcc  
x86_64                randconfig-003-20231202   gcc  
x86_64                randconfig-004-20231202   gcc  
x86_64                randconfig-005-20231202   gcc  
x86_64                randconfig-006-20231202   gcc  
x86_64                randconfig-011-20231202   clang
x86_64                randconfig-012-20231202   clang
x86_64                randconfig-013-20231202   clang
x86_64                randconfig-014-20231202   clang
x86_64                randconfig-015-20231202   clang
x86_64                randconfig-016-20231202   clang
x86_64                randconfig-071-20231202   clang
x86_64                randconfig-072-20231202   clang
x86_64                randconfig-073-20231202   clang
x86_64                randconfig-074-20231202   clang
x86_64                randconfig-075-20231202   clang
x86_64                randconfig-076-20231202   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20231202   gcc  
xtensa                randconfig-002-20231202   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
