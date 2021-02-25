Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE83251BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 15:53:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58D5E4EE60;
	Thu, 25 Feb 2021 14:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TuAXRpxRC9pV; Thu, 25 Feb 2021 14:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CC374EDF7;
	Thu, 25 Feb 2021 14:53:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 255A21BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 14:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2016E6F77E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 14:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UiOV80iXh5SU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 14:53:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F9C96F779
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 14:53:01 +0000 (UTC)
IronPort-SDR: do/ZOb7Lj75AREcRzncBNgf7dlERq62lg3ar3HOYENrEf0+eG/TBzH14ck9OYaWTTcReBvAjBA
 oL9hubRNlM/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="182117679"
X-IronPort-AV: E=Sophos;i="5.81,206,1610438400"; d="scan'208";a="182117679"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 06:53:00 -0800
IronPort-SDR: 77eKJRtjma9aBcggmB8CEC3vZr8bWc9YyxASaJshD0ZQUg+tbmdWjszPPenuZBiHaH03vudIPX
 svDH/UXERitg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; d="scan'208";a="432320908"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2021 06:52:59 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lFI0b-0002kP-SA; Thu, 25 Feb 2021 14:52:53 +0000
Date: Thu, 25 Feb 2021 22:52:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6037b995.OPpN7fXsGw0IR+fg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 bae0e60bed826a21db719985ceefe1e3eb3f58e5
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
branch HEAD: bae0e60bed826a21db719985ceefe1e3eb3f58e5  iavf: Enable flex-bytes support

elapsed time: 726m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         s3c6400_defconfig
arm                        magician_defconfig
mips                        bcm47xx_defconfig
sh                            shmin_defconfig
arc                        nsim_700_defconfig
riscv                             allnoconfig
riscv                               defconfig
powerpc                     stx_gp3_defconfig
um                            kunit_defconfig
powerpc                     akebono_defconfig
h8300                       h8s-sim_defconfig
sh                          rsk7264_defconfig
mips                            e55_defconfig
powerpc                     kilauea_defconfig
powerpc                       ebony_defconfig
mips                           xway_defconfig
arm                           omap1_defconfig
sh                              ul2_defconfig
powerpc64                        alldefconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc832x_mds_defconfig
arm                       cns3420vb_defconfig
sh                   secureedge5410_defconfig
arm                          simpad_defconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
parisc                              defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210223
i386                 randconfig-a006-20210223
i386                 randconfig-a005-20210225
i386                 randconfig-a006-20210225
i386                 randconfig-a004-20210225
i386                 randconfig-a001-20210225
i386                 randconfig-a003-20210225
i386                 randconfig-a002-20210225
x86_64               randconfig-a015-20210223
x86_64               randconfig-a011-20210223
x86_64               randconfig-a012-20210223
x86_64               randconfig-a016-20210223
x86_64               randconfig-a014-20210223
x86_64               randconfig-a013-20210223
i386                 randconfig-a013-20210223
i386                 randconfig-a012-20210223
i386                 randconfig-a011-20210223
i386                 randconfig-a014-20210223
i386                 randconfig-a016-20210223
i386                 randconfig-a015-20210223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-a001-20210225
x86_64               randconfig-a002-20210225
x86_64               randconfig-a003-20210225
x86_64               randconfig-a005-20210225
x86_64               randconfig-a004-20210225
x86_64               randconfig-a006-20210225
x86_64               randconfig-a001-20210223
x86_64               randconfig-a002-20210223
x86_64               randconfig-a003-20210223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
