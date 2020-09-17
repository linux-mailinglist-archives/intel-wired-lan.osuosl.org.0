Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F6A26D6FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 10:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33C6A875CF;
	Thu, 17 Sep 2020 08:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2+A+6lncG4QO; Thu, 17 Sep 2020 08:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72E1D87347;
	Thu, 17 Sep 2020 08:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 950A71BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 08:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F0BB8786D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 08:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qg+rAAm+rVSR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 08:46:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E000487839
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 08:46:11 +0000 (UTC)
IronPort-SDR: V8F5H1FevZR6OWo4zgoAUaz42L0zqYyTCvmXC4VNZIDIooGuP5xxtfSUMnRYyz5sO4RTYsRAXt
 wZiQqVerfNBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139164488"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="139164488"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 01:46:11 -0700
IronPort-SDR: N6hKFtCvIh10Cx/fvAHYx0dRXb+i5CBOIYeKKoeLllgWm6PGpudJgFywz+N3d6iBSDxRn1eU3s
 NRyjN6iyFn6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="302867365"
Received: from lkp-server02.sh.intel.com (HELO bdcb92cf8b4e) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 17 Sep 2020 01:46:10 -0700
Received: from kbuild by bdcb92cf8b4e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kIpYP-0000VB-OZ; Thu, 17 Sep 2020 08:46:09 +0000
Date: Thu, 17 Sep 2020 16:45:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f632233.DVKzjNwcWnr5wRTQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 22ddac3ef00718828842451ef0d3f4df5e4e3df4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 22ddac3ef00718828842451ef0d3f4df5e4e3df4  i40e: Fix flow for IPv6 next header (extension header)

elapsed time: 910m

configs tested: 124
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     decstation_defconfig
mips                      malta_kvm_defconfig
sh                        sh7763rdp_defconfig
arm                          pcm027_defconfig
powerpc                  storcenter_defconfig
mips                         cobalt_defconfig
powerpc                      chrp32_defconfig
mips                     cu1830-neo_defconfig
nios2                         3c120_defconfig
powerpc                      bamboo_defconfig
arm                      integrator_defconfig
powerpc                    sam440ep_defconfig
arm                         axm55xx_defconfig
arm                         at91_dt_defconfig
parisc                           allyesconfig
powerpc                     kilauea_defconfig
arm                          imote2_defconfig
arm                           efm32_defconfig
mips                         tb0287_defconfig
mips                         db1xxx_defconfig
arc                             nps_defconfig
arm                        trizeps4_defconfig
powerpc                 mpc836x_mds_defconfig
arc                      axs103_smp_defconfig
powerpc                   lite5200b_defconfig
sh                           se7343_defconfig
powerpc                 mpc85xx_cds_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20200916
x86_64               randconfig-a004-20200916
x86_64               randconfig-a003-20200916
x86_64               randconfig-a002-20200916
x86_64               randconfig-a001-20200916
x86_64               randconfig-a005-20200916
i386                 randconfig-a004-20200916
i386                 randconfig-a006-20200916
i386                 randconfig-a003-20200916
i386                 randconfig-a001-20200916
i386                 randconfig-a002-20200916
i386                 randconfig-a005-20200916
i386                 randconfig-a004-20200917
i386                 randconfig-a006-20200917
i386                 randconfig-a003-20200917
i386                 randconfig-a001-20200917
i386                 randconfig-a002-20200917
i386                 randconfig-a005-20200917
x86_64               randconfig-a014-20200917
x86_64               randconfig-a011-20200917
x86_64               randconfig-a016-20200917
x86_64               randconfig-a012-20200917
x86_64               randconfig-a015-20200917
x86_64               randconfig-a013-20200917
i386                 randconfig-a015-20200917
i386                 randconfig-a014-20200917
i386                 randconfig-a011-20200917
i386                 randconfig-a013-20200917
i386                 randconfig-a016-20200917
i386                 randconfig-a012-20200917
i386                 randconfig-a015-20200916
i386                 randconfig-a014-20200916
i386                 randconfig-a011-20200916
i386                 randconfig-a013-20200916
i386                 randconfig-a016-20200916
i386                 randconfig-a012-20200916
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200917
x86_64               randconfig-a004-20200917
x86_64               randconfig-a003-20200917
x86_64               randconfig-a002-20200917
x86_64               randconfig-a001-20200917
x86_64               randconfig-a005-20200917
x86_64               randconfig-a014-20200916
x86_64               randconfig-a011-20200916
x86_64               randconfig-a016-20200916
x86_64               randconfig-a012-20200916
x86_64               randconfig-a015-20200916
x86_64               randconfig-a013-20200916

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
