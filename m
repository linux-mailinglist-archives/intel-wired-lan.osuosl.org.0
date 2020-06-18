Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8F51FF98C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 18:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F180884D2;
	Thu, 18 Jun 2020 16:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHj8SuHoVeJc; Thu, 18 Jun 2020 16:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72BD1884F4;
	Thu, 18 Jun 2020 16:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28AD31BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 16:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B93E884DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 16:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9D4Rmc2g+4io for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 16:46:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1FD46884D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 16:46:50 +0000 (UTC)
IronPort-SDR: M8i2ooz1T5E1eXZOEUFdv+zIggmpQzNJnVZNTuZSG8+LhZEtM5ydJRmipDNmEG6De7RoZyexpF
 MqUyYN83XE0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="131047003"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="131047003"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 09:46:49 -0700
IronPort-SDR: YPg+0UlidcbUQ1ng75wqQ7llZzV/+9Dge9AIaAsFIftGH3xNXAPBx3IwLTGaFd1BI3f55+412Q
 P48/ITAhVIrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="309884900"
Received: from lkp-server02.sh.intel.com (HELO 5ce11009e457) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2020 09:46:48 -0700
Received: from kbuild by 5ce11009e457 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jlxgd-0000K2-Gn; Thu, 18 Jun 2020 16:46:47 +0000
Date: Fri, 19 Jun 2020 00:45:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5eeb9a40.8Hw6gTozHzGjacQP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS WITH
 WARNING 2c89ef0b849b5d1bdba9bcc93a70f52c4752bc23
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: 2c89ef0b849b5d1bdba9bcc93a70f52c4752bc23  idpf: Introduce idpf driver

Warning in current branch:

drivers/net/ethernet/intel/idpf/idpf_main.c:46:5: warning: no previous prototype for 'idpf_probe' [-Wmissing-prototypes]

Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arc-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm64-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm64-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- i386-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- i386-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- mips-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- parisc-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- parisc-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- powerpc-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- powerpc-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- s390-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- sparc-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- sparc64-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- sparc64-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- x86_64-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
`-- xtensa-allyesconfig
    `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe

elapsed time: 723m

configs tested: 117
configs skipped: 3

arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
nds32                            alldefconfig
mips                         tb0287_defconfig
arm                       mainstone_defconfig
arm                          collie_defconfig
mips                        nlm_xlp_defconfig
sh                          polaris_defconfig
arm                         bcm2835_defconfig
ia64                                defconfig
parisc                generic-64bit_defconfig
arm                       spear13xx_defconfig
arc                          axs103_defconfig
arm                         lubbock_defconfig
arm                      footbridge_defconfig
arm                          tango4_defconfig
arm                           tegra_defconfig
arm                        neponset_defconfig
arc                        nsimosci_defconfig
powerpc                      chrp32_defconfig
sh                           se7722_defconfig
s390                              allnoconfig
arm                        mvebu_v7_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20200618
x86_64               randconfig-a003-20200618
x86_64               randconfig-a006-20200618
x86_64               randconfig-a002-20200618
x86_64               randconfig-a005-20200618
x86_64               randconfig-a004-20200618
i386                 randconfig-a002-20200618
i386                 randconfig-a006-20200618
i386                 randconfig-a001-20200618
i386                 randconfig-a004-20200618
i386                 randconfig-a005-20200618
i386                 randconfig-a003-20200618
i386                 randconfig-a011-20200618
i386                 randconfig-a015-20200618
i386                 randconfig-a014-20200618
i386                 randconfig-a013-20200618
i386                 randconfig-a016-20200618
i386                 randconfig-a012-20200618
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
