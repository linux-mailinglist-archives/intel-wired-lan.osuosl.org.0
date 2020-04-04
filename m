Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C427419E515
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Apr 2020 15:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF16E20397;
	Sat,  4 Apr 2020 13:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FmE2FddCqv-J; Sat,  4 Apr 2020 13:06:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E402D2045A;
	Sat,  4 Apr 2020 13:06:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB7C81BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 13:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D65148626B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 13:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iA9u3XOrCCNH for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Apr 2020 13:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 90DCB86204
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 13:06:21 +0000 (UTC)
IronPort-SDR: dt2/i6qoRCTTImRO/Vq/cCsot1o6iQOm0ioShvL+z05DLRKlGxGLDy/sqid+fNaQvO03pBSNA5
 J6OXd/YbsFCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2020 06:06:20 -0700
IronPort-SDR: s+P5xPNS31OXbstZGwwVGX4QWQ42Ixy0P47pXvMs/pizwvOCtoo8+bIx5q2/BBDiHRlo+AIMoW
 OtkerIk6tM4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,343,1580803200"; d="scan'208";a="296234033"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Apr 2020 06:06:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jKiV8-0003Io-Kx; Sat, 04 Apr 2020 21:06:18 +0800
Date: Sat, 04 Apr 2020 21:06:12 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e888644.wWb+pxII5dPDpZ39%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 7257d395cfc2bcc91545422f6407bf32c3bbb63b
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
branch HEAD: 7257d395cfc2bcc91545422f6407bf32c3bbb63b  igc: Refactor VLAN priority filtering code

Regressions in current branch:

const u16 *value;
drivers/net/ethernet/intel/gwdpa/gswip/gswip_core.c:118:9: warning: The scope of the variable 'ret' can be reduced. [variableScope]
drivers/net/ethernet/intel/gwdpa/gswip/gswip_port.c:238:6: warning: The scope of the variable 'ret' can be reduced. [variableScope]
drivers/net/ethernet/intel/gwdpa/gswip/gswip_tbl.c:39:13: warning: struct member 'pce_tbl_reg_map::value' is never used. [unusedStructMember]
drivers/net/ethernet/intel/igc/igc_main.c:2192:23: warning: The scope of the variable 'entry' can be reduced. [variableScope]
struct igc_mac_addr *entry;

Error ids grouped by kconfigs:

recent_errors
|-- i386-allmodconfig
|   |-- drivers-net-ethernet-intel-igc-igc_main.c:warning:The-scope-of-the-variable-entry-can-be-reduced.-variableScope
|   `-- struct-igc_mac_addr-entry
`-- x86_64-allyesconfig
    |-- const-u16-value
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_core.c:warning:The-scope-of-the-variable-ret-can-be-reduced.-variableScope
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_port.c:warning:The-scope-of-the-variable-ret-can-be-reduced.-variableScope
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_tbl.c:warning:struct-member-pce_tbl_reg_map::value-is-never-used.-unusedStructMember
    |-- drivers-net-ethernet-intel-igc-igc_main.c:warning:The-scope-of-the-variable-entry-can-be-reduced.-variableScope
    `-- struct-igc_mac_addr-entry

elapsed time: 878m

configs tested: 142
configs skipped: 0

arm64                            allyesconfig
arm                              allyesconfig
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
mips                             allyesconfig
s390                             alldefconfig
riscv                            allmodconfig
ia64                                defconfig
powerpc                             defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200403
x86_64               randconfig-a002-20200403
x86_64               randconfig-a003-20200403
i386                 randconfig-a001-20200403
i386                 randconfig-a002-20200403
i386                 randconfig-a003-20200403
sparc64              randconfig-a001-20200403
h8300                randconfig-a001-20200403
nios2                randconfig-a001-20200403
microblaze           randconfig-a001-20200403
c6x                  randconfig-a001-20200403
csky                 randconfig-a001-20200403
openrisc             randconfig-a001-20200403
s390                 randconfig-a001-20200403
sh                   randconfig-a001-20200403
xtensa               randconfig-a001-20200403
csky                 randconfig-a001-20200404
openrisc             randconfig-a001-20200404
s390                 randconfig-a001-20200404
sh                   randconfig-a001-20200404
xtensa               randconfig-a001-20200404
i386                 randconfig-b003-20200404
x86_64               randconfig-b002-20200404
i386                 randconfig-b001-20200404
x86_64               randconfig-b001-20200404
x86_64               randconfig-b003-20200404
i386                 randconfig-b002-20200404
i386                 randconfig-c003-20200404
i386                 randconfig-c001-20200404
x86_64               randconfig-c002-20200404
x86_64               randconfig-c003-20200404
i386                 randconfig-c002-20200404
x86_64               randconfig-c001-20200404
i386                 randconfig-e001-20200404
i386                 randconfig-e003-20200404
x86_64               randconfig-e002-20200404
x86_64               randconfig-e001-20200404
i386                 randconfig-e002-20200404
x86_64               randconfig-e003-20200404
i386                 randconfig-g003-20200404
x86_64               randconfig-g002-20200404
i386                 randconfig-g001-20200404
i386                 randconfig-g002-20200404
x86_64               randconfig-g001-20200404
arm64                randconfig-a001-20200403
sparc                randconfig-a001-20200403
ia64                 randconfig-a001-20200403
arc                  randconfig-a001-20200403
arm                  randconfig-a001-20200403
powerpc              randconfig-a001-20200403
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
