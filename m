Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 388383668E1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 12:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B697A60B5E;
	Wed, 21 Apr 2021 10:09:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnP2ov3hH9Yj; Wed, 21 Apr 2021 10:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EBC360666;
	Wed, 21 Apr 2021 10:09:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBC1E1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 10:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6DBD6089A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 10:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t_iAfQ6QHXR3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 10:09:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C16A60874
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 10:09:46 +0000 (UTC)
IronPort-SDR: yMNzX81kp9QBBe60h2YJvZzMtl5pYKsPPc9V2z9M8vuX3FWiMYlCTcZphww+tZ6cv7F44fyUM3
 3KbPWTCbSJ4w==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="183162762"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="183162762"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 03:09:45 -0700
IronPort-SDR: yK2XIRvjmj49K6aO71xqelRDIKtCRrXN6G03LZv5b6fRzvV7suVKyyH/wyv413hcIO6C9c393c
 DI5/OXyT5ciw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="463535704"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Apr 2021 03:09:44 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lZ9nj-0003X3-VM; Wed, 21 Apr 2021 10:09:43 +0000
Date: Wed, 21 Apr 2021 18:08:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <607ff9ba.P9g5iWXeNdJZND75%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4e29c00e475752a2a7534561542340dc3905f0b7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4e29c00e475752a2a7534561542340dc3905f0b7  i40e: Remove LLDP frame filters

elapsed time: 723m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                           jazz_defconfig
sh                        sh7763rdp_defconfig
powerpc                 mpc837x_mds_defconfig
sh                     sh7710voipgw_defconfig
arm                         cm_x300_defconfig
m68k                          hp300_defconfig
sh                           se7722_defconfig
m68k                             alldefconfig
arm                         lubbock_defconfig
sh                   rts7751r2dplus_defconfig
mips                           ip27_defconfig
powerpc                     redwood_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                             allyesconfig
mips                           rs90_defconfig
sh                            shmin_defconfig
sh                          polaris_defconfig
xtensa                       common_defconfig
mips                  decstation_64_defconfig
sh                           se7619_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                    vt8500_v6_v7_defconfig
arc                                 defconfig
powerpc                  storcenter_defconfig
arm                           viper_defconfig
ia64                             alldefconfig
powerpc                       ebony_defconfig
mips                      pic32mzda_defconfig
m68k                        mvme16x_defconfig
arm                       aspeed_g5_defconfig
sparc                            alldefconfig
powerpc                          allyesconfig
mips                      fuloong2e_defconfig
powerpc                 linkstation_defconfig
arm                         nhk8815_defconfig
mips                         rt305x_defconfig
powerpc                      obs600_defconfig
arm                        spear6xx_defconfig
arm                        keystone_defconfig
sh                              ul2_defconfig
i386                             alldefconfig
um                             i386_defconfig
arm                        magician_defconfig
m68k                          multi_defconfig
mips                      maltaaprp_defconfig
m68k                        m5407c3_defconfig
um                               allyesconfig
arm                       multi_v4t_defconfig
sh                             shx3_defconfig
mips                        bcm63xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210420
i386                 randconfig-a002-20210420
i386                 randconfig-a001-20210420
i386                 randconfig-a006-20210420
i386                 randconfig-a004-20210420
i386                 randconfig-a003-20210420
i386                 randconfig-a005-20210421
i386                 randconfig-a002-20210421
i386                 randconfig-a001-20210421
i386                 randconfig-a006-20210421
i386                 randconfig-a004-20210421
i386                 randconfig-a003-20210421
x86_64               randconfig-a015-20210420
x86_64               randconfig-a016-20210420
x86_64               randconfig-a011-20210420
x86_64               randconfig-a014-20210420
x86_64               randconfig-a013-20210420
x86_64               randconfig-a012-20210420
i386                 randconfig-a012-20210420
i386                 randconfig-a014-20210420
i386                 randconfig-a011-20210420
i386                 randconfig-a013-20210420
i386                 randconfig-a015-20210420
i386                 randconfig-a016-20210420
i386                 randconfig-a012-20210421
i386                 randconfig-a014-20210421
i386                 randconfig-a011-20210421
i386                 randconfig-a013-20210421
i386                 randconfig-a015-20210421
i386                 randconfig-a016-20210421
x86_64               randconfig-a004-20210421
x86_64               randconfig-a002-20210421
x86_64               randconfig-a001-20210421
x86_64               randconfig-a005-20210421
x86_64               randconfig-a006-20210421
x86_64               randconfig-a003-20210421
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210420
x86_64               randconfig-a002-20210420
x86_64               randconfig-a001-20210420
x86_64               randconfig-a005-20210420
x86_64               randconfig-a006-20210420
x86_64               randconfig-a003-20210420

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
