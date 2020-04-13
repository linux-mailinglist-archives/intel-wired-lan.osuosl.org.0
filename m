Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D30F11A6C46
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2020 20:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B6848362E;
	Mon, 13 Apr 2020 18:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6v2-0L1NQp4J; Mon, 13 Apr 2020 18:58:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11D8E83C12;
	Mon, 13 Apr 2020 18:58:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 614121BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 18:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4358387B5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 18:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBe0JHaWr8JQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2020 18:58:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A248286D5A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 18:58:43 +0000 (UTC)
IronPort-SDR: 4Cj0iW7mlXhfNsFVBbN/ThJ97c2VR/tIHMaAc9Yi8Nmp51sZENKReQIx8t3/zCSxuXilGaiYDQ
 E3fRMkqzneMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 11:58:42 -0700
IronPort-SDR: hTrwQ8C3MLbMQLJ4Sx66wVRu7vT112mzsq+jaycF39/aSqSmpad85avAJ1aKecvDJv2ZZwJk93
 efIEJcWqljMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="298485144"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Apr 2020 11:58:41 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jO4Hl-0004RJ-1z; Tue, 14 Apr 2020 02:58:21 +0800
Date: Tue, 14 Apr 2020 02:57:41 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e94b625.aEvrMpqBFeBPuXbk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 149a6f1718926d6066be50e6ec8bf9cef943eaea
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 149a6f1718926d6066be50e6ec8bf9cef943eaea  igc: Remove unused registers

Warning in current branch:

drivers/net/ethernet/intel/gwdpa/gswip/gswip_tbl.c:39:13: warning: struct member 'pce_tbl_reg_map::value' is never used. [unusedStructMember]
drivers/net/ethernet/intel/igc/igc_main.c:5298:6: warning: Condition '!err' is always true [knownConditionTrueFalse]

Warning ids grouped by kconfigs:

recent_errors
|-- i386-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:warning:Condition-err-is-always-true-knownConditionTrueFalse
`-- x86_64-allyesconfig
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_tbl.c:warning:struct-member-pce_tbl_reg_map::value-is-never-used.-unusedStructMember
    `-- drivers-net-ethernet-intel-igc-igc_main.c:warning:Condition-err-is-always-true-knownConditionTrueFalse

elapsed time: 663m

configs tested: 157
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
parisc                generic-32bit_defconfig
csky                                defconfig
ia64                                defconfig
powerpc                             defconfig
parisc                            allnoconfig
sh                                allnoconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
arm                              allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                               defconfig
nds32                             allnoconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                      malta_kvm_defconfig
parisc                generic-64bit_defconfig
parisc                           allyesconfig
i386                 randconfig-a002-20200413
x86_64               randconfig-a002-20200413
i386                 randconfig-a003-20200413
i386                 randconfig-a001-20200413
mips                 randconfig-a001-20200413
nds32                randconfig-a001-20200413
riscv                randconfig-a001-20200413
m68k                 randconfig-a001-20200413
parisc               randconfig-a001-20200413
alpha                randconfig-a001-20200413
h8300                randconfig-a001-20200413
nios2                randconfig-a001-20200413
c6x                  randconfig-a001-20200413
microblaze           randconfig-a001-20200413
sparc64              randconfig-a001-20200413
csky                 randconfig-a001-20200413
openrisc             randconfig-a001-20200413
s390                 randconfig-a001-20200413
sh                   randconfig-a001-20200413
xtensa               randconfig-a001-20200413
x86_64               randconfig-b002-20200413
i386                 randconfig-b001-20200413
x86_64               randconfig-b001-20200413
x86_64               randconfig-b003-20200413
i386                 randconfig-b003-20200413
i386                 randconfig-b002-20200413
x86_64               randconfig-c003-20200413
i386                 randconfig-c003-20200413
i386                 randconfig-c002-20200413
x86_64               randconfig-c002-20200413
i386                 randconfig-c001-20200413
x86_64               randconfig-c001-20200413
i386                 randconfig-d002-20200413
x86_64               randconfig-d003-20200413
x86_64               randconfig-d001-20200413
i386                 randconfig-d003-20200413
i386                 randconfig-d001-20200413
x86_64               randconfig-d002-20200413
x86_64               randconfig-e001-20200413
i386                 randconfig-e002-20200413
i386                 randconfig-e001-20200413
x86_64               randconfig-e002-20200413
i386                 randconfig-e003-20200413
x86_64               randconfig-e003-20200413
i386                 randconfig-f003-20200413
i386                 randconfig-f002-20200413
x86_64               randconfig-f003-20200413
x86_64               randconfig-f001-20200413
x86_64               randconfig-f002-20200413
i386                 randconfig-f001-20200413
x86_64               randconfig-g003-20200413
i386                 randconfig-g003-20200413
x86_64               randconfig-g001-20200413
x86_64               randconfig-g002-20200413
i386                 randconfig-g002-20200413
i386                 randconfig-g001-20200413
x86_64               randconfig-h001-20200413
i386                 randconfig-h003-20200413
i386                 randconfig-h002-20200413
i386                 randconfig-h001-20200413
x86_64               randconfig-h002-20200413
ia64                 randconfig-a001-20200413
arc                  randconfig-a001-20200413
arm                  randconfig-a001-20200413
sparc                randconfig-a001-20200413
arm64                randconfig-a001-20200413
powerpc              randconfig-a001-20200413
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
