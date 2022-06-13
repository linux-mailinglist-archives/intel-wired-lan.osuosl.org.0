Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D61F547D28
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jun 2022 02:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80E8560E9C;
	Mon, 13 Jun 2022 00:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6C2YJ083RieZ; Mon, 13 Jun 2022 00:56:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7929660D7B;
	Mon, 13 Jun 2022 00:56:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4D5F1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 00:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0EFA404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 00:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aJBKEpDe5Wh7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jun 2022 00:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7DFA40494
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 00:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655081788; x=1686617788;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JgoTYQi1coEaR7vRRjNUFvoniaMUnnN5hw6rbhWy4yw=;
 b=IzlFldZzb34mkT1V4D4V8W3jaZ497Y7sD2wTiMUv871YuOuPu7T+RTXE
 LmaltWR0NCI+SOiFdjfWJ7Ugsho9LVEpCmA3jsc2CxhfS4Zta5Y8DGzz8
 aBfKvq6iOIU/Hs9ygdbtgC2y0HcXJYt3Oo+ql6XlXLTuxjmGRmKaDfDFJ
 HACOJW5nk4wArOnH+wVR7Peoosv49sXIBB3d6kvnWm50cJRdx0p4506zL
 dw1QWQ0xk1LjPRgcwSNF2nh49193Woxq9raQXd0GYfSTj6HcEkHWn/OUX
 M2Y6fSRsD8K87fhlPcXld1GvLsjuFnMa8XSsT7WXe08vlQlzocpvdU359 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10376"; a="266821556"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="266821556"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2022 17:56:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="829477404"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jun 2022 17:56:24 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o0YNU-000KLN-4M;
 Mon, 13 Jun 2022 00:56:24 +0000
Date: Mon, 13 Jun 2022 08:55:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62a68b11.Mb4zNJV8GcsJQ+gD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 27999abc0cb079a3990004865fffec26cf9ee165
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
branch HEAD: 27999abc0cb079a3990004865fffec26cf9ee165  i40e: Refactor tc mqprio checks

elapsed time: 1590m

configs tested: 107
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
m68k                       m5249evb_defconfig
powerpc                      pcm030_defconfig
parisc                generic-64bit_defconfig
powerpc                     tqm8555_defconfig
nios2                            alldefconfig
arm                        multi_v7_defconfig
arm                         axm55xx_defconfig
powerpc                  storcenter_defconfig
powerpc                 canyonlands_defconfig
mips                            ar7_defconfig
mips                         rt305x_defconfig
m68k                            mac_defconfig
arm                          badge4_defconfig
mips                        vocore2_defconfig
riscv                               defconfig
arm                        cerfcube_defconfig
xtensa                       common_defconfig
ia64                                defconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                              allyesconfig
arc                                 defconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220612
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                           mtx1_defconfig
arm                         orion5x_defconfig
arm                        multi_v5_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                            mmp2_defconfig
powerpc                      katmai_defconfig
powerpc                     kilauea_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220612
riscv                randconfig-r042-20220612
s390                 randconfig-r044-20220612
hexagon              randconfig-r045-20220612

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
