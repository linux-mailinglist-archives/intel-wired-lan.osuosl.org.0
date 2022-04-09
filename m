Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A42484FA554
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Apr 2022 08:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1664E4205C;
	Sat,  9 Apr 2022 06:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VCdNLtw58UL0; Sat,  9 Apr 2022 06:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB3574201A;
	Sat,  9 Apr 2022 06:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D6B4E1BF96B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Apr 2022 06:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C46D141A42
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Apr 2022 06:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0S6hagOO5VU for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Apr 2022 06:10:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91ECA41954
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Apr 2022 06:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649484600; x=1681020600;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fbwaqjITHyDGww3eeACz/qvQzURX2sZtzU9H2OETvVI=;
 b=l9gzI3GV/vPOe/NmSHLFd5b58pLXWtrzOZlNwqvCVIf/CuvchqKJIJT9
 dhcen5fMdSGKH+PV7ro5UDjKTCWWUnK17Um6TSBC95VbFBt88cw3fbCSs
 1zp1vcR27dDGcGj4UouwMCNOB+RDUvHr3BZgIJaF6uzFN0TrWopxftEaO
 LGg1yjWTc5RRLhc2HIyyoxGu59kEZog7Y4cbvhoGPlc7Ztt6LRNXl47Vd
 AvW+R8SXc9qAqyzuXfHu5RJWls8sstGic3y7QfPUlc2BOMAcgbyhTdKqY
 G1Kv8bP0FY0pqzY0EWHjfOUwvC/6ti/B/SJQsj92ILaqQSpPaQcSF8JjX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10311"; a="261944944"
X-IronPort-AV: E=Sophos;i="5.90,247,1643702400"; d="scan'208";a="261944944"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 23:09:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,247,1643702400"; d="scan'208";a="797339106"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 08 Apr 2022 23:09:58 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nd4IH-0000wX-DQ;
 Sat, 09 Apr 2022 06:09:57 +0000
Date: Sat, 09 Apr 2022 14:09:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <625122fd.v6jmpzQZpNAIIIHj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7661ae0babaf78f62387af0d87fb08d0f130e220
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 7661ae0babaf78f62387af0d87fb08d0f130e220  ice: Fix incorrect locking in ice_vc_process_vf_msg()

elapsed time: 723m

configs tested: 131
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
m68k                             allyesconfig
microblaze                      mmu_defconfig
powerpc                    sam440ep_defconfig
xtensa                              defconfig
m68k                        m5407c3_defconfig
h8300                            alldefconfig
sh                        edosk7760_defconfig
sh                           se7722_defconfig
arc                          axs103_defconfig
m68k                          atari_defconfig
ia64                             alldefconfig
arc                            hsdk_defconfig
arm                           stm32_defconfig
powerpc                       maple_defconfig
openrisc                            defconfig
sh                           se7206_defconfig
arm64                            alldefconfig
nios2                         10m50_defconfig
sh                            migor_defconfig
mips                    maltaup_xpa_defconfig
powerpc                      chrp32_defconfig
arm                            xcep_defconfig
arm                          badge4_defconfig
sh                        sh7785lcr_defconfig
s390                       zfcpdump_defconfig
arm                          exynos_defconfig
powerpc64                           defconfig
ia64                          tiger_defconfig
powerpc                 mpc8540_ads_defconfig
arm                          gemini_defconfig
ia64                             allmodconfig
xtensa                generic_kc705_defconfig
arc                     haps_hs_smp_defconfig
riscv             nommu_k210_sdcard_defconfig
xtensa                  nommu_kc705_defconfig
h8300                       h8s-sim_defconfig
parisc                generic-32bit_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220408
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220408
s390                 randconfig-r044-20220408
riscv                randconfig-r042-20220408
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
s390                 randconfig-c005-20220408
powerpc              randconfig-c003-20220408
riscv                randconfig-c006-20220408
mips                 randconfig-c004-20220408
arm                  randconfig-c002-20220408
mips                      pic32mzda_defconfig
powerpc                     pseries_defconfig
powerpc                   bluestone_defconfig
powerpc                      obs600_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                        qi_lb60_defconfig
mips                     cu1000-neo_defconfig
riscv                             allnoconfig
mips                   sb1250_swarm_defconfig
mips                     loongson1c_defconfig
powerpc                       ebony_defconfig
powerpc                     mpc5200_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220408
hexagon              randconfig-r041-20220408

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
