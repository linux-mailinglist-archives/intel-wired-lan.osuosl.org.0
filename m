Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 428BD3A8328
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jun 2021 16:47:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD8CD60898;
	Tue, 15 Jun 2021 14:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bYyITxb45Pns; Tue, 15 Jun 2021 14:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A78D060720;
	Tue, 15 Jun 2021 14:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3ED21BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 14:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EED1660720
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 14:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tE_xy4P2z1PE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jun 2021 14:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 506D66063E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 14:46:54 +0000 (UTC)
IronPort-SDR: 7NSiavjOL9JZJL1ff/j91+N+5p9ZN+TJhcMZPDhAkUsukbOkSgdX5U1rjLRSyfr0OUN9AZ7ZPw
 iOc36UJm493A==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="204173464"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="204173464"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 07:46:51 -0700
IronPort-SDR: l5+u6QIsDwpYSJrl5RQsp+aNIFf8uxXK9yn1TVoE7oFM4M6nAttOdIB/BTeU8usQFk/NHfcBQE
 Ww7aXZ/tKh6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="484492686"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 15 Jun 2021 07:46:47 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ltAL1-0000VO-0d; Tue, 15 Jun 2021 14:46:47 +0000
Date: Tue, 15 Jun 2021 22:45:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60c8bd20.tIr4DFdLRh/4s5ov%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 303f0df0d2aaec07c2c52d63465947fa914576c3
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
branch HEAD: 303f0df0d2aaec07c2c52d63465947fa914576c3  igc: Check if num of q_vectors is smaller than max before array access

elapsed time: 939m

configs tested: 135
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                  mpc885_ads_defconfig
alpha                            alldefconfig
mips                  maltasmvp_eva_defconfig
arm                             ezx_defconfig
mips                        nlm_xlr_defconfig
m68k                          hp300_defconfig
ia64                                defconfig
powerpc                     tqm8560_defconfig
mips                        vocore2_defconfig
mips                         cobalt_defconfig
mips                        bcm63xx_defconfig
powerpc                     powernv_defconfig
powerpc                 mpc832x_mds_defconfig
arm                         s3c2410_defconfig
arm                         nhk8815_defconfig
mips                         bigsur_defconfig
sh                             sh03_defconfig
powerpc                     taishan_defconfig
arm                          ixp4xx_defconfig
mips                        nlm_xlp_defconfig
xtensa                generic_kc705_defconfig
m68k                          atari_defconfig
arm                          pcm027_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                  storcenter_defconfig
sh                           se7619_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                      walnut_defconfig
m68k                        mvme16x_defconfig
arm                         mv78xx0_defconfig
arm                            dove_defconfig
mips                      maltasmvp_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
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
i386                 randconfig-a002-20210613
i386                 randconfig-a006-20210613
i386                 randconfig-a001-20210613
i386                 randconfig-a004-20210613
i386                 randconfig-a005-20210613
i386                 randconfig-a003-20210613
i386                 randconfig-a002-20210615
i386                 randconfig-a006-20210615
i386                 randconfig-a004-20210615
i386                 randconfig-a001-20210615
i386                 randconfig-a005-20210615
i386                 randconfig-a003-20210615
i386                 randconfig-a002-20210614
i386                 randconfig-a006-20210614
i386                 randconfig-a004-20210614
i386                 randconfig-a001-20210614
i386                 randconfig-a005-20210614
i386                 randconfig-a003-20210614
i386                 randconfig-a015-20210615
i386                 randconfig-a013-20210615
i386                 randconfig-a016-20210615
i386                 randconfig-a012-20210615
i386                 randconfig-a014-20210615
i386                 randconfig-a011-20210615
i386                 randconfig-a015-20210613
i386                 randconfig-a013-20210613
i386                 randconfig-a016-20210613
i386                 randconfig-a014-20210613
i386                 randconfig-a012-20210613
i386                 randconfig-a011-20210613
i386                 randconfig-a015-20210614
i386                 randconfig-a013-20210614
i386                 randconfig-a016-20210614
i386                 randconfig-a012-20210614
i386                 randconfig-a014-20210614
i386                 randconfig-a011-20210614
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210614
x86_64               randconfig-b001-20210615
x86_64               randconfig-a015-20210615
x86_64               randconfig-a011-20210615
x86_64               randconfig-a012-20210615
x86_64               randconfig-a014-20210615
x86_64               randconfig-a016-20210615
x86_64               randconfig-a013-20210615
x86_64               randconfig-a001-20210614
x86_64               randconfig-a004-20210614
x86_64               randconfig-a002-20210614
x86_64               randconfig-a003-20210614
x86_64               randconfig-a006-20210614
x86_64               randconfig-a005-20210614

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
