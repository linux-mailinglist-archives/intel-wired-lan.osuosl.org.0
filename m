Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 908E035323B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Apr 2021 05:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1128860797;
	Sat,  3 Apr 2021 03:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCJ1cqjD4H-J; Sat,  3 Apr 2021 03:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E14226069B;
	Sat,  3 Apr 2021 03:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 641261C1189
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Apr 2021 03:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50C9141987
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Apr 2021 03:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ysOAIBdMsJjI for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Apr 2021 03:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 101F04183A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Apr 2021 03:39:58 +0000 (UTC)
IronPort-SDR: Sq4p9GAyruc1p+z8Vv40M8Ow+B+TkaSE4A6vJcgX7YP0MItXOc+W+aCKkaRmGjHh0iiFt9FDA+
 UutGy6btMzoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="192056680"
X-IronPort-AV: E=Sophos;i="5.81,301,1610438400"; d="scan'208";a="192056680"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 20:39:57 -0700
IronPort-SDR: umuzAaSj+ydiBFMZRsywVPZHDVF+r+x3NL3Pn2QHAmL2/emegyNO/UniVWq9XbfCb3r2hdIDW9
 1ygHYVZTiTEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,301,1610438400"; d="scan'208";a="419921423"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 02 Apr 2021 20:39:56 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lSX8d-0007Vn-KU; Sat, 03 Apr 2021 03:39:55 +0000
Date: Sat, 03 Apr 2021 11:39:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6067e36e.Ik9s6PjHeA6mcHfc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4b1524595637659ece56d9454c0e3e0691ea18b9
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
branch HEAD: 4b1524595637659ece56d9454c0e3e0691ea18b9  ice: fix memory leak of aRFS after resuming from suspend

elapsed time: 723m

configs tested: 139
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
powerpc                     powernv_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
powerpc                      ppc40x_defconfig
mips                         tb0226_defconfig
mips                          rm200_defconfig
parisc                generic-64bit_defconfig
powerpc                     mpc83xx_defconfig
ia64                      gensparse_defconfig
s390                       zfcpdump_defconfig
ia64                          tiger_defconfig
powerpc                  storcenter_defconfig
arm                         s5pv210_defconfig
arm                          ep93xx_defconfig
mips                        workpad_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     ksi8560_defconfig
powerpc                     ppa8548_defconfig
arm                        shmobile_defconfig
m68k                         apollo_defconfig
xtensa                          iss_defconfig
sh                          rsk7201_defconfig
powerpc                    amigaone_defconfig
sh                           se7724_defconfig
powerpc                         wii_defconfig
arm                           h5000_defconfig
arm                       multi_v4t_defconfig
sh                        sh7785lcr_defconfig
powerpc                      tqm8xx_defconfig
sh                 kfr2r09-romimage_defconfig
arm                             rpc_defconfig
sparc64                             defconfig
powerpc                 mpc834x_mds_defconfig
mips                           gcw0_defconfig
mips                        omega2p_defconfig
arm                         palmz72_defconfig
arm                          pxa168_defconfig
sh                           se7780_defconfig
arm                    vt8500_v6_v7_defconfig
xtensa                         virt_defconfig
arc                        nsim_700_defconfig
arm                          ixp4xx_defconfig
xtensa                              defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210402
x86_64               randconfig-a005-20210402
x86_64               randconfig-a003-20210402
x86_64               randconfig-a001-20210402
x86_64               randconfig-a002-20210402
x86_64               randconfig-a006-20210402
i386                 randconfig-a006-20210402
i386                 randconfig-a003-20210402
i386                 randconfig-a001-20210402
i386                 randconfig-a004-20210402
i386                 randconfig-a005-20210402
i386                 randconfig-a002-20210402
i386                 randconfig-a006-20210401
i386                 randconfig-a003-20210401
i386                 randconfig-a001-20210401
i386                 randconfig-a004-20210401
i386                 randconfig-a002-20210401
i386                 randconfig-a005-20210401
i386                 randconfig-a014-20210401
i386                 randconfig-a011-20210401
i386                 randconfig-a016-20210401
i386                 randconfig-a012-20210401
i386                 randconfig-a013-20210401
i386                 randconfig-a015-20210401
i386                 randconfig-a014-20210402
i386                 randconfig-a016-20210402
i386                 randconfig-a011-20210402
i386                 randconfig-a012-20210402
i386                 randconfig-a013-20210402
i386                 randconfig-a015-20210402
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210401
x86_64               randconfig-a005-20210401
x86_64               randconfig-a003-20210401
x86_64               randconfig-a001-20210401
x86_64               randconfig-a002-20210401
x86_64               randconfig-a006-20210401
x86_64               randconfig-a014-20210402
x86_64               randconfig-a015-20210402
x86_64               randconfig-a011-20210402
x86_64               randconfig-a013-20210402
x86_64               randconfig-a012-20210402
x86_64               randconfig-a016-20210402

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
