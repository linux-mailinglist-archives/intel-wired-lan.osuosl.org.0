Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B00B546CAF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jun 2022 20:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA84760FBA;
	Fri, 10 Jun 2022 18:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C6iR_UsSNHYQ; Fri, 10 Jun 2022 18:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF45E60E29;
	Fri, 10 Jun 2022 18:47:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0CB1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 18:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C5E860E29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 18:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9PhQUw_8OhW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jun 2022 18:47:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7788F60AE1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 18:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654886871; x=1686422871;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ij2mtZbq0Jt2JjrjX8NMKNd5VuAoTt3+HgGP7yh9zEE=;
 b=eAiTiZ8V7m1AIKkASTFoiTvYgB9RgKC1W3sbNidMGsPHsbHaYI4G0Yd1
 rPK1Buk1SkngWeHDW001F/1oCg/yxC8MrCz0xUU0FyT2NGCol/y4u2T61
 6yOX/1iGephdRly167xQMuZS2DMOkfEW9tHj5HiMRv9zGHOpGwatH9xPn
 9Qu3q5rubbuGzs+NsjSlhSUpiMiAagM916zX1MN1qfgp+E9e4KTSvFaGb
 S9BvjBAxFTvLyYDqzHo1A1eg9WPljds6FUDCU3iFVnwGBLpUdI0/IHWBk
 yW4rrM8TwSPO8O77cZVdf2zqMggWwIGXoQKI4CBEeBSxmzfnTHAGwzPVs w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="341773045"
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="341773045"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 11:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="828383238"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 10 Jun 2022 11:47:48 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nzjff-000IBb-LX;
 Fri, 10 Jun 2022 18:47:47 +0000
Date: Sat, 11 Jun 2022 02:46:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62a3919e.aQ3uSTYqXXrUhMWK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 7bb0fb7c63df95d6027dc50d6af3bc3bbbc25483
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 7bb0fb7c63df95d6027dc50d6af3bc3bbbc25483  ixgbe: fix unexpected VLAN Rx in promisc mode on VF

elapsed time: 4226m

configs tested: 180
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                         ap325rxa_defconfig
arc                     haps_hs_smp_defconfig
m68k                       m5475evb_defconfig
nios2                               defconfig
arc                         haps_hs_defconfig
mips                          rb532_defconfig
riscv                               defconfig
ia64                         bigsur_defconfig
m68k                        m5272c3_defconfig
sh                            titan_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         tb0226_defconfig
m68k                            q40_defconfig
microblaze                      mmu_defconfig
powerpc                      chrp32_defconfig
powerpc                 mpc834x_itx_defconfig
sh                           se7750_defconfig
powerpc                 linkstation_defconfig
powerpc64                           defconfig
sh                          rsk7201_defconfig
powerpc                 canyonlands_defconfig
sh                          lboxre2_defconfig
m68k                          sun3x_defconfig
powerpc                 mpc8540_ads_defconfig
arc                      axs103_smp_defconfig
sparc64                             defconfig
sh                           sh2007_defconfig
arm                           viper_defconfig
mips                           ci20_defconfig
powerpc                     stx_gp3_defconfig
powerpc                     pq2fads_defconfig
mips                      fuloong2e_defconfig
arm                       aspeed_g5_defconfig
powerpc                   currituck_defconfig
parisc64                         alldefconfig
sh                ecovec24-romimage_defconfig
m68k                        mvme16x_defconfig
arm                           sama5_defconfig
arm                        clps711x_defconfig
arm                          simpad_defconfig
m68k                        mvme147_defconfig
arm                       imx_v6_v7_defconfig
arm                         s3c6400_defconfig
arm                             ezx_defconfig
arm                        multi_v7_defconfig
powerpc                       ppc64_defconfig
sh                      rts7751r2d1_defconfig
powerpc                        cell_defconfig
powerpc                      pasemi_defconfig
sh                   secureedge5410_defconfig
powerpc                     tqm8541_defconfig
powerpc                   motionpro_defconfig
arm                      footbridge_defconfig
powerpc                  storcenter_defconfig
mips                           xway_defconfig
openrisc                         alldefconfig
arm                          pxa3xx_defconfig
sh                              ul2_defconfig
xtensa                  cadence_csp_defconfig
sh                               alldefconfig
powerpc                      ep88xc_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
um                           x86_64_defconfig
powerpc                      ppc40x_defconfig
powerpc                      pcm030_defconfig
sh                          rsk7203_defconfig
alpha                            alldefconfig
sh                           se7619_defconfig
ia64                             alldefconfig
arc                              allyesconfig
sh                            migor_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220608
arm                  randconfig-c002-20220609
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
riscv                          rv32_defconfig
riscv                    nommu_virt_defconfig
riscv                    nommu_k210_defconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
um                             i386_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220608
s390                 randconfig-r044-20220608
riscv                randconfig-r042-20220608
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc              randconfig-c003-20220608
x86_64                        randconfig-c007
riscv                randconfig-c006-20220608
i386                          randconfig-c001
s390                 randconfig-c005-20220608
mips                 randconfig-c004-20220608
arm                  randconfig-c002-20220608
powerpc                        fsp2_defconfig
powerpc                          g5_defconfig
arm64                            allyesconfig
powerpc                   bluestone_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                           rs90_defconfig
mips                        maltaup_defconfig
powerpc                       ebony_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      katmai_defconfig
powerpc                 mpc832x_mds_defconfig
mips                        workpad_defconfig
powerpc                     kmeter1_defconfig
arm                         shannon_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                     akebono_defconfig
arm                         mv78xx0_defconfig
arm                         lpc32xx_defconfig
i386                             allyesconfig
mips                        omega2p_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
hexagon              randconfig-r045-20220609
s390                 randconfig-r044-20220609
riscv                randconfig-r042-20220609
hexagon              randconfig-r041-20220609
hexagon              randconfig-r045-20220608
hexagon              randconfig-r041-20220608

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
