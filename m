Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A928D574171
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 04:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A1324251D;
	Thu, 14 Jul 2022 02:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A1324251D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657765743;
	bh=+TZBVvElk8YYd1bTx6EfKvNya9NwlEsSzVizciEeNAU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OFla2wDeoid693VcvuafdWRkXHiS96RInyDWGWpR5Db59iWbKbhpGlJcaMsvujmDs
	 n3qRhHYkWKJ0hjThxo2Dwzg2ZmyYjTbZ7+vDcHNxHp5xmXijdFyTTgc6pqYcuPVoiZ
	 ZkX2TIRm4Pmzn/yRMO5rIoTtsV6FQXRtcAHj6e+76+nUYM8ss0fpkkiKsBiVaNSYMD
	 Ua7gkYOkjCuSdI6HKzPzA6aS9wVhTNyritWNrKWVn7SnWsngpYMbbzE14B7f6yc+YB
	 bN+zSM+vLRphQtaOjSs6gZX5MiYlhfpMr4X5TzlPbeZhHGCM3A19enB9J3o0VnXkPB
	 hXMt5nilG85JA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PP1YOR_7jSJj; Thu, 14 Jul 2022 02:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 123114251B;
	Thu, 14 Jul 2022 02:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 123114251B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4887D1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 02:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E9344251B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 02:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E9344251B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wlr_tuFjct8i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 02:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B640E4251A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B640E4251A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 02:28:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="282948397"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="282948397"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 19:28:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="922885373"
Received: from lkp-server01.sh.intel.com (HELO fd2c14d642b4) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2022 19:28:53 -0700
Received: from kbuild by fd2c14d642b4 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oBoaz-00003u-C1;
 Thu, 14 Jul 2022 02:28:53 +0000
Date: Thu, 14 Jul 2022 10:28:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62cf7f31.4CFpKfp/PGJmoXB0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657765735; x=1689301735;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=L01sq4D/uYlByO6OwqKIN6J+2+uioYDSFKuO/dak07U=;
 b=GvdMlT6meiBVsDBAGf0xWjWafM+REj/KL7c4ZugM2ldAD+LhGk+YV293
 Pyv9cZ9Y6F6p6pI1vYwkTaeOaxcWOUAFR30vXUN/94YnMXQYiJX3UwteW
 sLm0S+4ba9xzcatjE7dNSCSjRwYzt9xgGbBrFfVD2/M1MGUC4ROmdxg+V
 rFEW7JCYc7p9VO8gSjKprYCtIcD5B6dOotZw1mHiXc774GIH1+fC5iRpz
 I9Jd21SGeqBkBwmXBSVgdwa9iiWFT7UUZUAqp1zhns8qgsb9HRfI7DGW0
 DqV65Kwz4eJw8j0WIVJtUoHg0BLpNXrlcrzAjpKvBnCjWb+w8a3AcJBP+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GvdMlT6m
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 57465dfc385d298ab85eb335049055eddd3b283f
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
branch HEAD: 57465dfc385d298ab85eb335049055eddd3b283f  iavf: Fix handling of dummy receive descriptors

elapsed time: 17824m

configs tested: 226
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                             ezx_defconfig
mips                       bmips_be_defconfig
powerpc                  storcenter_defconfig
arm                         nhk8815_defconfig
powerpc                      makalu_defconfig
mips                  decstation_64_defconfig
powerpc                      ppc40x_defconfig
arm                            xcep_defconfig
powerpc                     asp8347_defconfig
ia64                            zx1_defconfig
arc                         haps_hs_defconfig
mips                             allmodconfig
arm                        trizeps4_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                           gcw0_defconfig
m68k                         apollo_defconfig
arm                      footbridge_defconfig
microblaze                      mmu_defconfig
sh                          rsk7264_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                          pxa3xx_defconfig
openrisc                 simple_smp_defconfig
sh                              ul2_defconfig
arm                       aspeed_g5_defconfig
arm                        spear6xx_defconfig
powerpc                      mgcoge_defconfig
sh                             shx3_defconfig
mips                           xway_defconfig
mips                        bcm47xx_defconfig
csky                                defconfig
powerpc                 linkstation_defconfig
x86_64                           alldefconfig
powerpc                 mpc8540_ads_defconfig
nios2                            allyesconfig
sh                           se7705_defconfig
powerpc                     tqm8548_defconfig
ia64                          tiger_defconfig
sh                        edosk7705_defconfig
powerpc                         ps3_defconfig
ia64                             alldefconfig
m68k                       m5249evb_defconfig
arc                        nsimosci_defconfig
powerpc                mpc7448_hpc2_defconfig
xtensa                           allyesconfig
arm                        realview_defconfig
sh                           se7343_defconfig
xtensa                    xip_kc705_defconfig
arm                           stm32_defconfig
sh                   sh7770_generic_defconfig
mips                         tb0226_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                          iop32x_defconfig
sh                 kfr2r09-romimage_defconfig
sh                               alldefconfig
powerpc                     tqm8555_defconfig
arm                        mvebu_v7_defconfig
sh                         ap325rxa_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7721_defconfig
sh                           se7750_defconfig
mips                         rt305x_defconfig
alpha                            alldefconfig
sparc64                             defconfig
arm                         assabet_defconfig
mips                        vocore2_defconfig
arm                          simpad_defconfig
s390                       zfcpdump_defconfig
powerpc                 mpc837x_mds_defconfig
um                                  defconfig
ia64                         bigsur_defconfig
ia64                      gensparse_defconfig
powerpc                       ppc64_defconfig
powerpc                         wii_defconfig
powerpc                    adder875_defconfig
arm                        keystone_defconfig
sh                        apsh4ad0a_defconfig
sh                          r7785rp_defconfig
parisc                generic-32bit_defconfig
mips                          rb532_defconfig
sh                        sh7763rdp_defconfig
microblaze                          defconfig
arc                          axs103_defconfig
arm                       imx_v6_v7_defconfig
sparc                       sparc32_defconfig
sh                   secureedge5410_defconfig
arm                           u8500_defconfig
arc                     nsimosci_hs_defconfig
parisc64                         alldefconfig
mips                         mpc30x_defconfig
arm                         lpc18xx_defconfig
m68k                            q40_defconfig
powerpc                      ppc6xx_defconfig
arm                      jornada720_defconfig
arm                        clps711x_defconfig
arm                        oxnas_v6_defconfig
sh                          rsk7201_defconfig
sh                                  defconfig
powerpc                      cm5200_defconfig
sh                        sh7757lcr_defconfig
powerpc                     ep8248e_defconfig
m68k                           sun3_defconfig
sh                          r7780mp_defconfig
xtensa                generic_kc705_defconfig
arc                      axs103_smp_defconfig
mips                     decstation_defconfig
arc                                 defconfig
um                             i386_defconfig
arc                     haps_hs_smp_defconfig
arm                         cm_x300_defconfig
sh                     magicpanelr2_defconfig
arc                            hsdk_defconfig
arm                            qcom_defconfig
m68k                             allyesconfig
sh                           se7619_defconfig
um                           x86_64_defconfig
arm                           corgi_defconfig
mips                    maltaup_xpa_defconfig
parisc                generic-64bit_defconfig
xtensa                         virt_defconfig
riscv                               defconfig
powerpc                 canyonlands_defconfig
m68k                          amiga_defconfig
m68k                        m5307c3_defconfig
sparc                               defconfig
sparc                            allyesconfig
x86_64                                  kexec
s390                                defconfig
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220707
ia64                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220707
arc                  randconfig-r043-20220707
s390                 randconfig-r044-20220707
s390                 randconfig-r044-20220710
riscv                randconfig-r042-20220710
arc                  randconfig-r043-20220710
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                   microwatt_defconfig
powerpc                     mpc512x_defconfig
powerpc                      obs600_defconfig
mips                      bmips_stb_defconfig
powerpc                   bluestone_defconfig
mips                      pic32mzda_defconfig
arm                         orion5x_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                     cu1830-neo_defconfig
arm                           spitz_defconfig
mips                      maltaaprp_defconfig
arm                      tct_hammer_defconfig
arm                       spear13xx_defconfig
arm                       aspeed_g4_defconfig
mips                      malta_kvm_defconfig
arm                        mvebu_v5_defconfig
i386                             allyesconfig
powerpc                     kmeter1_defconfig
powerpc                     ppa8548_defconfig
arm                          moxart_defconfig
arm                        multi_v5_defconfig
mips                         tb0287_defconfig
mips                         tb0219_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      walnut_defconfig
powerpc                          g5_defconfig
mips                       rbtx49xx_defconfig
arm                         palmz72_defconfig
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
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220707
hexagon              randconfig-r041-20220707

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
