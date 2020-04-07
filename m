Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4982C1A0D5B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 14:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D465D2210F;
	Tue,  7 Apr 2020 12:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ro8Lk2a7oqVZ; Tue,  7 Apr 2020 12:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 808B22047B;
	Tue,  7 Apr 2020 12:13:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1BFA1BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 12:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E91272047B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 12:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBw7dFNrVWzP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 12:13:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id B3BB720006
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 12:13:24 +0000 (UTC)
IronPort-SDR: cI4fBVO0/NBMxJTKm/SKw4XPhqxHb3JWeaIULUw5tcQ6pghyj0NEhhUZbOKb+RIYtB8BVmHXTB
 c8DlfOtW+PDw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:13:24 -0700
IronPort-SDR: Mdu3S30D508h+oVUGpI9BdAEr+9WuKqxK3S0Wi0xvbfc7UbbonwnR6dheGy6h7T+OPTTfJTLlJ
 vXgzgQOtTvyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="239936840"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 07 Apr 2020 05:13:22 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLn6X-0005NE-RT; Tue, 07 Apr 2020 20:13:21 +0800
Date: Tue, 07 Apr 2020 20:12:31 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e8c6e2f.A5ebpIv2XCNWtqGV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 ebc01afcb1211f9330713d9b439bffa5570ddabf
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
branch HEAD: ebc01afcb1211f9330713d9b439bffa5570ddabf  igc: Refactor VLAN priority filtering code

Warning in current branch:

const u16 *value;
drivers/net/ethernet/intel/gwdpa/gswip/gswip_tbl.c:39:13: warning: struct member 'pce_tbl_reg_map::value' is never used. [unusedStructMember]
drivers/net/ethernet/intel/igc/igc_main.c:5188:6: note: Assuming that condition 'err' is not redundant
drivers/net/ethernet/intel/igc/igc_main.c:5216:6: note: Condition '!err' is always true
drivers/net/ethernet/intel/igc/igc_main.c:5216:6: warning: Condition '!err' is always true [knownConditionTrueFalse]
struct igc_mac_addr *entry;

Warning ids grouped by kconfigs:

recent_errors
|-- i386-allmodconfig
|   |-- drivers-net-ethernet-intel-igc-igc_main.c:note:Assuming-that-condition-err-is-not-redundant
|   |-- drivers-net-ethernet-intel-igc-igc_main.c:note:Condition-err-is-always-true
|   |-- drivers-net-ethernet-intel-igc-igc_main.c:warning:Condition-err-is-always-true-knownConditionTrueFalse
|   `-- struct-igc_mac_addr-entry
`-- x86_64-allyesconfig
    |-- const-u16-value
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_tbl.c:warning:struct-member-pce_tbl_reg_map::value-is-never-used.-unusedStructMember
    |-- drivers-net-ethernet-intel-igc-igc_main.c:note:Assuming-that-condition-err-is-not-redundant
    |-- drivers-net-ethernet-intel-igc-igc_main.c:note:Condition-err-is-always-true
    |-- drivers-net-ethernet-intel-igc-igc_main.c:warning:Condition-err-is-always-true-knownConditionTrueFalse
    `-- struct-igc_mac_addr-entry

elapsed time: 865m

configs tested: 160
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
powerpc                           allnoconfig
parisc                generic-32bit_defconfig
riscv                             allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
arm                              allmodconfig
arm64                            allmodconfig
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
csky                                defconfig
alpha                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-64bit_defconfig
i386                 randconfig-a003-20200407
mips                 randconfig-a001-20200407
nds32                randconfig-a001-20200407
m68k                 randconfig-a001-20200407
parisc               randconfig-a001-20200407
alpha                randconfig-a001-20200407
riscv                randconfig-a001-20200407
alpha                randconfig-a001-20200406
m68k                 randconfig-a001-20200406
nds32                randconfig-a001-20200406
parisc               randconfig-a001-20200406
riscv                randconfig-a001-20200406
sparc64              randconfig-a001-20200406
h8300                randconfig-a001-20200406
nios2                randconfig-a001-20200406
microblaze           randconfig-a001-20200406
c6x                  randconfig-a001-20200406
c6x                  randconfig-a001-20200407
h8300                randconfig-a001-20200407
microblaze           randconfig-a001-20200407
nios2                randconfig-a001-20200407
sparc64              randconfig-a001-20200407
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
x86_64               randconfig-b001-20200407
x86_64               randconfig-b002-20200407
x86_64               randconfig-b003-20200407
i386                 randconfig-b001-20200407
i386                 randconfig-b002-20200407
i386                 randconfig-b003-20200407
i386                 randconfig-b003-20200406
x86_64               randconfig-b002-20200406
x86_64               randconfig-b001-20200406
i386                 randconfig-b001-20200406
x86_64               randconfig-b003-20200406
i386                 randconfig-b002-20200406
x86_64               randconfig-d001-20200407
i386                 randconfig-d003-20200407
i386                 randconfig-d001-20200407
i386                 randconfig-d002-20200407
x86_64               randconfig-d002-20200407
x86_64               randconfig-d003-20200407
i386                 randconfig-e001-20200406
i386                 randconfig-e003-20200406
x86_64               randconfig-e002-20200406
x86_64               randconfig-e001-20200406
i386                 randconfig-e002-20200406
x86_64               randconfig-e003-20200406
i386                 randconfig-f001-20200406
x86_64               randconfig-f003-20200406
i386                 randconfig-f003-20200406
x86_64               randconfig-f001-20200406
i386                 randconfig-f002-20200406
x86_64               randconfig-g003-20200406
i386                 randconfig-g003-20200406
x86_64               randconfig-g002-20200406
i386                 randconfig-g001-20200406
i386                 randconfig-g002-20200406
x86_64               randconfig-g001-20200406
x86_64               randconfig-h002-20200406
i386                 randconfig-h002-20200406
i386                 randconfig-h003-20200406
i386                 randconfig-h001-20200406
x86_64               randconfig-h003-20200406
x86_64               randconfig-h001-20200406
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
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
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
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
