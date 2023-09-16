Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6B87A2F3A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Sep 2023 12:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49FB360FE0;
	Sat, 16 Sep 2023 10:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49FB360FE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694859579;
	bh=XzR+iieDz0tMmxRby1OEV6a6w5OOO2Iw+VIE7KrqZ+Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SbcUI5WsG3KujJvsVwyCOFAeAtUcifmIZ0fHAA9tKpD5eZhqyJ3erzhvhOZhOWSgo
	 YBQpVd8C4heg+BQza3IGhPjVPVbIHiBWPCWE3FzzrkN/UgN4DHtUxBVUf83HAxfZdS
	 TN0duY4BsSHntsN15Y+H54OVzl6KH3GFoc2BCB/EEep3kX26YWJH92T6HISTyevdLf
	 U9lVmOajAEioA+FlcixYYvUM0ekotmale1noZLFsp/H8fHuUnf1fOsVq7VH40xW+/o
	 nDnmY/Hu+Q3ZkBOyEByWfYoxbwuDCv03dV5p+K1LHTN7I17Ongk6Wj8+JDsJ5n088g
	 BS5D0qtavoAnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yuqlVsYQAJc7; Sat, 16 Sep 2023 10:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1E7B60FAE;
	Sat, 16 Sep 2023 10:19:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1E7B60FAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DA281BF370
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 10:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19FD380EBE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 10:19:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19FD380EBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYKkaPA3MwI8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Sep 2023 10:19:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BB3D80E6C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 10:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BB3D80E6C
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="465760649"
X-IronPort-AV: E=Sophos;i="6.02,152,1688454000"; d="scan'208";a="465760649"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2023 03:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="918933851"
X-IronPort-AV: E=Sophos;i="6.02,152,1688454000"; d="scan'208";a="918933851"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 16 Sep 2023 03:19:28 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qhSOb-0004BX-2s
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Sep 2023 10:19:25 +0000
Date: Sat, 16 Sep 2023 18:18:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309161810.GqLS5AjI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694859571; x=1726395571;
 h=date:from:to:subject:message-id;
 bh=CrScpOnlm4Y4GiaVGQZ5Rb4PRLH5hOjaJX9t3/2S8pw=;
 b=CtBpOlATy1S6boPEVQXbJRW/R0DkfeNLmNl5kuXc5Surz8rBdzqxj1T3
 IEsvO6unBhNqS0YSJ6M1RfrcAlYhuIhtlj89oUE/B/MQdp3o9XJ/PUpNW
 f9vEuUeGXjW5GDiqy+SVkIBJXCo12vGAhBdB6VDbX1Z8WMJddPmkojT8R
 aLGvAOmJGuB10hoMcOrHTy8MwyRAd5JwFiJR8uSfrTENe/zSEleroUO9C
 PnEzktfgMS1zOPoMvG6zZ9T7WtOrrHhqoMviNEPj4M+XWtNju/IxnMrTv
 0qurVVJI8uCzbGFSFzx1d9r5PGGthtr4n45SBFUqVWNyp+mlD2qQhjUFz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CtBpOlAT
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d16a8470209f401880ae678be4f3f68347a37fa9
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
branch HEAD: d16a8470209f401880ae678be4f3f68347a37fa9  ice: don't stop netdev tx queues when setting up XSK socket

elapsed time: 1093m

configs tested: 166
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20230916   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                       imx_v4_v5_defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                        mvebu_v5_defconfig   clang
arm                             mxs_defconfig   clang
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20230916   gcc  
arm                        vexpress_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             alldefconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230916   gcc  
i386         buildonly-randconfig-002-20230916   gcc  
i386         buildonly-randconfig-003-20230916   gcc  
i386         buildonly-randconfig-004-20230916   gcc  
i386         buildonly-randconfig-005-20230916   gcc  
i386         buildonly-randconfig-006-20230916   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230916   gcc  
i386                  randconfig-002-20230916   gcc  
i386                  randconfig-003-20230916   gcc  
i386                  randconfig-004-20230916   gcc  
i386                  randconfig-005-20230916   gcc  
i386                  randconfig-006-20230916   gcc  
i386                  randconfig-011-20230916   gcc  
i386                  randconfig-012-20230916   gcc  
i386                  randconfig-013-20230916   gcc  
i386                  randconfig-014-20230916   gcc  
i386                  randconfig-015-20230916   gcc  
i386                  randconfig-016-20230916   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230916   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                           jazz_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                     ppa8548_defconfig   clang
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8540_defconfig   clang
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230916   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230916   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230916   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230916   gcc  
x86_64       buildonly-randconfig-002-20230916   gcc  
x86_64       buildonly-randconfig-003-20230916   gcc  
x86_64       buildonly-randconfig-004-20230916   gcc  
x86_64       buildonly-randconfig-005-20230916   gcc  
x86_64       buildonly-randconfig-006-20230916   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230916   gcc  
x86_64                randconfig-002-20230916   gcc  
x86_64                randconfig-003-20230916   gcc  
x86_64                randconfig-004-20230916   gcc  
x86_64                randconfig-005-20230916   gcc  
x86_64                randconfig-006-20230916   gcc  
x86_64                randconfig-011-20230916   gcc  
x86_64                randconfig-012-20230916   gcc  
x86_64                randconfig-013-20230916   gcc  
x86_64                randconfig-014-20230916   gcc  
x86_64                randconfig-015-20230916   gcc  
x86_64                randconfig-016-20230916   gcc  
x86_64                randconfig-071-20230916   gcc  
x86_64                randconfig-072-20230916   gcc  
x86_64                randconfig-073-20230916   gcc  
x86_64                randconfig-074-20230916   gcc  
x86_64                randconfig-075-20230916   gcc  
x86_64                randconfig-076-20230916   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
